;; AE2BVZOT: a bounded satisfiability checker (extended bvzot to cover arithmetic constraints).
;; Mohammad Mehdi Pourhashem Kallehbasti
; ------------------------------------------
;; Special Config1: ae2bvzot switches to this configuration when there is no Boolean AP and real tvar in the main model.
(in-package :cl-user)
(defpackage :ae2bvzot
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
(in-package :ae2bvzot) 
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
				(if (and 
						(or (string= (format nil "~A" (first (int-or-real (second f)))) "Int") (string= (format nil "~A" (first (int-or-real (second f)))) "int"))
						(or (string= (format nil "~A" (first (int-or-real (third f)))) "Int") (string= (format nil "~A" (first (int-or-real (third f)))) "int")))
					'(int)
					'(real))
				(when (eq (first f) '/) '(real))))
		(if (eq (get-item-sig (arith-itemp f)) nil) (int-or-real-constant f) (get-item-sig (arith-itemp f)))))

(defun int-or-real-constant (f)
	 (if (eq (position-if #'integerp (list f)) nil) '(real) '(int)))

(defun arity (i f)
  (eq (1- (length f)) i))

(defun to-smt-dialect (f smt bvSize)
  (declare (optimize (debug 0)(safety 0)(speed 3)))
      (cond     
	    ; ((null f) 'false)
	    ; ((eq f t) 'true)
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
					  ; (if (eq freshAP t) `(= ,(to-smt-dialect (second f) smt bvSize) ,(to-smt-dialect (third f) smt bvSize)) `(iff ,(to-smt-dialect (second f) smt bvSize) ,(to-smt-dialect (third f) smt bvSize)))
					  )
					   ;; `(and
					   ;; 	  (=> ,(to-smt-dialect (second f) smt bvSize) ,(to-smt-dialect (third f) smt bvSize))
					   ;; 	  (=> ,(to-smt-dialect (third f) smt bvSize) ,(to-smt-dialect (second f) smt bvSize))))
				     (t
					  `(and 
						 (or ,(to-smt-dialect `(not ,(second f)) smt bvSize) ,(to-smt-dialect (third f) smt bvSize))
						 (or ,(to-smt-dialect (second f) smt bvSize) ,(to-smt-dialect `(not ,(third f)) smt bvSize))))))
			(t
			      (cons (car f) (mapcar #'(lambda(x)
							    (to-smt-dialect x smt bvSize)) (cdr f))))))))

(defvar *PROPS* nil) ; this will contain a Kripke

(defclass ae2bvzot-kripke (kripke) 
      ((the-arith :accessor kripke-arith :type list) ;all arithmetic formulae
	    (the-timed-arith :accessor kripke-timed-arith :type hash-table) ;just arithmetic formulae inside with-time
	    (the-atomic-formulaeHT :accessor kripke-atomic-formulaeHT :type hash-table)
	    ; (the-AP-arithComp :accessor kripke-AP-arithComp :type hash-table) ;used for GSMT
	    (the-AP-arithComp :accessor AP-arithComp :type list) ;used for GSMT
	    (the-GSMT-reduction :accessor GSMT-reduction :type list) ;list of APs for arithmetic comparison that are already defined by GSMT
	    (the-timed-arith-terms :accessor kripke-timed-arith-terms :type list) ;
	    (the-untimed-arith :accessor kripke-untimed-arith :type hash-table)
	    (the-untimed-arith-terms :accessor kripke-untimed-arith-terms :type list) ;
	    (the-arith-arith-futr :accessor kripke-arith-futr :type list)
	    (the-arith-arith-past :accessor kripke-arith-past :type list)
	    (the-arith-arith-ops :accessor kripke-timed-terms :type list)
	    (the-atomic-formulae :accessor kripke-atomic-formulae :type list)
	    (the-arith-constants :accessor kripke-constants :type list)
	    (the-arith-IPC-vars :accessor kripke-IPC-vars :type list)    
	    (the-arith-IPC-constraints :accessor kripke-IPC-constraints :type list)	
	    (the-arith-related-IPC-terms :accessor kripke-related-IPC-terms :type list)
	    (the-arith-related-IPC-vars :accessor kripke-related-IPC-vars :type list)
	    (the-max-X :accessor kripke-max-X :type number)
	    (the-max-Y :accessor kripke-max-Y :type number)
	    (the-additional-timed-arith-terms :accessor kripke-additional-timed-arith-terms :type list)
	    ))


