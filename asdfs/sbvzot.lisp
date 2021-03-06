;; SBVZOT: a bounded satisfiability checker.
;; Mohammad Mehdi Pourhashem Kallehbasti
; ------------------------------------------
;; t, nil are not allowed as AP name. true= t and false= (!! t)

;; The main SBVZOT, that works with only one loop index (i_loop), zot-in_loop bit-vector is introduced.
(in-package :cl-user)
(defpackage :sbvzot
  (:use :common-lisp 
	:trio-utils
	:smt-interface
	:kripke)
  (:export :zot
	   :loopex
	   :yices
	   :cvc3
	   :mathsat
	   :z3
	   )) 
(in-package :sbvzot) 
(defvar *real-constants* nil)

(defmacro in (x set)
  (let* ((insym (gensym))
         (the-set (loop for i in (eval set) 
                     collect (list 'eq insym `(quote ,i)))))
    `(let ((,insym ,x))
       (or ,@the-set)))) 

(defun predicatep (f) 
  (and (consp f) 
       (not 
	     (in (car f) '(tempus not and or iff next until release since trigger zeta yesterday alw alwf alwp som somf somp < > = <= >=))))) ; alw alwf alwp som somf somp are added
		
(declaim (inline predicatep))

(defun CLTL-formulap (f)		
	  (and (consp f)		
	   (in (car f) '(next zeta yesterday futr past Zpast))))
			
	(declaim (inline CLTL-formulap))

(defun LTL-formulap (f) 
  (and (consp f)        
	(in (car f) '(not and or iff next until release since trigger zeta yesterday futr lasts withinf past Zpast lasted Zlasted withinp Zwithinp alw alwf alwp som somf somp))))

(declaim (inline LTL-formulap))

(defun arith-cop (f) 
  (and (consp f) 
       (in (car f) '(< > = <= >= ))))

(declaim (inline arith-cop))

(defun arith-opp (f) 
  (and (consp f) 
       (in (car f) '(+ - * / mod))))

(declaim (inline arith-opp))

(defun arith-itemp (f) 
  (if (consp f) 
      (gethash (car f) *arith-items*)
      (gethash f *arith-items*)))

(declaim (inline arith-itemp))

(defun bool-fmlap (f) 
  (and (consp f) (in (car f) '(not and or))))

(declaim (inline bool-itemp))

(defun temp-fmlap (f) 
  (and (consp f) 
       (eq (car f) 'tempus)))
 
(declaim (inline temp-fmlap))

(defun get-item-codom (sig)
  (car (last (get-item-sig sig))))

(defun get-item-sig (sig)
  (cadr sig))

(defun get-item-sort (sig)
  (car sig))

(defun int-or-real (f)
	(if (consp f)
		(if (member (first f) '(next yesterday zeta futr past Zpast))
			(int-or-real (second f))
			(if (member (first f) '(+ - * mod))
				(if (and (not (eq (int-or-real (second f)) '(real))) (not (eq (int-or-real (third f)) '(real)))) '(int) '(real))
				(when (eq (first f) '/) '(real))))
		(get-item-sig (arith-itemp f))))

(defun arity (i f)
  (eq (1- (length f)) i))

(defun to-smt-dialect (f smt bvSize)
  (declare (optimize (debug 0)(safety 0)(speed 3)))
      (cond     
	    ((null f) (bvFalse bvSize))
	    ((eq f t) (bvTrue bvSize))
	    ((or (symbolp f) (numberp f)) f)
	    ((or (arith-cop (car f)) (arith-opp (car f))) f)
	    (t
		  (case (car f)
			((impl)
			      (case smt
				    ((:smt)
					  `(implies ,(to-smt-dialect (second f) smt bvSize) ,(to-smt-dialect (third f) smt bvSize)))
				    ((:smt2)
					   `(=> ,(to-smt-dialect (second f) smt bvSize) ,(to-smt-dialect (third f) smt bvSize)))
				    (t
					  `(or ,(to-smt-dialect `(not ,(second f)) smt bvSize) ,(to-smt-dialect (third f) smt bvSize)))))

			((iff)
			      (case smt
				    ((:smt)
					  `(iff ,(to-smt-dialect (second f) smt bvSize) ,(to-smt-dialect (third f) smt bvSize)))
				    ((:smt2)
					  `(iff ,(to-smt-dialect (second f) smt bvSize) ,(to-smt-dialect (third f) smt bvSize))
					  )
				     (t
					  `(and 
						 (or ,(to-smt-dialect `(not ,(second f)) smt bvSize) ,(to-smt-dialect (third f) smt bvSize))
						 (or ,(to-smt-dialect (second f) smt bvSize) ,(to-smt-dialect `(not ,(third f)) smt bvSize))))))
			(t
			      (cons (car f) (mapcar #'(lambda(x)
							    (to-smt-dialect x smt bvSize)) (cdr f))))))))

(defvar *PROPS* nil) ; this will contain a Kripke

(defclass sbvzot-kripke (kripke) 
      ((the-arith :accessor kripke-arith :type list) ;all arithmetic formulae
	    (the-timed-arith :accessor kripke-timed-arith :type hash-table) ;just arithmetic formulae inside with-time
	    ; (the-atomic-formulaeHT :accessor kripke-atomic-formulaeHT :type hash-table)
	    (the-allsubf :accessor kripke-allsubf :type list)
	    (the-timed-arith-terms :accessor kripke-timed-arith-terms :type list) ;
	    (the-untimed-arith :accessor kripke-untimed-arith :type hash-table)
	    (the-untimed-arith-terms :accessor kripke-untimed-arith-terms :type list) ;
	    (the-arith-arith-futr :accessor kripke-arith-futr :type list)
	    (the-arith-arith-past :accessor kripke-arith-past :type list)
	    (the-arith-arith-ops :accessor kripke-timed-terms :type list)
	    (the-atomic-formulae :accessor kripke-atomic-formulae :type list)
	    (the-arith-constants :accessor kripke-constants :type list)
	    (the-max-X :accessor kripke-max-X :type number)
	    (the-max-Y :accessor kripke-max-Y :type number)
	    (the-additional-timed-arith-terms :accessor kripke-additional-timed-arith-terms :type list)
	    ))