(defun make-kripke (k fma)
      (let ((a-kripke (make-instance 'ae2bvzot-kripke)))
	    (setf 
		  (kripke-k a-kripke)      k
		  (kripke-numvar a-kripke) 0
					; formula -> integer
		  (kripke-list a-kripke)   (make-hash-table :test #'equal)
					; integer -> formula
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
		  (kripke-atomic-formulaeHT a-kripke)  (make-hash-table :test #'equal)
		  ; (AP-arithComp a-kripke)  (make-hash-table :test #'equal)
		  (AP-arithComp a-kripke)   nil
		  (kripke-untimed-arith-terms a-kripke) nil 
		  (kripke-arith-futr a-kripke)   nil
		  (kripke-arith-past a-kripke)   nil
		  (kripke-constants a-kripke)  nil
		  (kripke-related-IPC-terms a-kripke) nil 
		  (kripke-related-IPC-vars a-kripke) nil 
		  (kripke-IPC-vars a-kripke) nil
		  (kripke-IPC-constraints a-kripke) nil
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

					; put in kripke-IPC-vars (timed and untimed) all the arithmetical variables involved
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
				    ((< = > >= <=) ; if fm is a interpreted RELATION 
					  (progn
						(push fm (kripke-atomic-formulae a-kripke))
						(push fm (kripke-IPC-constraints a-kripke))))
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
				    ((+ - * / mod)
					  (push fm (kripke-untimed-arith-terms a-kripke)))
				    (t
					  (error "arithmetic subformulae: unknown op ~S~%" fm))))) 
	      (kripke-untimed-arith a-kripke))
	    
					; *** obtain the partition of terms induced by IPC relations in the formula ***
					
	    (labels (
		      (is-within (var term) 
			    (if (consp term)
				  (is-within var (cadr term))
				  (eq var term)))
		      
		      (var-of-term (term) 
			    (if (consp term)
				  (var-of-term (cadr term))
				  term))
		      
		      (is-within-IPC-constr (tm term)
			    (or (equal tm (second term)) (equal tm (third term))))

		      (set-intersection (a b)
			    (remove nil (mapcan #'(lambda(x) 
							(remove nil (loop for el in b collect
									   (if (equal x el) x))))
					      a)))
		      )
	
					; now set some useful sets
	      (let* ( (IPC-terms 
			    (remove-duplicates (loop for el in (kripke-IPC-constraints a-kripke) append (cdr el))				      
			    :test #'equal))		      				
				 ; IPC-terms does not contain the starting variable
			 (IPC-constraints (kripke-IPC-constraints a-kripke))
			 (cur-partition nil)
			 (cur-term nil))
	
		    (format t "IPC-terms: ~s~%" IPC-terms)
		    (format t "IPC-constraints: ~s~%" IPC-constraints)
		    (loop 
			  while IPC-terms do
					; chose a new variable from IPC-terms to start a new partition
			  (push (first IPC-terms) cur-partition)			  
			  (setf cur-term (first IPC-terms))
			  (loop 
					; chose a new variable from the current partition
				while cur-term do
					; update IPC-constraints (visited constr are removed)
				(setf IPC-constraints
				      (remove-if #'(lambda(x) (is-within-IPC-constr cur-term x))
					    (mapc #'(lambda(x)
							  (let ( (A (second x))
								   (B (third x)))
								(cond 
								      ((equal cur-term A) (push B cur-partition))
								      ((equal cur-term B) (push A cur-partition)))))
						  IPC-constraints)))

					; remove the current variable from set IPC-terms
				(setf IPC-terms (remove cur-term IPC-terms))			       
				(setf cur-term (first (set-intersection IPC-terms cur-partition))))

					; put the partition into the set of partitions
			  (if cur-partition
				(push cur-partition (kripke-related-IPC-terms a-kripke)))
					; reset the current partition to nil...start a new discovery
			  (setf cur-partition nil))

					; ** get the partition of the set of variables **
					; from the set of related terms visit all partition and get for each term the variable
					; remove also singleton - i.e., terms not directly connected to any other term
		    (setf (kripke-related-IPC-vars a-kripke)
				(mapcar #'(lambda(x)
						(remove-duplicates (mapcar #'var-of-term x)))
				      (kripke-related-IPC-terms a-kripke)))
			  )
	      ; *** complete arithmetical data structures by adding all terms (Xy/Yx) which are not defined in the formula. This is done to define correctly LoopConstraints.
	      (labels(       
			  (max-term-deep (term)
				      (if (consp term)
					    (+ 1 (max-term-deep (cadr term)))
					    0))  
			   (get-X-term (term i)
				 (if (> i 0)
				       (list 'next (get-X-term term (1- i)))
				       term))

			   (get-Y-term (term i)
				 (if (> i 0)
				       (list 'yesterday (get-Y-term term (1- i)))
				       term))
			   )

		    (let (
			       (list-deep-futr (mapcar #'max-term-deep (kripke-arith-futr a-kripke)))
			       (list-deep-past (mapcar #'max-term-deep (kripke-arith-past a-kripke)))
			       )


			  		; compute the maximum nesting of X/Y over terms
			  (setf (kripke-max-X a-kripke) (reduce #'max (if list-deep-futr
						     list-deep-futr '(0))))
			  (setf (kripke-max-Y a-kripke) (reduce #'max (if list-deep-past
						     list-deep-past '(0))))

					; for all variables z complete the set of terms Xz/Yz
			  (loop for term in (kripke-timed-arith-terms a-kripke) do
				(loop for i from 1 to (kripke-max-X a-kripke)
				      do
				      (let ((tm (get-X-term term i))) 
					; if the new term has not been already included, then put it!
					    (if (null (gethash tm (kripke-timed-arith a-kripke)))
						  (progn 
							(setf (gethash tm (kripke-timed-arith a-kripke)) 
							      (intern (format nil "ZOT-A~s" (incf (kripke-numvar a-kripke)))))
					; store the term fm in the list of additional terms
							(push tm (kripke-additional-timed-arith-terms a-kripke))
							(push tm (kripke-arith-futr a-kripke))))))
					    
				
				(loop for i from 1 to (kripke-max-Y a-kripke)
				      do
				      (let ((tm (get-Y-term term i)))
					; if the new term has not been already included, then put it!
					    (if (null (gethash tm (kripke-timed-arith a-kripke)))
						  (progn
							(setf (gethash tm (kripke-timed-arith a-kripke)) 
							      (intern (format nil "ZOT-A~s" (incf (kripke-numvar a-kripke)))))
						  ; store the term fm in the list of additional terms
							(push tm (kripke-additional-timed-arith-terms a-kripke))
							(push tm (kripke-arith-past a-kripke)))))))))
			   
	    )a-kripke))

(defmethod call ((kk ae2bvzot-kripke) obj the-time &rest other)
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

(defmethod call-fmla-id ((kk ae2bvzot-kripke) obj) 
  (cond 
    ((eq 'false obj) 'false)
    ((eq 'true obj) 'true)
    (t (gethash obj (kripke-list kk)))))

(defun the-loopEx ()
  (call-fmla-id *PROPS* '**LOOPEX**))

;; ---------
;; Semantics
;; ---------
(defun LoopConstraints (gen-symbolic-val)
      (format t "define loop constraints~%")(force-output)
      ; (list
		  (append 
			; (list 'and )
			(nconc
			      (labels (
					    (get-X-term (term)
						  (list 'next term))

					    (get-Y-term (term)
						  (list 'yesterday term))

					    (get-symbolic-valuation-points (part) 
						  (mapcan #'(lambda(var) 
								  (let ((tm var))
									(if (and 
										  (not (numberp var))
										  (not (member var (kripke-untimed-arith-terms *PROPS*))))
									      (append 
										    (list tm)
										    (loop for i from 1 to (kripke-max-X *PROPS*) collect
											  (setf tm (get-X-term tm)))
										    (loop for i from 1 to (kripke-max-Y *PROPS*) 
											  initially (setf tm var) collect
											  (setf tm (get-Y-term tm))))
									      (list var))))
							part))
					    (make-IPC-constraint (sim p1 p2) 
						  (list sim p1 p2)) 
					    )
					; enforce IPC-periodicity over interpreted RELATIONs in {<,>,<=,>=,=} w.r.t. the set of VARIABLES	     
		   (loop for partition in (kripke-related-IPC-vars *PROPS*) 
			 when gen-symbolic-val ; when generate-symbolic-valuation is true then build periodicity over symbolic valuation at position k and (i-loop)-1
			 append
			 (let* ( (symbolic-valuation-XY-points (get-symbolic-valuation-points partition)) 
				     (symbolic-valuation-points (remove-duplicates symbolic-valuation-XY-points)) )
			       
			       (loop for point1 in symbolic-valuation-points append
				     (loop for point2 in (remove point1 symbolic-valuation-points) append
					   `( (iff ,(make-IPC-constraint '< (call *PROPS* point1 `(- i-loop 1)) (call *PROPS* point2 `(- i-loop 1))) 
						    ,(make-IPC-constraint '< (call *PROPS* point1 (kripke-k *PROPS*)) (call *PROPS* point2 (kripke-k *PROPS*))))
					       (iff ,(make-IPC-constraint '= (call *PROPS* point1 `(- i-loop 1)) (call *PROPS* point2 `(- i-loop 1))) 
						     ,(make-IPC-constraint '= (call *PROPS* point1 (kripke-k *PROPS*)) (call *PROPS* point2 (kripke-k *PROPS*)))))))))))))

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

(defun gen-i-atomic-formulae (GSMT)
  (format t "define for interpreted relations: <,>,=,<=,>= ~%")(force-output)
  (loop for i from 0 to (kripke-k *PROPS*) append
	(loop for fma in (kripke-atomic-formulae *PROPS*) 
	      when (and (arith-cop fma) (not (and GSMT (member fma GSMT-reduction))))
	      collect
	      (list 'iff
	    	(list '= (cons (list '_ 'extract i i) (call *PROPS* fma i)) (list '_ 'bv1 '1))
		    (cons (car fma) (mapcar #'(lambda (x)
						(call *PROPS* x i))
					    (cdr fma)))))))
;;<with ite>
; (defun gen-i-atomic-formulae ()
;   (format t "define for interpreted relations: <,>,=,<=,>= ~%")(force-output)
;   (loop for i from 0 to (kripke-k *PROPS*) append
; 	(loop for fma in (kripke-atomic-formulae *PROPS*) 
; 	      when (arith-cop fma)
; 	      collect
; 	      (list 'ite
; 	    	(cons (car fma) (mapcar #'(lambda (x)
; 						(call *PROPS* x i))
; 					    (cdr fma)))
; 	    	(list '= (cons (list '_ 'extract i i) (call *PROPS* fma i)) (list '_ 'bv1 '1))
; 	    	(list '= (cons (list '_ 'extract i i) (call *PROPS* fma i)) (list '_ 'bv0 '1))
; 		    ))))
;;</with ite>

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
;<del>
; (loop for i from 0 to (1+ (kripke-k *PROPS*)) append
; 	(list `(and (> ,(call *PROPS* key i) -10) (< ,(call *PROPS* key i) 10)))
; )
;</del>


;<old>
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
;</old>
;<new>
			  ; ; Build the periodicity of regions between (i_loop - 1) and K
			  ; (list `(or
			  ;   (and 
			  ;     (or
			  ;     	(< ,(call *PROPS* key `(- i-loop 1)) 0)
			  ;     	(> ,(call *PROPS* key `(- i-loop 1)) ,bound))
		   ;    	  (or
			  ;     	(< ,(call *PROPS* key (kripke-k *PROPS*)) 0)
			  ;     	(> ,(call *PROPS* key (kripke-k *PROPS*)) ,bound)))
		   ;    	(fc ,(call *PROPS* key `(- i-loop 1)) ,(call *PROPS* key (kripke-k *PROPS*)))))
			  ; (list `(iff (> ,(call *PROPS* key `(- i-loop 1)) ,bound) (> ,(call *PROPS* key (kripke-k *PROPS*)) ,bound)))
;</new>

;<old>
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
;</old>

;<new>
			  ; ; Build the periodicity of regions between (i_loop) and K+1
			  ; (list `(or
			  ;   (and 
			  ;     (or
			  ;       (< ,(call *PROPS* key `i-loop) 0)
			  ;     	(> ,(call *PROPS* key `i-loop) ,bound))
		   ;    	  (or
			  ;       (< ,(call *PROPS* key (1+ (kripke-k *PROPS*))) 0)
			  ;     	(> ,(call *PROPS* key (1+ (kripke-k *PROPS*))) ,bound)))
		   ;    	(fc ,(call *PROPS* key `i-loop) ,(call *PROPS* key (1+ (kripke-k *PROPS*))))))
			  ; (list `(iff (> ,(call *PROPS* key `i-loop) ,bound) (> ,(call *PROPS* key (1+ (kripke-k *PROPS*))) ,bound)))
;</new>

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
	(list '=
		(first (call *PROPS* fma 0))
		(case (car fma)
		  ((next)
		 	(list 'next (first (call *PROPS* (second fma) 0))))

		  ((alwf)
		 	(list 'alwf (first (call *PROPS* (second fma) 0))))

		  ((somf)
		 	(list 'somf (first (call *PROPS* (second fma) 0))))

		  ((alw)
		 	(list 'alw (first (call *PROPS* (second fma) 0))))

		  ((som)
		 	(list 'som (first (call *PROPS* (second fma) 0))))
	      
	      ((until)
			(list 'until (first (call *PROPS* (second fma) 0)) (first (call *PROPS* (third fma) 0))))

		  ((release)
			(list 'release (first (call *PROPS* (second fma) 0)) (first (call *PROPS* (third fma) 0)))))))) ; other operators do not appear here.

(defun gen-past2 ()
  (format t "gen-past2...~%")(force-output)
	(loop for fma in (kripke-past *PROPS*) collect
	(list '=
		(first (call *PROPS* fma 0))
		(case (car fma)
		((yesterday)
		 	(list 'yesterday (first (call *PROPS* (second fma) 0))))

		((zeta)
		 	(list 'zeta (first (call *PROPS* (second fma) 0))))
	    
	    ((alwp)
		 	(list 'alwp (first (call *PROPS* (second fma) 0))))

		((somp)
		 	(list 'somp (first (call *PROPS* (second fma) 0))))

	    ((since)
			(list 'since (first (call *PROPS* (second fma) 0)) (first (call *PROPS* (third fma) 0))))
		
		((trigger)
			(list 'trigger (first (call *PROPS* (second fma) 0)) (first (call *PROPS* (third fma) 0))))))))

(defun the-big-formula (fma periodic-arith-terms gen-symbolic-val ipc-constraints bound freshAP GSMT)
  (append
   (nconc	   
	(gen-arith-futr) ;e.g. [X(i1)]0 <-> [i1]1 
	(gen-arith-past)
	(gen-i-atomic-formulae GSMT) ;defines behavior of AP assigned to arithmetic operators.
	(gen-arith-constraints)
	;;;;; (gen-evt-futr)
	;;;;; (gen-past1) ; [Y(F1)]0 = false
	;;;;; (gen-existence-condition ipc-constraints)
	(when freshAP
		(nconc
		(gen-futr) ;defines behavior of future temporal operators. 
		(gen-bool)
		(gen-past2)
	))
	;[implemented] (LastStateFormula) ;l ~ k+1 for all p (AP + arithmetics represented as AP)
	(LoopConstraints gen-symbolic-val)
	(gen-regions bound)
	)))

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
	(substitute (bvTrue size) T
	(substitute (bvTrue size) 'true
	(substitute 'bvnot 'NOT
	(substitute 'bvor 'OR 
	(substitute 'bvand 'AND 
	(substitute 'bviff 'IFF
	(substitute (bvFalse size) nil f
	))))))))

(defun bvf (f size newf)
	(if (atom f) (setf newf (car (substitutions (list f) size)))
		(loop for x from 0 to (- (list-length f) 1) do
			(setf (nth x newf) (bvf (nth x f) size (nth x f)))
			))
	(values newf))

(defun collapse-atomic-formulae (f)
	(cond 
		((atom f) f)
		((gethash f (kripke-atomic-formulaeHT *PROPS*)) (gethash f (kripke-list *PROPS*)))
		(t (cons (collapse-atomic-formulae (car f)) (collapse-atomic-formulae (cdr f))))))

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
					; --- MAIN ---
(defun zot (the-time spec 
		     &key
		     (freshAP nil) ; Introduces fresh APS for all "unique" subformulae. If it is set to nil, fresh APs are introduced only for arithmetic constraints.
		     (GSMT nil) ;Guide SMT-solver: Adds assertions regarding (obvious) relations between arithmetic constraints over their representative AP. E.g. ap1:(> a b), and ap2:(<= a b) then asserts (= ap1 (bvnot ap2)) and deletes definition of either ap1 or ap2 over every time instant. That means, since we have (<-> ap1[i] (> a[i] b[i])) and (= ap1 (bvnot ap2)) we can delete this: (<-> ap2[i] (<= a[i] b[i])).
		     (transitions nil)
		     (negate-transitions nil)
		     (declarations nil)
		     (smt-solver :z3)
		     (logic :QF_UFIDL)
		     (smt-assumptions nil)
		     (smt-declarations nil)
		     (with-time t)
		     (periodic-terms nil)	
		     (gen-symbolic-val t)
		     (ipc-constraints nil)
		     (smt-lib :smt2)
		     (over-clocks 0)
		     (smt-metric-futr nil)
		     (smt-metric-past nil)
		     )
  (setf *smt-metric-futr-operators* smt-metric-futr)
  (setf *smt-metric-past-operators* smt-metric-past)
  (setf *format-smt* t)
  (setf *bitvector* t)
  (setf real-var nil)
  (if (or (eq logic :QF_UFRDL)(eq logic :QF_UFLRA))
      (setf *real-constants* t))
  (setf *metric-operators* nil)
  
  (let ((formula (trio-to-ltl spec)))
    (setf *PROPS* (make-kripke the-time 
			       (if (eq with-time t)
				   (with-time formula)
				 formula)))

    (format t "This is AE2BVZOT.~%")
    (declare-assumptions smt-declarations)

    (let ((undeclared (set-difference (kripke-atomic-formulae *PROPS*) declarations)))
      (if (and declarations undeclared)
	  (format t "Error: undeclared propositions ~S~%" undeclared)
					; Declarations are fine, so go on...
	(progn 
	  (format t "~%1. processing formula")
	  (time (progn
		  (format t "~%Used boolean propositions: ~%~S~%" (kripke-atomic-formulae *PROPS*))
		  (format t "~%Used arithmetic terms: ~%~S~%" (kripke-IPC-vars *PROPS*))
		  (format t "~%Used timed arithmetic terms: ~%~S~%" (kripke-timed-arith-terms *PROPS*))
		  (format t "~%Graph dependency over terms ~%~s~%" (kripke-related-IPC-terms *PROPS*))
		  (format t "~%Related variables ~%~s~%" (kripke-related-IPC-vars *PROPS*))
		  (format t "~%Time bound: ~S~%" the-time)
		  (format t "~%Number of Boolean variables: ~%~S~%"(- (length (kripke-atomic-formulae *PROPS*)) (length (kripke-IPC-constraints *PROPS*))))
		(setf AP-arithComp nil)
		(setf GSMT-reduction nil)
		(when GSMT (progn
		(loop for fma in (kripke-atomic-formulae *PROPS*) when (arith-cop fma) do
			(setf AP-arithComp (append AP-arithComp (list (list fma (call *PROPS* fma 0))))))
		(loop for i from 0 to (1- (length AP-arithComp)) do
			(loop for j from (1+ i) to (1- (length AP-arithComp)) do
				(let ((f1 (nth i AP-arithComp)) (f2 (nth j AP-arithComp)))
					(when (and (list-eq (list (second (first f1))) (list (second (first f2)))) (list-eq (list (third (first f1))) (list (third (first f2)))) (eq (get-rel (first(first f1)) (first(first f2))) 'neg))
						(setf GSMT-reduction (append GSMT-reduction (list (first f2))))))))))

		  (let ((trans (if transitions 
				   (manage-transitions transitions the-time) 
				 '(true))))
		    (setf (kripke-formula *PROPS*)
			  (to-smt-dialect 
				(nconc (list 'and)						 
				      (when *zot-item-constraints*
				      	    (manage-transitions (list *zot-item-constraints*) 
				      		  (1+ the-time)))
				      
				      (trio-to-ltl (the-big-formula 
							 (if (eq with-time t)
							       (with-time formula) 
							       formula) 
							 periodic-terms
							 gen-symbolic-val
							 ipc-constraints
							 over-clocks
							 freshAP
							 GSMT
							 ))
				      (if (and trans negate-transitions)
					    (list (list 'not (cons 'and trans)))
					    trans))
				smt-lib (+ the-time 2))))
		  
		  (format t "~%done processing formula~%")		  
		  (with-open-file (k "./output.smt.txt" :direction :output :if-exists :supersede)    ;write the smt file
			(with-open-file (dict "./output.dict.txt" :direction :output :if-exists :supersede)
				  (let (  (*print-case* :downcase)
					     (*print-pretty* nil)
					  (time-domain (if (or (eq logic :QF_UFRDL) (eq logic :QF_UFLRA))
							   *real*
							 *int*)))
				  (setq bvSize (+ the-time 2))
		(format k "(declare-fun i_loop () (_ BitVec ~A))" bvSize)
		
		; (format k "~%(declare-fun i-loop () Int)")
		; 		(format k "~%(assert (and (> i-loop 0) (< i-loop ~A)))" (1+ the-time))
		; 		; (format k "~%(assert (= (bv2int i_loop) i-loop))")
		; 		(format k "~%(assert (= ((_ int2bv ~A) i-loop) i_loop))" bvSize)
		
		(if (or gen-symbolic-val (> over-clocks 0))
			(progn
				(format k "~%(declare-fun i-loop () Int)")
				(format k "~%(assert (and (> i-loop 0) (< i-loop ~A)))" (1+ the-time))
				; (format k "~%(assert (= (bv2int i_loop) i-loop))")
				(format k "~%(assert (= ((_ int2bv ~A) i-loop) i_loop))" bvSize))
			(format k "~%(assert (and (bvuge i_loop (_ bv1 ~A)) (bvule i_loop (_ bv~A ~A))))" bvSize the-time bvSize))
			; (progn ;(format k "~%(assert (and (bvuge i_loop (_ bv1 ~A)) (bvule i_loop (_ bv~A ~A))))" bvSize the-time bvSize))
			; 	(format k "~%(assert (or")
			; 	(loop for i from 1 to (- bvSize 2) do
			; 		(format k "~%~4T(= i_loop (_ bv~A ~A))" i bvSize))
			; 	(format k "))")))
		
		(format k "~%(define-fun getbit ((x (_ BitVec ~A)) (index (_ BitVec ~A))) (_ BitVec 1)~%~4T((_ extract 0 0) (bvlshr x index)))~%~4T" bvSize bvSize)
		(format k "~%(define-fun reverse ((x (_ BitVec ~A))) (_ BitVec ~A)~%~4T" bvSize bvSize)
		(loop for i from 0 to (- bvSize 3) do
			(format k "(concat((_ extract ~A ~A)x)" i i))
		(format k "(concat ((_ extract ~A ~A)x)((_ extract ~A ~A)x)" (- bvSize 2) (- bvSize 2) (1- bvSize) (1- bvSize))
		(format k (repeat-string bvSize ")"))
; 		(format k "~%
; (define-fun ceiling ((x Real)) Int
;     (ite (= (to_real (to_int x)) x)
;     	(to_int x)
;     	(+ 1 (to_int x))))")
; 		(format k "~%
; (define-fun fc ((x Real) (y Real)) Bool
;     (and (= (to_int x) (to_int y)) (= (ceiling x) (ceiling y))))
; 			")
		(format k "~%~%(define-fun loopConV ((x (_ BitVec ~A))) Bool~%~4T(and~%" bvSize)
		(format k "~8T(= (getbit x i_loop) ((_ extract ~A ~A) x) ) ;; k+1 ~~ i_loop~%" (+ the-time 1) (+ the-time 1))
		(format k "~8T(= (getbit x (bvsub i_loop (_ bv1 ~A))) ((_ extract ~A ~A) x)))) ;; k ~~ i_loop-1~%" bvSize the-time the-time)
		(format k "~%(define-fun loopConF ((x (_ BitVec ~A))) Bool~%" bvSize)
		(format k "~4T(= (getbit x i_loop) ((_ extract ~A ~A) x))) ;; k+1 ~~ i_loop~%" (+ the-time 1) (+ the-time 1))
		(format k "~%(define-fun next ((x (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize)
		(format k "~4T(concat (getbit (bvlshr x (_ bv1 ~A)) i_loop) ((_ extract ~A 1) x)))~%" bvSize (+ the-time 1))
		(format k "~%(define-fun yesterday ((x (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize)
		(format k "~4T(bvshl x (_ bv1 ~A)))~%" bvSize)
		(format k "~%(define-fun zeta ((x (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize)
		(format k "~4T(bvor (bvshl x (_ bv1 ~A)) (_ bv1 ~A)))~%" bvSize bvSize)
		(format k "~%(define-fun untilNL ((A (_ BitVec ~A)) (B (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize bvSize)
		(format k "~4T(bvor~%~8TB~%~8T(bvand~%")
		(format k "~12TA~%")
		(format k "~12T(bvnot~%")
		(format k "~16T(reverse~%")
		(format k "~20T(bvadd~%")
		(format k "~24T(reverse (bvor B A))~%")
		(format k "~24T(reverse B)))))))~%")
		(format k "~%(define-fun until ((A (_ BitVec ~A)) (B (_ BitVec ~A))) (_ BitVec ~A)" bvSize bvSize bvSize)
		(format k "~%~4T(untilNL A (concat (getbit (untilNL A B) i_loop) ((_ extract ~A 0) B))))" the-time)
		(format k "~%(define-fun release ((A (_ BitVec ~A)) (B (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize bvSize)
		(format k "~4T(bvnot (until (bvnot A) (bvnot B))))~%")
		(format k "~%(define-fun since ((A (_ BitVec ~A)) (B (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize bvSize)
		(format k "~4T(bvor~%~8TB~%~8T(bvand~%~12TA~%~12T(bvnot~%~16T(bvadd~%~20T(bvor B A)~%~20TB)))))~%")
		(format k "~%(define-fun trigger ((A (_ BitVec ~A)) (B (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize bvSize)
		(format k "~4T(bvnot (since (bvnot A) (bvnot B))))~%")
		(format k "~%(define-fun alw ((x (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize)
		(format k "~4T((_ repeat ~A) (bvredand x)))~%" bvSize)
		(format k "~%(define-fun som ((x (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize)
		(format k "~4T((_ repeat ~A) (bvredor x)))~%" bvSize)
		(format k "~%(define-fun alwfNL ((x (_ BitVec ~A))) (_ BitVec ~A)~%~4T(bvand~%~8Tx~%~8T(reverse~%~12T(bvsub~%~16T(reverse (bvnot x))~%~16T(_ bv1 ~A)))))~%" bvSize bvSize bvSize)
		(format k "~%(define-fun alwf ((x (_ BitVec ~A))) (_ BitVec ~A)~%~4T(alwfNL (concat (getbit (alwfNL x) i_loop) ((_ extract ~A 0) x))))~%" bvSize bvSize the-time)
		(format k "~%(define-fun alwp ((x (_ BitVec ~A))) (_ BitVec ~A)~%~4T(bvand~%~8Tx~%~8T(bvsub~%~12T(bvnot x)~%~12T(_ bv1 ~A))))~%" bvSize bvSize bvSize)
		(format k "~%(define-fun somfNL ((x (_ BitVec ~A))) (_ BitVec ~A)~%~4T(bvor~%~8Tx~%~8T(bvnot~%~12T(reverse~%~16T(bvsub~%~20T(reverse x)~%~20T(_ bv1 ~A))))))~%" bvSize bvSize bvSize)
		(format k "~%(define-fun somf ((x (_ BitVec ~A))) (_ BitVec ~A)~%~4T(somfNL (concat (getbit (somfNL x) i_loop) ((_ extract ~A 0) x))))~%" bvSize bvSize the-time)
		(format k "~%(define-fun somp ((x (_ BitVec ~A))) (_ BitVec ~A)~%~4T(bvor~%~8Tx~%~8T(bvnot~%~12T(bvsub~%~16Tx~%~16T(_ bv1 ~A)))))~%"bvSize bvSize bvSize)
		(format k "(define-fun bviff ((A (_ BitVec ~A)) (B (_ BitVec ~A))) (_ BitVec ~A)~%~4T(bvxnor A B))~%" bvSize bvSize bvSize)
		(format k ";;;;;;Used propositions and their loop constraints:~%")
					;write all the propositional items
				    (maphash (lambda (key v)
						   (format dict "~s -> ~s~%" v key)
					       (if (consp key) 
						   (case (car key)
							(t
						      (if (and (not (arith-itemp key)) (or freshAP (arith-cop key)))
							  (format k "(declare-fun ~A () (_ BitVec ~A))~%" (string-downcase v) bvSize)
							  ))) ;legacy for (-P- a)
						 (if (member key (kripke-atomic-formulae *PROPS*))
						     (format k "(declare-fun ~A () (_ BitVec ~A))~%" (string-downcase v) bvSize))))
					     (kripke-list *PROPS*))

					;write all the arithmetic items
				    (maphash (lambda (key v) 
					       (declare (ignore v))
					       (let* ((it (arith-itemp key))
							(sig (get-item-sig it))
							(sigindex (append (butlast (get-item-sig it) 1) (list *int*)))
							(time-d 
							 (if (eq (get-item-sort it) 'timed)
							     time-domain
							   "")) )
					       (if it
						     (format k "(declare-fun ~A ~A ~{~A ~})~%" key sigindex (last sig))
						     (format k "(declare-fun ~A (~A) ~{~A ~})~%" key time-d sig))))
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
				  (write (kripke-formula *PROPS*) :stream k :escape nil :case :downcase))
			    (format k ")~%")
			    
			
			(loop for f in (kripke-atomic-formulae *PROPS*) do
				(setf (gethash f (kripke-atomic-formulaeHT *PROPS*)) (gethash f (kripke-list *PROPS*))))

			 ;Loop Constraints for all atomic formulae (k ~ i_loop-1) and (k+1 ~ i_loop)
			(loop for p in (kripke-atomic-formulae *PROPS*)
				do (format k "(assert (loopConV ~A))~%" (string-downcase (gethash p (kripke-list *PROPS*)))))
			(when GSMT (progn
			(format k ";;;;;;Guides for the SMT-solver:")
			(loop for i from 0 to (1- (length AP-arithComp)) do
				(loop for j from (1+ i) to (1- (length AP-arithComp)) do
					(let ((f1 (nth i AP-arithComp)) (f2 (nth j AP-arithComp)))
						(when (and (list-eq (list (second (first f1))) (list (second (first f2)))) (list-eq (list (third (first f1))) (list (third (first f2)))))
						(case (get-rel (first(first f1)) (first(first f2)) )
							('nand
								(format k "~%(assert (= (_ bv0 ~A) (bvand ~(~a~) ~(~a~))))" bvSize (first (second f1)) (first (second f2))))
							('neg
								(format k "~%(assert (= ~(~a~) (bvnot ~(~a~))))" (first (second f1)) (first (second f2))))
							('impliesR
								(format k "~%(assert (= (_ bv0 ~A) (bvand ~(~a~) (bvnot ~(~a~)))))" bvSize (first (second f1)) (first (second f2))))
							('impliesL
								(format k "~%(assert (= (_ bv0 ~A) (bvand ~(~a~) (bvnot ~(~a~)))))" bvSize (first (second f2)) (first (second f1)))))))))))
			(format k "~%;;;;;;Last state constraint on the past subformulae:~%")
			(if  freshAP
				(loop for p in (kripke-past *PROPS*)
				do (format k "(assert (loopConF ~A))~%" (string-downcase (format nil "~A" (first (call *PROPS* p 0))))))

				(loop for p in (kripke-past *PROPS*)
				do (format k "(assert (loopConF ~A))~%" (string-downcase (format nil "~A" (bvf (collapse-atomic-formulae p) bvSize (collapse-atomic-formulae p)))))))

			(format k ";;;;;;The main formula is asserted to be true at the time instant 1:~%")
			(if freshAP
				(progn (format k "(assert (= (getbit zot-p1")
				(format k " (_ bv1 ~A)) #b1))~%" bvSize))

				(progn (format k "(assert (= (getbit ")
				(format k (string-downcase (format nil "~A" (bvf (collapse-atomic-formulae formula) bvSize (collapse-atomic-formulae formula)))))
				(format k " (_ bv1 ~A)) #b1))~%" bvSize)))
			(if (and (= (- (length (kripke-atomic-formulae *PROPS*)) (length (kripke-IPC-constraints *PROPS*))) 0) (not real-var) (= over-clocks 0))
				;;<Special Config1>
				(format k "(check-sat-using (then (! simplify :blast_eq_value true :local_ctx true) solve-eqs (repeat bit-blast) (! simplify :blast_eq_value true :local_ctx true) (! qflia :bv.enable_int2bv true :arith.branch_cut_ratio 5 :case_split 0 :mbqi false :relevancy 0 :arith.propagate_eqs false :local_ctx true)) :print_model true)~%")
				;;<Special Config1>
				(format k "(check-sat-using (then (! simplify :blast_eq_value true :local_ctx true) solve-eqs (repeat bit-blast) (! simplify :blast_eq_value true :local_ctx true) (! smt :bv.enable_int2bv true :arith.branch_cut_ratio 5 :case_split 0 :mbqi false :relevancy 0)) :print_model true)~%"))
			(format k "(exit)")
			))
		   (to-smt-and-back *PROPS* smt-solver :smt-lib :smt2 :arith-bitvector :t)
		  
		  )))))))

(defun declare-assumptions (list)
	(loop for fm in list do (if (not (gethash fm (kripke-list *PROPS*)))
					(setf (gethash fm (kripke-list *PROPS*)) 
						(intern (format nil "~s" fm))))))

(defun pht (h) (maphash 'print-hash-entry h))

(defun print-hash-entry (key value)
  (fresh-line)
  (format t "Key: ~S " key)
  (format t "Value: ~S" value)
  (fresh-line))