(defun make-kripke (k fma)
      (let ((a-kripke (make-instance 'sbvzot-kripke)))
	    (setf 
		  (kripke-k a-kripke)      k
		  (kripke-numvar a-kripke) 0
					; formula -> integer
		  (kripke-list a-kripke)   (make-hash-table :test #'equal)
					; integer -> formula
		  (kripke-allsubf a-kripke)  nil
		  (kripke-back a-kripke)   (make-array (* k 10) :adjustable t)
		  ; (kripke-prop a-kripke)   nil
		  (kripke-atomic-formulae a-kripke)   nil
		  (kripke-bool a-kripke)   nil
		  (kripke-futr a-kripke)   nil
		  (kripke-maximum a-kripke) 0
		  (kripke-past a-kripke)   nil
		  (kripke-arith a-kripke)  nil
		  (kripke-timed-arith-terms a-kripke) nil
		  (kripke-timed-arith a-kripke)  (make-hash-table :test #'equal)
		  (kripke-untimed-arith a-kripke)  (make-hash-table :test #'equal)
		  ; (kripke-atomic-formulaeHT a-kripke)  (make-hash-table :test #'equal)
		  (kripke-untimed-arith-terms a-kripke) nil 
		  (kripke-arith-futr a-kripke)   nil
		  (kripke-arith-past a-kripke)   nil
		  (kripke-constants a-kripke)  nil
		  (kripke-max-X a-kripke) 0
		  (kripke-max-Y a-kripke) 0
		  (kripke-additional-timed-arith-terms a-kripke) nil
		  )   
      (setf (gethash '**I_LOOP** (kripke-list a-kripke))
 		    (intern (format nil "I_LOOP" )))

      (setf (gethash '**LOOPEX** (kripke-list a-kripke))
 		    (intern (format nil "LOOPEX" )))

      ; This puts subformulae into the hash table
	(labels (
					; *** processing LTL atomic formulae *** 
		      (manage-atomic-LTL-subfmla (fm) 

			    (when (eq (get-item-sort (arith-itemp fm)) 'uf)
			     	   (setf (gethash fm (kripke-untimed-arith a-kripke)) fm))

			    (when (and 
					(not (member fm '(true false)))
					(not (gethash fm (kripke-timed-arith a-kripke)))
					(not (gethash fm (kripke-list a-kripke)))
					;if fm is a timed item, so manage it!
					(or (not (arith-itemp fm)) (eq (get-item-sort (arith-itemp fm)) 'timed)))
				  
					;** processing terms **
					; if fm is a CONSTANT put fm in kripke-constants
				  (if (numberp fm)
					(remove-duplicates (push fm (kripke-constants a-kripke)))

					; 2-ary (interpreted) FUNCTION of LIA {+, -, *, /} 
					(if (arith-opp fm) 
					      (setf (gethash fm (kripke-timed-arith a-kripke)) 
						    (intern (format nil "ZOT-A~s" (incf (kripke-numvar a-kripke)))))

					; if fm is a n-ary FUNCTION over terms
					      (let* ((sig (arith-itemp fm))
							  (tp (get-item-codom sig))) 
						    (if (not (null sig))
							  (cond
								((string= tp "Int") (setf (gethash fm (kripke-timed-arith a-kripke)) fm)) 
								
								((string= tp "Real") (setf (gethash fm (kripke-timed-arith a-kripke)) fm))
								(t (error "1. I'm parsing a terms but I found a type inconsistency of non arithmetical ~S: ~s inside an atomic LTL formula! ~%" fm tp)))
					; if fm is a term Xt or Yt
							  (if (and (consp fm) (null sig) (CLTL-formulap fm))			       
								(setf (gethash fm (kripke-timed-arith a-kripke)) 
								      (intern (format nil "ZOT-A~s" (incf (kripke-numvar a-kripke)))))
					; otherwise fm is a predicate defined by (-P-)
								(error "2. I'm parsing a terms but I found a type inconsistency of non arithmetical ~S: BOOL instead of a term! ~%" fm))))))
				  
				  (if (consp fm)
					(dolist (i (cdr fm))
					      (manage-atomic-LTL-subfmla i)))))

					; *** processing LTL formulae ***
	       (manage-LTL-subfmla (fm)
		 (when (and (not (member fm '(true false)))
			    (not (gethash fm (kripke-list a-kripke)))			    
			    (not (numberp fm)))

					;** processing LTL atomic formulae **

					; fm is a (interpreted/uninterpreted) RELATION over terms
					; 2-ary (interpreted) RELATION of LIA {<, >, <=, >=, =, mod}
		       (if (arith-cop fm) 
			     (setf (gethash fm (kripke-list a-kripke)) 
				   (intern (format nil "ZOT-P~s" (incf (kripke-numvar a-kripke)))))

					; else fm is a n-ary (uninterpreted) RELATION
			     (let* ((sig (arith-itemp fm)) ;  get the signature of fm, if any
					 (tp (get-item-codom sig))) ; get the codomain of fm, if any
				   (if (not (null sig)) 
					 (cond 
					       ((string= tp "Bool") (setf (gethash fm (kripke-list a-kripke)) fm))
					       (t (error "I'm parsing a LTL formula: type inconsistency of non boolean ~S: ~s inside a LTL formula! ~%" fm tp)))

					; if fm is an AP, put fm in kripke-list
					 (if (symbolp fm)
					       (setf (gethash fm (kripke-list a-kripke)) 
						     (intern (format nil "~s" fm)))

					; else if fm is a LTL-formula
					       (if (LTL-formulap fm)	     
						     (setf (gethash fm (kripke-list a-kripke)) 
							   (intern (format nil "ZOT-P~s" (incf (kripke-numvar a-kripke)))))

					;otherwise rise an error!!						 
						     (error "I'm parsing a LTL formula: type inconsistency of non boolean ~S: ~s inside a LTL formula! ~%" fm tp))))))
		   
					; ** recursively process LTL formula ** 
		     (if (not (or (arith-opp fm) (arith-cop fm) (arith-itemp fm)))
			   (if (consp fm) ; if fm is a LTL formula, call again 'manage-LTL-subfmla'
				 (dolist (i (cdr fm)) ; on a complex LTL formula like (until A B)
				       (manage-LTL-subfmla i))		     			 
				 (manage-LTL-subfmla fm)) ; otherwise on an AP or a 0-ary RELATION
			   (if (consp fm) ; if fm is an atomic LTL formula, call 'manage-atomic-LTL-subfmla'
				 (dolist (i (cdr fm))
				       (manage-atomic-LTL-subfmla i)) ; a n-ary RELATION of terms
;				 (manage-atomic-LTL-subfmla fm) ; a 0-ary RELATION
				 )))) 

	       (manage-subfmla (fm)
		 (when (and (not (member fm '(true false)))
			    ;(not (gethash fm (kripke-list a-kripke)))			    
			    (not (numberp fm)))
		   
		   ;(format t "~s~%" fm)
		   (if (temp-fmlap fm)		       
		       (manage-LTL-subfmla (cadr fm))
						
		       (if (consp fm)
			   (dolist (i (cdr fm))
			     (manage-subfmla i))
			   (manage-LTL-subfmla fm))))))
		    
		    (manage-subfmla fma))
					;(incf (kripke-numvar a-kripke))
	    
					; *** fill temporal data structures - LTL layer ***
	    (maphash  
		  (lambda (fm val)
			(declare (ignore val)) ; just to avoid warnings...
			
			(if (or 
				  (symbolp fm) ; if fm is an AP
				  (arith-itemp fm)) ; if fm is an uninterpreted RELATION
			      (unless (member fm '(true false **I_LOOP** **LOOPEX**))
				    (push fm (kripke-atomic-formulae a-kripke)))
			      (case (car fm)
				    ((and or not iff) 
					  (push fm (kripke-bool a-kripke)))
				    ((next until release futr lasts withinf alw alwf som somf) 
					  (push fm (kripke-futr a-kripke)))
				    ((yesterday zeta since trigger past Zpast lasted Zlasted withinp Zwithinp alw alwp som somp)
					  (push fm (kripke-past a-kripke)))
				    (t
					  (error "subformulae: unknown op ~S~%" fm))))) 
		  (kripke-list a-kripke))

					; *** fill arithmetical data structures - FO layer ***
	    (maphash  
		  (lambda (fm val)
			(declare (ignore val)) ; just to avoid warnings...
	 
			(if (or (symbolp fm) ; if fm is a 0-ary function
				  (arith-itemp fm)) ; if fm is a n-ary function
			      
			      (push fm (kripke-timed-arith-terms a-kripke))				
					;(push (car fm) (kripke-timed-arith-terms a-kripke)))

					; otherwise fm is a term Xy/Xy or ({+,-,*,/,mod} A B)
			      (case (car fm)
				    ((next futr lasts withinf) 
					  (push fm (kripke-arith-futr a-kripke)))
				    ((yesterday past Zpast lasted Zlasted withinp Zwithinp)
					  (push fm (kripke-arith-past a-kripke)))
				    ((+ - * / mod)
					  (push fm (kripke-timed-arith-terms a-kripke)))
				    (t
					  (error "arithmetic subformulae: unknown op ~S~%" fm))))) 
		  (kripke-timed-arith a-kripke))


	(maphash  
		  (lambda (fm val)
			(declare (ignore val)) ; just to avoid warnings...
	 
			(if (or (symbolp fm) ; if fm is a 0-ary function
				  (arith-itemp fm)) ; if fm is a n-ary function
			 
			      (push fm (kripke-untimed-arith-terms a-kripke))

					; otherwise fm is a term Xy/Xy or ({+,-,*,/,mod} A B)
			      (case (car fm)
				    ;; ((next futr lasts withinf) 
				    ;; 	  (push fm (kripke-arith-futr a-kripke)))
				    ;; ((yesterday past Zpast lasted Zlasted withinp Zwithinp)
				    ;; 	  (push fm (kripke-arith-past a-kripke)))
				    
				    (t
					  (error "arithmetic subformulae: unknown op ~S~%" fm))))) 
	      (kripke-untimed-arith a-kripke))
	    a-kripke))

(defmethod call ((kk sbvzot-kripke) obj the-time &rest other)
      (cond 
	    ((eq 'false obj) 'false)
	    ((eq 'true obj) 'true)
	    ((numberp obj) obj)
	    ((and (consp obj) 
		   (or (arith-cop (car obj)) (arith-opp (car obj)))) 
		  (list (gethash obj (kripke-timed-arith kk)))) 
	    (t 
		  (let ((p (gethash obj (kripke-list kk))) 
			     (q (gethash obj (kripke-timed-arith kk))))      
			(cond 
					; the object has not been recognized...rise error!
			      ((and (null p) (null q)) 
				    (if (eq (get-item-sort (arith-itemp obj)) 'timed) 
					;if the item is a timed arithmetic term, so rise up an error!
					  (error "During Call process, item ~s not found in formula~%~%HINT: maybe you are using some predicates in the 'transitions:' which is not used in the 'formula' section. To fix this problem let initialize these predicates with a fake value (maybe in the instant 0...)~%" obj))
					;otherwise it is a non-timed term, so give it back!
				    obj)
					; if the object is a term
			      ((null p) 	   
				    (if (consp q)
					  (if other					
						(cons (car q) (append (mapcar #'(lambda (x)
					; if other is specified then call is evaluating a nested term. Therefore, inner terms should be marked with the time instant defined by other
										      (call *PROPS* x (car other)))
									    (cdr q))
								    (list the-time)))
						(cons (car q) (append (mapcar #'(lambda (x)
										      (call *PROPS* x the-time))
									    (cdr q))
								    (list the-time))))

					;(format t "TERM non-cons ~s~%" obj)
					  ; (list 'select q the-time)))
					  (list q the-time)))
					;if the object is an atomic formula
			      ((null q)
				    (if (consp p)	
					  (progn 
					;(format t "cons ~s~%" p)
						(cons (car p) (append (mapcar #'(lambda (x)
										      (call *PROPS* x))
									    (cdr p))
								    (list the-time))))
					  (progn 
					;(format t "non-cons ~s~%" p)
						(list p)))))))))

(defgeneric call-fmla-id (kk obj))

(defmethod call-fmla-id ((kk sbvzot-kripke) obj) 
  (cond 
    ((eq 'false obj) 'false)
    ((eq 'true obj) 'true)
    (t (gethash obj (kripke-list kk)))))

(defun the-loopEx ()
  (call-fmla-id *PROPS* '**LOOPEX**))

;; ---------
;; Semantics
;; ---------
(defun gen-arith-futr ()
      (format t "define FO future formulae Xt~%")(force-output)
      (loop for i from 0 to (kripke-k *PROPS*) append
	    (loop for fma in (kripke-arith-futr *PROPS*) collect
		  (list '=
			(call *PROPS* fma i)
			(case (car fma)

			  ((futr)
			   (call *PROPS* (second fma) (+ i (third fma)) i))
			  ((lasts)
			   `(and ,@(loop for j from 1 to (third fma) collect (call *PROPS* (second fma) (+ i j)))))
			  ((withinf)
			   `(or ,@(loop for j from 1 to (third fma) collect (call *PROPS* (second fma) (+ i j)))))

			      ((next)
				    (call *PROPS* (second fma) (1+ i) i)))))))

(defun gen-arith-past ()
  (format t "define FO future formulae Yt~%")(force-output)
  (loop for i from 1 to (kripke-k *PROPS*) append    
	(loop for fma in (kripke-arith-past *PROPS*) collect
	      (list '=  
		    (call *PROPS* fma i)  
		    (case (car fma)

		      ((past Zpast)		
		       (call *PROPS* (second fma) (- i (third fma))))		

		      ((lasted Zlasted)		
		       (if (< i (third fma))		
			   `(and ,@(loop for j from 0 to i collect (call *PROPS* (second fma)  j)))		
			   `(and ,@(loop for j from 0 to (third fma) collect (call *PROPS* (second fma)  (- i j))))))
	
		      ((withinp Zwithinp)		
		       (if (< i (third fma))		
			   `(or ,@(loop for j from 0 to i collect (call *PROPS* (second fma)  j)))		
			   `(or ,@(loop for j from 0 to (third fma) collect (call *PROPS* (second fma)  (- i j))))))

		      ((zeta yesterday)
		       (call *PROPS* (second fma) (1- i))))))))

(defun gen-arith-constraints ()
  (format t "define FO terms for +,-,*,/,mod ~%")(force-output)
  (loop for i from 0 to (kripke-k *PROPS*) append    
	(loop for fma in (kripke-timed-arith-terms *PROPS*) 
	      when (arith-opp fma)
	      collect
	      (list '=  
		    (call *PROPS* fma i)  
		    (case (car fma)
		      ((+)
		       `(+ ,(call *PROPS* (second fma) i) ,(call *PROPS* (third fma) i)))
		      
		      ((-)
		       `(- ,(call *PROPS* (second fma) i) ,(call *PROPS* (third fma) i)))
		      
		      ((*)
		       `(* ,(call *PROPS* (second fma) i) ,(call *PROPS* (third fma) i)))
		      
		      ((/)
		       `(/ ,(call *PROPS* (second fma) i) ,(call *PROPS* (third fma) i)))
		      
		      ((mod)
		       `(mod ,(call *PROPS* (second fma) i) ,(call *PROPS* (third fma) i))))))))

(defun gen-regions (bound)
  (if (> bound 0)
	(append
	      (loop for key being the hash-keys of *arith-items*
		    using (hash-value value)
		    append
		    (nconc 
			  ;;Build the periodicity of regions between (i_loop - 1) and K
			  (loop for i from 0 to (1- bound) append
				`(
				       (iff (= ,(call *PROPS* key `(- i-loop 1)) ,i) (= ,(call *PROPS* key (kripke-k *PROPS*)) ,i))
				       (iff (and
						  (< ,i ,(call *PROPS* key `(- i-loop 1))) 
						  (< ,(call *PROPS* key `(- i-loop 1)) ,(+ i 1)))
					     (and
						   (< ,i ,(call *PROPS* key (kripke-k *PROPS*))) 
						   (< ,(call *PROPS* key (kripke-k *PROPS*)) ,(+ i 1))))))
			  
			  (list `(iff (= ,(call *PROPS* key `(- i-loop 1)) ,bound) (= ,(call *PROPS* key (kripke-k *PROPS*)) ,bound)))
			  (list `(iff (> ,(call *PROPS* key `(- i-loop 1)) ,bound) (> ,(call *PROPS* key (kripke-k *PROPS*)) ,bound)))
			  ; Build the periodicity of regions between (i_loop) and K+1
			  (loop for i from 0 to (1- bound) append
			   	`(
		  	       (iff (= ,(call *PROPS* key `i-loop) ,i) (= ,(call *PROPS* key (1+ (kripke-k *PROPS*))) ,i))
		   	       (iff (and
		   			  (< ,i ,(call *PROPS* key `i-loop)) 
		   			  (< ,(call *PROPS* key `i-loop) ,(+ i 1)))
		   		     (and
		   			   (< ,i ,(call *PROPS* key (1+ (kripke-k *PROPS*)))) 
		   			   (< ,(call *PROPS* key (1+ (kripke-k *PROPS*))) ,(+ i 1))))))

			  (list `(iff (= ,(call *PROPS* key `i-loop) ,bound) (= ,(call *PROPS* key (1+ (kripke-k *PROPS*))) ,bound)))
			  (list `(iff (> ,(call *PROPS* key `i-loop) ,bound) (> ,(call *PROPS* key (1+ (kripke-k *PROPS*))) ,bound)))

			  ; define clocks behavior
			  (loop for i from 1 to (kripke-k *PROPS*) collect
				`(or
				       (= ,(call *PROPS* key (1+ i)) 0)
				       ; (= ,(call *PROPS* key (1+ i)) (+ ,(call *PROPS* key i) (select delta ,i)))))))
				       (= ,(call *PROPS* key (1+ i)) (+ ,(call *PROPS* key i) (delta ,i)))))))

	      
	      ; zot-delta is always positive
	      (loop for i from 1 to (1+ (kripke-k *PROPS*)) collect
		    ; `(> (select delta ,i) 0)))
		    `(> (delta ,i) 0)))

	'(true)))

(defun gen-bool ()
      (format t "define LTL boolean connectives~%")(force-output)
	    (loop for fma in (kripke-bool *PROPS*) collect
		  (list '=
			(first (call *PROPS* fma 0))
			(case (car fma)
			      ((not)
				    (list 'bvnot (first (call *PROPS* (second fma) 0))))
			      ((and)
				    (cons 'bvand (mapcar #'(lambda (x)
								    (first (call *PROPS* x 0)))
							  (cdr fma))))
			      ((or)
				    (cons 'bvor (mapcar #'(lambda (x)
								    (first (call *PROPS* x 0)))
							  (cdr fma))))
			      ((iff) (list 'bviff (first (call *PROPS* (second fma) 0)) (first (call *PROPS* (third fma) 0))))))))

(defun gen-futr ()
  (format t "define LTL future formulae X, U, R~%")(force-output)
  (loop for fma in (kripke-futr *PROPS*) collect
	(case (car fma)
	  ((next)
	 	(list 'next (first (call *PROPS* fma 0)) (first (call *PROPS* (second fma) 0))))

	  ((alwf)
	 	(list 'alwf (first (call *PROPS* fma 0)) (first (call *PROPS* (second fma) 0))))

	  ((somf)
	 	(list 'somf (first (call *PROPS* fma 0)) (first (call *PROPS* (second fma) 0))))

	  ((alw)
	 	(list 'alw (first (call *PROPS* fma 0)) (first (call *PROPS* (second fma) 0))))

	  ((som)
	 	(list 'som (first (call *PROPS* fma 0)) (first (call *PROPS* (second fma) 0))))

      ((until)
		(list 'until (first (call *PROPS* fma 0)) (first (call *PROPS* (second fma) 0)) (first (call *PROPS* (third fma) 0))))

	  ((release)
		(list 'release (first (call *PROPS* fma 0)) (first (call *PROPS* (second fma) 0)) (first (call *PROPS* (third fma) 0)))))))

(defun gen-past2 ()
  (format t "gen-past2...~%")(force-output)
	(loop for fma in (kripke-past *PROPS*) collect
		(case (car fma)
		((yesterday)
		 	(list 'yesterday (first (call *PROPS* fma 0)) (first (call *PROPS* (second fma) 0))))

		((zeta)
		 	(list 'zeta (first (call *PROPS* fma 0)) (first (call *PROPS* (second fma) 0))))

		((alwp)
		 	(list 'alwp (first (call *PROPS* fma 0)) (first (call *PROPS* (second fma) 0))))

	 	((somp)
		 	(list 'somp (first (call *PROPS* fma 0)) (first (call *PROPS* (second fma) 0))))

	    ((since)
			(list 'since (first (call *PROPS* fma 0)) (first (call *PROPS* (second fma) 0)) (first (call *PROPS* (third fma) 0))))
		
	    ((trigger)
			(list 'trigger (first (call *PROPS* fma 0)) (first (call *PROPS* (second fma) 0)) (first (call *PROPS* (third fma) 0)))))))

(defun manage-transitions (trans the-k)
  (labels ((call-recur (f i)
		       (cond
			((or (stringp f) (integerp f) (typep f 'boolean)) f)
			((or (symbolp f) (arith-itemp f)) (call *PROPS* f i))	       
			((eq 'next (car f)) (call-recur (second f) (1+ i)))
			(t
			 (cons (car f) (mapcar (lambda (x)
						 (call-recur x i)) (cdr f)))))))
    (loop for i from 0 to (1- the-k)
	  append
	  (mapcar (lambda (x)
		    (call-recur x i)) trans))))

(defun prn-str (l) (format nil "~{~a~^ ~}" l))

(defun repeat-string (n string)
  (with-output-to-string (stream)
    (loop repeat n do (write-string string stream))))

(defun bvTrue (size)
	(if (= (mod size 4) 0) 
		(concatenate 'string "#xF" (repeat-string (- (/ size 4) 1) "F"))
		(concatenate 'string "#b1" (repeat-string (- size 1) "1"))))

(defun bvFalse (size)
	(concatenate 'string "(_ bv0 " (write-to-string size) ")"))

(defun substitutions (f size)
	; (substitute (bvTrue size) T
	; (substitute (bvTrue size) 'true
	; (substitute 'bvnot 'NOT
	; (substitute 'bvor 'OR 
	; (substitute 'bvand 'AND 
	; (substitute 'bviff 'IFF
	(substitute (intern (format nil "~A" 'zot-false)) nil f
	))
; ))))))

(defun bvf (f size)
	(cond 
		((atom f) f)
		(t (cons (bvf (car (substitutions f size)) size) (bvf (cdr (substitutions f size)) size)))))

; (defun collapse-atomic-formulae (f)
; 	(cond 
; 		((atom f) f)
; 		((gethash f (kripke-atomic-formulaeHT *PROPS*)) (gethash f (kripke-list *PROPS*)))
; 		(t (cons (collapse-atomic-formulae (car f)) (collapse-atomic-formulae (cdr f))))))

(defun list-eq (list1 list2)
 (if (and (not (null list1)) (not (null list2)))
	 (let ((a (car list1)) (b (car list2)))
		 (cond
		 	((and (listp a) (listp b))
			(and (list-eq a b)
			(list-eq (cdr list1) (cdr list2))))
			 (t
			 (and (eq a b)
			 (list-eq (cdr list1) (cdr list2))))))
	 (= (length list1) (length list2))))

(defun get-rel (c1 c2)
	(case c1
		('> (case c2 ('= 'nand) ('< 'nand) ('>= 'impliesR) ('<= 'neg)))
		('= (case c2 ('> 'nand) ('< 'nand) ('>= 'impliesR) ('<= 'impliesR)))
		('< (case c2 ('> 'nand) ('= 'nand) ('>= 'neg) ('<= 'impliesR)))
		('>= (case c2 ('> 'impliesL) ('= 'impliesL) ('< 'neg)))
		('<= (case c2 ('> 'neg) ('= 'impliesL) ('< 'impliesL)))))

(defun to-bv (f)
	(cond 
		((atom f) 
			(cond
				((eq f t) (bvTrue bvSize))
				((eq f 'and) 'bvand)
				((eq f 'or) 'bvor)
				((eq f 'impl) 'bvimpl)
				((eq f 'not) 'bvnot)
				(t f)))
		(t (cons (to-bv (car f)) (to-bv (cdr f))))))

					; --- MAIN ---
(defun zot (the-time spec 
		     &key
		     (loop-free nil)
		     (getLFmodel nil)
		     (transitions nil)
		     (negate-transitions nil)
		     (declarations nil)
		     (smt-solver :z3)
		     (gensmt nil)
		     (logic :QF_UFIDL)
		     (smt-assumptions nil)
		     (smt-declarations nil)
		     (with-time t)
		     (periodic-terms nil)	
		     (smt-lib :smt2)
		     (over-clocks 0)
		     (smt-metric-futr nil)
		     (smt-metric-past nil)
		     )
  ; <1>(when loop-free (setf the-time (1- the-time))) ;; We don't need the proxy state for completeness check.</1>
  ;;Wrong ^^^;; We need to relax the last state of until and have a dummy state at the position k+1.
  (setf *smt-metric-futr-operators* smt-metric-futr)
  (setf *smt-metric-past-operators* smt-metric-past)
  (setf *format-smt* t)
  (setf *bitvector* t)
  (setf *loops* nil)
  (setf real-var nil)
  (if (or (eq logic :QF_UFRDL)(eq logic :QF_UFLRA))
      (setf *real-constants* t))
  (setf *metric-operators* nil)
  
  (let ((formula (bvf (trio-to-ltl spec) (+ the-time 2))))
  ; (let ((formula (trio-to-ltl spec)))
    (setf *PROPS* (make-kripke the-time 
			       (if (eq with-time t)
				   (with-time formula)
				 formula)))

    (format t "This is SBVZOT.~%")
    (setf generated-futr (gen-futr))
    (setf generated-past2 (gen-past2))
    (setf generated-bool (gen-bool))
    (declare-assumptions smt-declarations)

    (let ((undeclared (set-difference (kripke-atomic-formulae *PROPS*) declarations)))
      (if (and declarations undeclared)
	  (format t "Error: undeclared propositions ~S~%" undeclared)
					; Declarations are fine, so go on...
	(progn 
	  (format t "~%1. processing formula")
	  (time (progn
		  ; (format t "~%Used boolean propositions: ~%~S~%" (kripke-atomic-formulae *PROPS*))
		  (format t "~%Time bound: ~S~%" the-time)
		  (let ((trans (if transitions 
				   (manage-transitions transitions the-time) 
				 '(true)))))
		  
		  (format t "~%done processing formula~%")
		  (loop for index from (if gensmt 1 the-time) to the-time do
		  	(with-open-file (k (if gensmt (format nil "./output.smt.~A.txt" index) "./output.smt.txt") :direction :output :if-exists :supersede)
			; (with-open-file (dict "./output.dict.txt" :direction :output :if-exists :supersede)
				  (let (  (*print-case* :downcase)
					     (*print-pretty* nil)
					  (time-domain (if (or (eq logic :QF_UFRDL) (eq logic :QF_UFLRA))
							   *real*
							 *int*)))
				  (setq bvSize (+ index 2))

		(format k "(set-logic QF_UFBV)")
		(when (not loop-free) 
			(format k "~%(declare-fun i_loop () (_ BitVec ~A))" bvSize)
			(format k "~%(declare-fun zot-in_loop () (_ BitVec ~A))" bvSize)
			(format k "~%(assert (= zot-in_loop (bvshl (bvnot (_ bv0 ~A)) i_loop)))" bvSize)
			(format k "~%(assert (and (bvuge i_loop (_ bv1 ~A)) (bvule i_loop (_ bv~A ~A))))~%" bvSize index bvSize)
			(format k "~%(define-fun getbit ((x (_ BitVec ~A)) (index (_ BitVec ~A))) (_ BitVec 1)~%~4T((_ extract 0 0) (bvlshr x index)))~%~4T" bvSize bvSize)
			(format k "~%(define-fun loopConF ((x (_ BitVec ~A))) Bool~%" bvSize)
			(format k "~4T(= (getbit x i_loop) ((_ extract ~A ~A) x))) ;; k+1 ~~ i_loop~%" (+ index 1) (+ index 1)))
		(format k "
(define-fun next ((fap (_ BitVec ~A)) (A (_ BitVec ~A))) Bool
    (= ((_ extract ~A 0) fap) ((_ extract ~A 1) A)))
		" bvSize bvSize index (1+ index))
		(format k "
(define-fun yesterday ((fap (_ BitVec ~A)) (A (_ BitVec ~A))) Bool
    (= fap (bvshl A (_ bv1 ~A))))
		" bvSize bvSize bvSize)
		(format k "
(define-fun zeta ((fap (_ BitVec ~A)) (A (_ BitVec ~A))) Bool
    (= fap (bvor (bvshl A (_ bv1 ~A)) (_ bv1 ~A))))~%" bvSize bvSize bvSize bvSize)
(if loop-free 
	(progn
		(format k "
(define-fun until ((fap (_ BitVec ~A)) (A (_ BitVec ~A)) (B (_ BitVec ~A))) Bool
	(and" bvSize bvSize bvSize)
		(format k "
		(= ((_ extract ~A 0) fap) (bvor ((_ extract ~A 0) B) (bvand ((_ extract ~A 0) A) ((_ extract ~A 1) fap))))))
" index index index (1+ index)))
	(progn
		(format k "
(define-fun until ((fap (_ BitVec ~A)) (A (_ BitVec ~A)) (B (_ BitVec ~A))) Bool
	(and" bvSize bvSize bvSize)
		(format k "
		(= ((_ extract ~A 0) fap) (bvor ((_ extract ~A 0) B) (bvand ((_ extract ~A 0) A) ((_ extract ~A 1) fap))))" index index index (1+ index))
		(format k "
		(= #b1 (bvor ((_ extract ~A ~A) A) ((_ extract ~A ~A) B) (bvnot ((_ extract ~A ~A) fap))))
		(= #b1 (bvor (bvnot ((_ extract ~A ~A) B)) ((_ extract ~A ~A) fap)))
		(or (= #b0 ((_ extract ~A ~A) fap))
			(= #b1 (bvredor (bvand ((_ extract ~A 1) B) ((_ extract ~A 1) zot-in_loop)))))))
		" (1+ index) (1+ index) (1+ index) (1+ index) (1+ index) (1+ index)  (1+ index) (1+ index) (1+ index) (1+ index) (1+ index) (1+ index) index index)))
(format k "
(define-fun release ((fap (_ BitVec ~A)) (A (_ BitVec ~A)) (B (_ BitVec ~A))) Bool
	(until (bvnot fap) (bvnot A) (bvnot B)))~%" bvSize bvSize bvSize)
		(format k "
(define-fun since ((fap (_ BitVec ~A)) (A (_ BitVec ~A)) (B (_ BitVec ~A))) Bool" bvSize bvSize bvSize)
		(format k "
	(and
		(= ((_ extract 0 0) fap) ((_ extract 0 0) B) )")
		(format k "
		(= ((_ extract ~A 1) fap) (bvor ((_ extract ~A 1) B) (bvand ((_ extract ~A 1) A) ((_ extract ~A 0) fap))))" (1+ index) (1+ index) (1+ index) index)
		(format k "))~%")
(format k "
(define-fun trigger ((fap (_ BitVec ~A)) (A (_ BitVec ~A)) (B (_ BitVec ~A))) Bool
	(since (bvnot fap) (bvnot A) (bvnot B)))~%" bvSize bvSize bvSize)


		(format k "
(define-fun alw ((fap (_ BitVec ~A)) (A (_ BitVec ~A))) Bool
	(= fap ((_ repeat ~A) (bvredand A))))~%" bvSize bvSize bvSize)
		(format k "
(define-fun som ((fap (_ BitVec ~A)) (A (_ BitVec ~A))) Bool
	(= fap ((_ repeat ~A) (bvredor A))))~%" bvSize bvSize bvSize)
(format k "
(define-fun alwf ((fap (_ BitVec ~A)) (A (_ BitVec ~A))) Bool
	(until (bvnot fap) ~A (bvnot A)))~%" bvSize bvSize (bvTrue bvSize))
(format k "
(define-fun alwp ((fap (_ BitVec ~A)) (A (_ BitVec ~A))) Bool
    (since (bvnot fap) ~A (bvnot A)))~%" bvSize bvSize (bvTrue bvSize))
(format k "
(define-fun somp ((fap (_ BitVec ~A)) (A (_ BitVec ~A))) Bool
    (since fap ~A A))~%" bvSize bvSize (bvTrue bvSize))
(format k "
(define-fun somf ((fap (_ BitVec ~A)) (A (_ BitVec ~A))) Bool
	(until fap ~A A))~%" bvSize bvSize (bvTrue bvSize))
		(format k "
(define-fun bviff ((A (_ BitVec ~A)) (B (_ BitVec ~A))) (_ BitVec ~A)~%~4T(bvxnor A B))~%" bvSize bvSize bvSize)
		(format k "
(define-fun bvimpl ((A (_ BitVec ~A)) (B (_ BitVec ~A))) (_ BitVec ~A)~%~4T(bvor (bvnot A) B))~%" bvSize bvSize bvSize)

		(format k ";;;;;;Used propositions:~%")
					;write all the propositional items
				    (maphash (lambda (key v)
						   ; (format dict "~s -> ~s~%" v key)
					       (if (consp key) 
						   (case (car key)
							(t
						      (if (not (arith-itemp key))
							  	(format k "(declare-fun ~A () (_ BitVec ~A))~%" (string-downcase v) bvSize)
							  ))) ;legacy for (-P- a)
						 (if (member key (kripke-atomic-formulae *PROPS*))
						     (progn (format k "(declare-fun ~A () (_ BitVec ~A))~%" (string-downcase v) bvSize)
						     	(when (string= (string-downcase v) "t") (format k "(assert (= ~A ~A))~%" (string-downcase v) (bvTrue bvSize)))
						     	(when (string= (string-downcase v) "zot-false") (format k "(assert (= ~A ~A))~%" (string-downcase v) (bvFalse bvSize))))
						     	))
					       )
					     (kripke-list *PROPS*))

				    ;write all zot-eve for until, release, alwf, and somf
				  ;   (loop for fma in (kripke-futr *PROPS*) do
						; (when (and (list fma) (or (eq (first fma) 'until) (eq (first fma) 'release) (eq (first fma) 'alwf) (eq (first fma) 'somf))) (format k "(declare-fun zot-eve-~A () (_ BitVec ~A))~%" (string-downcase (first (call *PROPS* fma 0))) bvSize))
						; )

					;write all the arithmetic items
				    (maphash (lambda (key v) 
					       (declare (ignore v))
					       (let* ((it (arith-itemp key))
							(sig (get-item-sig it))
							(time-d 
							 (if (eq (get-item-sort it) 'timed)
							     time-domain
							   "")) )
					       (format k "(declare-fun ~A (Int) ~{~A ~})~%" key sig)

						 ))
					     *arith-items*)
				    (maphash (lambda (key v) 
					       (declare (ignore v))
					       (let* ((it (arith-itemp key))
							(sig (get-item-sig it))
							(time-d 
							 (if (eq (get-item-sort it) 'timed)
							     time-domain
							   "")) )
					       (when (or (string= (format nil "~A" (first (int-or-real key))) "Real") (string= (format nil "~A" (first (int-or-real key))) "real")) (setf real-var t))

						 ))
					     *arith-items*)
				    
					;write all the temporal arithmetic subformulae
				    (maphash (lambda (key v) 
					       (if (consp key)
							(let* (  (it (arith-itemp key))
							(sig (get-item-sig it)) 
							(time-d 
							 (if (eq (get-item-sort it) 'timed)
							     time-domain
							   "")) )
						   (case (car key)
						     ((next yesterday zeta futr past Zpast)
						     (progn (format k "(declare-fun ~A (Int) " v) (if (or (string= (format nil "~A" (first (int-or-real key))) "Real") (string= (format nil "~A" (first (int-or-real key))) "real")) (format k "Real)~%") (format k "Int)~%"))))
						     ((+ - * / mod)
						     (progn (format k "(declare-fun ~A (Int) " v) (if (or (string= (format nil "~A" (first (int-or-real key))) "Real") (string= (format nil "~A" (first (int-or-real key))) "real")) (format k "Real)~%") (format k "Int)~%"))))
						     ))))
					     
					     (kripke-timed-arith *PROPS*))

				    (if (> over-clocks 0)
					  (format k "(declare-fun delta (Int) Real)~%"))

				    (if (not (null smt-assumptions))
					(format k (concatenate 'string ":assumption " smt-assumptions "~%"))))
				
			    	(format k "(assert ")
				    (let ((*print-pretty* nil))
					  (write (append '(and) generated-futr '(true)) :stream k :escape nil :case :downcase))
				    (format k ")~%")
			    	(format k "(assert ")
				    (let ((*print-pretty* nil))
					  (write (append '(and) generated-past2 '(true)) :stream k :escape nil :case :downcase))
				    (format k ")~%")
			    	(format k "(assert ")
				    (let ((*print-pretty* nil))
					  (write (append '(and) generated-bool '(true)) :stream k :escape nil :case :downcase))
				    (format k ")~%")
			
			; (loop for f in (kripke-atomic-formulae *PROPS*) do
			; 	(setf (gethash f (kripke-atomic-formulaeHT *PROPS*)) (gethash f (kripke-list *PROPS*))))

					(loop for fma in (kripke-futr *PROPS*) do
						(push (first (call *PROPS* fma 0)) (kripke-allsubf *PROPS*)))
					(loop for fma in (kripke-past *PROPS*) do
						(push (first (call *PROPS* fma 0)) (kripke-allsubf *PROPS*)))
					(loop for fma in (kripke-atomic-formulae *PROPS*) do
						(push (first (call *PROPS* fma 0)) (kripke-allsubf *PROPS*)))
					(setf n (length (kripke-allsubf *PROPS*)))

			(if loop-free 
				(progn
					(loop for fma in (kripke-futr *PROPS*) do
						(push (first (call *PROPS* fma 0)) (kripke-allsubf *PROPS*)))
					(loop for fma in (kripke-past *PROPS*) do
						(push (first (call *PROPS* fma 0)) (kripke-allsubf *PROPS*)))
					(loop for fma in (kripke-atomic-formulae *PROPS*) do
						(push (first (call *PROPS* fma 0)) (kripke-allsubf *PROPS*)))
					(setf n (length (kripke-allsubf *PROPS*)))
					(format k "(define-fun bvdistinct ((A (_ BitVec ~A)) (B (_ BitVec ~A))) Bool
	(= #b0 (bvredand (bvxnor A B))))~%" n n n)
					(loop for i from 0 to (1+ index) do
						(format k "~%(declare-fun zot-s~A () (_ BitVec ~A))" i n)
						(format k "~%(assert (= zot-s~A (concat" i)
						(loop for fma in (kripke-allsubf *PROPS*) do
							(format k " ((_ extract ~A ~A) ~A)" i i (string-downcase fma)))
						(format k ")))"))
					(format k "~%(assert (and ")
					(loop for i from 0 to index do
						(loop for j from (1+ i) to (1+ index) do
							(format k " (bvdistinct zot-s~A zot-s~A)" i j)))
					(format k "))"))
				(progn
					(format k "(assert (and")
					; (loop for fma in (kripke-allsubf *PROPS*) do
					;   	(format k "~%~4T(loopConF ~A)" (string-downcase fma)))
					(loop for fma in (kripke-futr *PROPS*) do
						(format k "~%~4T(loopConF ~A)" (string-downcase (first (call *PROPS* fma 0)))))
					(loop for fma in (kripke-past *PROPS*) do
						(format k "~%~4T(loopConF ~A)" (string-downcase (first (call *PROPS* fma 0)))))
					(loop for fma in (kripke-atomic-formulae *PROPS*) do
						(format k "~%~4T(loopConF ~A)" (string-downcase (first (call *PROPS* fma 0)))))
						(format k "))~%")))
			(when (> (length *zot-item-constraints*) 0) (format k ";;;;;; Item Constraints:~%~A" (string-downcase (format nil "(assert (= (bvnot (_ bv0 ~A)) ~a))~%" bvSize (to-bv *zot-item-constraints*)))))
			(format k "~%;;;;;;The main formula is asserted to be true at the time instant 1:~%")
			(format k "(assert (= ((_ extract 1 1) zot-p1) #b1))~%")
			(if loop-free
				(format k "(check-sat-using (then elim-uncnstr ufbv-rewriter dt2bv simplify solve-eqs (! propagate-values :bv_le_extra true :blast_eq_value true :blast_eq_value true) (repeat bit-blast) (! sat :asymm_branch false :scc false)) :print_model ~A)~%" (if getLFmodel "true" "false"))
				(format k "(check-sat-using (then elim-uncnstr ufbv-rewriter dt2bv simplify solve-eqs (! propagate-values :bv_le_extra true :blast_eq_value true :blast_eq_value true) (repeat bit-blast) (! sat :asymm_branch false :scc false)) :print_model true)~%"))

			))
;)

			; (to-smt-and-back *PROPS* smt-solver :smt-lib :smt2 :arith-bitvector :t :loops :t)
			; (to-smt-and-back *PROPS* smt-solver :smt-lib :smt2 :bitvector :t)
			(unless gensmt (to-smt-and-back *PROPS* smt-solver :smt-lib :smt2 :arith-bitvector :t))
			
		  
		  )))))))

(defun declare-assumptions (list)
	(loop for fm in list do (if (not (gethash fm (kripke-list *PROPS*)))
					(setf (gethash fm (kripke-list *PROPS*)) 
						(intern (format nil "~s" fm))))))
