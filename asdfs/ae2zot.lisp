;; eZOT: a bounded satisfiability checker with past operators
;; --Matteo Pradella, 20061208
;; --Marcello M. Bersani
;; v. 20070122
; --------------------------------------------------------------------------
;
; Copyright (C) 2006 Matteo Pradella (pradella@elet.polimi.it)
;
; This program is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation; either version 2 of the License, or
; (at your option) any later version.
;
; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.
;
; You should have received a copy of the GNU General Public License
; along with this program; if not, write to the Free Software
; Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
;
; --------------------------------------------------------------------------

(in-package :cl-user)

(defpackage :ae2zot
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
	   :QF_UFIDL
	   :QF_UFLIA
	   :QF_AUFLIA
	   :smt-assumptions
	   :no-loop
	   :with-time)) 


(in-package :ae2zot) 

;(declaim (optimize (speed 3)(space 1)(safety 0)(debug 0)))


; -------------------------
; MP: hack to improve speed of "member"
(defmacro in (x set)
  (let* ((insym (gensym))
         (the-set (loop for i in (eval set) 
                     collect (list 'eq insym `(quote ,i)))))
    `(let ((,insym ,x))
       (or ,@the-set)))) 


(defun predicatep (f) 
  (and (consp f) 
       (not 
	     (in (car f) '(tempus not and or next until release since trigger zeta yesterday < > = <= >=)))))
		
	   

(declaim (inline predicatep))

(defun arith-cop (f) 
  (and (consp f) 
       (in (car f) '(< > = <= >=))))

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


(defun arity (i f)
  (eq (1- (length f)) i))


(defun deneg (f)
  "deneg pushes negations to propositions"
  (declare (optimize (debug 0)(safety 0)(speed 3)))
  (cond     
    ((null f) 'false)
    ((eq f t) 'true)   
    ((or (symbolp f) (stringp f) (integerp f) (predicatep f) (arith-cop f) (arith-opp f)) f)
    ((eq (car f) 'not)
     (let ((a (second f)))
       (cond 
	 ((eq a t) 'false)
	 ((null a) 'true)	 
	 ;((or (symbolp a) (stringp a) (integerp a) (predicatep a) (arith-cop a) (arith-opp a)) f)
	 ((or (symbolp a) (stringp a) (integerp a) (predicatep a)  (arith-opp a)) f)
	 (t 
	  (case (car a)
	    ((not) (deneg (second a)))
	    ((and) (deneg (cons 'or (mapcar 
				     (lambda (x) (deneg `(not ,x)))
				     (cdr a)))))
	    ((or) (deneg (cons 'and (mapcar 
				     (lambda (x) (deneg `(not ,x)))
				     (cdr a)))))
	    ((next) `(next ,(deneg `(not ,(second a)))))
	    ((until) 
	     `(release ,(deneg `(not ,(second a))) ,(deneg `(not ,(third a)))))
	    ((release) 
	     `(until ,(deneg `(not ,(second a))) ,(deneg `(not ,(third a)))))
	    ((yesterday) `(zeta ,(deneg `(not ,(second a)))))
	    ((zeta) `(yesterday ,(deneg `(not ,(second a)))))
	    ((since) 
	     `(trigger ,(deneg `(not ,(second a))) ,(deneg `(not ,(third a)))))	     
	    ((trigger) 
	     `(since ,(deneg `(not ,(second a))) ,(deneg `(not ,(third a)))))

	    ((<)
	     `(>= ,(second a) ,(third a)))
	     
	    ((>)
	     `(<= ,(second a) ,(third a)))

	    ((<=)
	     `(> ,(second a) ,(third a)))
	     
	    ((>=)
	     `(< ,(second a) ,(third a)))
     
	    ((=)
	     `(or (< ,(second a) ,(third a)) (> ,(second a) ,(third a))))



	    (t (error "deneg: bad arg ~S" (cons f a)))))))) 

    ((and (consp f) (eq (car f) 'and) (null (cdr f))) 'true)
    ((and (consp f) (eq (car f) 'or)  (null (cdr f))) 'false)

					;((member (car f) '(and or next until release since trigger zeta yesterday))   
    (t
     (cons (car f) (mapcar #'deneg (cdr f))))))





(defvar *PROPS* nil) ; this will contain a Kripke


(defclass eezot-kripke (kripke) 
  ((the-arith :accessor kripke-arith :type list) ;all arithmetic formulae
   (the-timed-arith :accessor kripke-timed-arith :type hash-table) ;just arithmetic formulae inside with-time
   (the-timed-arith-terms :accessor kripke-timed-arith-terms :type list) ;
   (the-arith-arith-futr :accessor kripke-arith-futr :type list)
   (the-arith-arith-past :accessor kripke-arith-past :type list)
   (the-arith-arith-ops :accessor kripke-timed-arith-ops :type list)))


(defun make-kripke (k fma)
  (let ((a-kripke (make-instance 'eezot-kripke)))
    (setf 
      (kripke-k a-kripke)      k
      (kripke-numvar a-kripke) 0
      ; formula -> integer
      (kripke-list a-kripke)   (make-hash-table :test #'equal)
      ; integer -> formula
      (kripke-back a-kripke)   (make-array (* k 10) :adjustable t)
      (kripke-prop a-kripke)   nil
      (kripke-bool a-kripke)   nil
      (kripke-futr a-kripke)   nil
      (kripke-maximum a-kripke) 0
      (kripke-past a-kripke)   nil
      (kripke-arith a-kripke)  nil
      (kripke-timed-arith-terms a-kripke) nil
      (kripke-timed-arith a-kripke)  (make-hash-table :test #'equal)
      (kripke-arith-futr a-kripke)   nil
      (kripke-arith-past a-kripke)   nil
      (kripke-timed-arith-ops a-kripke)   nil)
    
      (setf (gethash '**I_LOOP** (kripke-list a-kripke))
 		    (intern (format nil "I_LOOP" )))

      (setf (gethash '**LOOPEX** (kripke-list a-kripke))
 		    (intern (format nil "LOOPEX" )))


      ; This puts subformulae into the hash table
      (labels (

	       (manage-arith-temp-subfmla (fm) 
		 (when (and (not (member fm '(true false)))
			    (not (gethash fm (kripke-timed-arith a-kripke)))
			    (not (gethash fm (kripke-list a-kripke)))
			    ;if fm is a timed item, so manage it!
			    (or (not (arith-itemp fm)) (eq (get-item-sort (arith-itemp fm)) 'timed))
			    (not (numberp fm)))

		   (if (symbolp fm)
		       (setf (gethash fm (kripke-timed-arith a-kripke)) 
			     (intern (format nil "~s" fm)))
		       (let ((sig (arith-itemp fm))) ; if fm is an item
			 (if (not (null sig))
			     (let ((tp (get-item-codom sig))) 
			       (cond
				((string= tp "Bool") (setf (gethash fm (kripke-list a-kripke)) fm))     ;a boolean item
				(t (setf (gethash fm (kripke-timed-arith a-kripke)) fm))))     ;a non boolean item
			   (if (arith-cop fm)      ;if fm is an arithmetic subfmla
				 (setf (gethash fm (kripke-list a-kripke)) ;a boolean comparison of arithmetic items
				       (intern (format nil "P~s" (incf (kripke-numvar a-kripke)))))
				 (setf (gethash fm (kripke-timed-arith a-kripke)) ;an arithmetic item
				       (intern (format nil "A~s" (incf (kripke-numvar a-kripke)))))))))
		   
		   (if (consp fm)
		       (dolist (i (cdr fm))
			 (manage-arith-temp-subfmla i)))))
	       
	       
	       (manage-temp-subfmla (fm)
		 (when (and (not (member fm '(true false)))
			    (not (gethash fm (kripke-list a-kripke)))
			    (not (gethash fm (kripke-timed-arith a-kripke)))
			    (not (numberp fm)))
		   
		   (if (symbolp fm)
		       (setf (gethash fm (kripke-list a-kripke)) 
			     (intern (format nil "~s" fm)))
		     
		       (let ((sig (arith-itemp fm))) ; if fm is an item			 
			 (if (not (null sig))
			     (let ((tp (get-item-codom sig))) 			      
			       (cond  
			       	 ((string= tp "Bool") (setf (gethash fm (kripke-list a-kripke)) fm))     ;a boolean item
			       	 (t (error "Manage Temporal Subfmla: type inconsistency of non boolean ~S: ~s inside arithmetic expression! ~%" fm tp))))
			     (if (arith-opp fm) 				 
			 	 (setf (gethash fm (kripke-timed-arith a-kripke)) ;an arithmetic item
			 	       (intern (format nil "A~s" (incf (kripke-numvar a-kripke)))))	
			 	 ;(format t "~s~%" fm)
			 	 (setf (gethash fm (kripke-list a-kripke)) ;a boolean item
 			 	       (intern (format nil "P~s" (incf (kripke-numvar a-kripke))))) )))
		       )
		   
		   
		   (if (not (or (arith-opp fm) (arith-cop fm) (arith-itemp fm)))
		       (if (consp fm)
			   (dolist (i (cdr fm))
			     (manage-temp-subfmla i))		     			 
			 (manage-temp-subfmla fm))
		     (if (consp fm)
			 (dolist (i (cdr fm))
			   (manage-arith-temp-subfmla i))
		       (manage-arith-temp-subfmla fm)))))
		       

	       
	       (manage-subfmla (fm)
		 (when (and (not (member fm '(true false)))
			    ;(not (gethash fm (kripke-list a-kripke)))			    
			    (not (numberp fm)))
		   
		   ;(format t "~s~%" fm)
		   (if (temp-fmlap fm)		       
		       (manage-temp-subfmla (cadr fm))
						
		       (if (consp fm)
			   (dolist (i (cdr fm))
			     (manage-subfmla i))
			   (manage-temp-subfmla fm))
			   )))

		   
	       )

	       (manage-subfmla fma))
	       ;(incf (kripke-numvar a-kripke))
	       
	
      (maphash  
       (lambda (fm val)
	 (declare (ignore val)) ; just to avoid warnings...
	 
	 (if (or (symbolp fm) (arith-itemp fm)) 
	     (unless (member fm '(true false **I_LOOP** **LOOPEX**))
	       (push fm (kripke-prop a-kripke)))
	     (case (car fm)
	       ((and or not < = > >= <=) 
		(push fm (kripke-bool a-kripke)))
	       ((next until release) 
		(push fm (kripke-futr a-kripke)))
	       ((yesterday zeta since trigger)
		(push fm (kripke-past a-kripke)))
	       (t
		(error "subformulae: unknown op ~S~%" fm))))) 
       (kripke-list a-kripke))

      (maphash  
       (lambda (fm val)
	 (declare (ignore val)) ; just to avoid warnings...
	 
	 (if (or (symbolp fm) (arith-itemp fm))
	     (unless (member fm '(true false))
	       (if (symbolp fm)
		   (push fm (kripke-timed-arith-terms a-kripke))
		   (push (car fm) (kripke-timed-arith-terms a-kripke))))
	     (case (car fm)
	       ((next) 
		(push fm (kripke-arith-futr a-kripke)))
	       ((yesterday)
		(push fm (kripke-arith-past a-kripke)))
	       ((+ - * / mod)
	        (push fm (kripke-timed-arith-ops a-kripke)))
	       (t
		(error "arithmetic subformulae: unknown op ~S~%" fm))))) 
       (kripke-timed-arith a-kripke))

      
      a-kripke))


(defmethod call ((kk eezot-kripke) obj the-time &rest other)
  (declare (ignore other))
  (cond 
    ((eq 'false obj) 'false)
    ((eq 'true obj) 'true)   
    ((numberp obj) obj)
    ((and (consp obj) (or (arith-cop (car obj)) (arith-opp (car obj)))) (list (gethash obj (kripke-timed-arith kk)) the-time)) 
    (t 
     (let ((p (gethash obj (kripke-list kk))) 
	   (q (gethash obj (kripke-timed-arith kk))))      
        (cond 
	  ((and (null p) (null q)) 
	   (if (eq (get-item-sort (arith-itemp obj)) 'timed) 
					;if the item is a timed arithmetic term, so rise up an error!
	       (error "During Call process, item ~s not found in formula~%~%HINT: maybe you are using some predicates in the 'transitions:' which is not used in the 'formula' section. To fix this problem let initialize these predicates with a fake value (maybe in the instant 0...)~%" obj))
					;otherwise it is a non-timed term, so give it back!
	   obj)

;; " 

	  ;Removed. This piece of code put time in all terms. Also if they are defined as non-timed items!!! 
	   ;; (if (consp obj)
	   ;;     (append obj (list the-time))	       
	   ;;     (list obj the-time)))
	  ((null p) 	   
	   (if (consp q)
	      (append q (list the-time))	       
	      (list q the-time)))
	  ((null q)
	   (if (consp p)
	       (append p (list the-time))
	       (list p the-time))))))))

;;         (cond 
;; 	  ((and (null p) (null q)) (error "During Call process, not found item: ~s" obj)) )	 
;; 	(if (null p) 	   
;; 	    (if (consp q)
;; 		(append q (list the-time))	       
;; 		(list q the-time))
;; 	    (if (consp p)
;; 		(append p (list the-time))
;; 		(list p the-time)))))))
	   
       
       


(defgeneric call-fmla-id (kk obj))

(defmethod call-fmla-id ((kk eezot-kripke) obj) 
  (cond 
    ((eq 'false obj) 'false)
    ((eq 'true obj) 'true)
    (t (gethash obj (kripke-list kk)))))



(defun the-loopEx ()
  (call-fmla-id *PROPS* '**LOOPEX**))

(defun the-iloop ()
  (call-fmla-id *PROPS* '**I_LOOP**))




;; ---------
;; Semantics
;; ---------


; BZOT -- in fieri 

(defun LoopFree ()
  (format t "loopfree...")(force-output)
  (cons  
   `(not ,(the-loopEx))
   ;'true

;modified index: from 0 to K

   (loop for i from 0 to (kripke-k *PROPS*) append
	(loop for j from 0 to (kripke-k *PROPS*) when (< i j)
	   collect
	     (list 'not 
		   (cons 
		    'and
		    (loop for fm in (append 
				      (kripke-prop *PROPS*) 
					;(remove-if-not (lambda (f) (eq (car f) 'next))
				      (kripke-futr *PROPS*);)
					;(remove-if-not (lambda (f) (eq (car f) 'yesterday))
				      (kripke-past *PROPS*));)
		       collect
			 `(iff ,(call *PROPS* fm i) 
			       ,(call *PROPS* fm j)))))))))
  




(defun LoopConstraints ()
  (format t "loopconstraints...")(force-output)
  (list
   `(impl ,(the-loopEx) ,(cons 'or (loop for i from 1 to (kripke-k *PROPS*) collect `(= ,(the-iloop) ,i))))
   (list
    'iff
     (list 'and `(<= 1 ,(the-iloop)) `(<= ,(the-iloop) ,(kripke-k *PROPS*)))    
     (append 
       (list 'and (the-loopEx))
       (nconc
	(loop for fma in (kripke-bool *PROPS*) 
	      when (in (car fma) '(= < > <= >=))	     
	      collect
	      `(iff ,(call *PROPS* fma `(- ,(the-iloop) 1)) ,(call *PROPS* fma (kripke-k *PROPS*))))
	
	(loop for p in (kripke-prop *PROPS*) collect 	  
	      `(iff ,(call *PROPS* p `(- ,(the-iloop) 1)) ,(call *PROPS* p (kripke-k *PROPS*)))))))))


(defun gen-bool ()
  (format t "gen-bool...")(force-output)
  (loop for i from 0 to (kripke-k *PROPS*) append
	(loop for fma in (kripke-bool *PROPS*) collect
	      (list 'iff  
		    (call *PROPS* fma i)  
		    (case (car fma)
		      ((not)
		       (list 'not (call *PROPS* (second fma) i)))

		      ((and or)
		       (cons (car fma) (mapcar #'(lambda (x)
						   (call *PROPS* x i))
					       (cdr fma))))
		      ((= < > <= >=)
		       (cons (car fma) (mapcar #'(lambda (x)
						   (call *PROPS* x i))
					       (cdr fma)))))))))

(defun gen-futr ()
  (format t "gen-futr...")(force-output)
  (loop for i from 0 to (kripke-k *PROPS*) append       
       (loop for fma in (kripke-futr *PROPS*) collect
	    (list 'iff  
		  (call *PROPS* fma i)  
		  (case (car fma)
		    ((next)
		     (call *PROPS* (second fma) (1+ i)))
		    
		    ((until)
		     `(or ,(call *PROPS* (third fma) i)
			  (and ,(call *PROPS* (second fma) i)
			       ,(call *PROPS* fma (1+ i)))))
		    
		    ((release)
		     `(and ,(call *PROPS* (third fma) i)
			   (or ,(call *PROPS* (second fma) i)
			       ,(call *PROPS* fma (1+ i))))))))))


(defun gen-arith-futr ()
  (format t "gen-arithmetic-futr...")(force-output)
  (loop for i from 0 to (kripke-k *PROPS*) append    
       (loop for fma in (kripke-arith-futr *PROPS*) collect
	    (list '=  
		  (call *PROPS* fma i)  
		  (case (car fma)
		    ((next)
		     (call *PROPS* (second fma) (1+ i))))))))
  


(defun LastStateFormula ()
  (format t "lastState...")(force-output)
  (let ((fma-list (append
		    (kripke-prop *PROPS*)
		    (kripke-bool *PROPS*)
		    (kripke-futr *PROPS*)
		    (kripke-past *PROPS*))))

    (cons
     `(impl (not ,(the-loopEx))
	    ,(cons 'and 
		   (loop for fm in fma-list collect ;unless (arith-cop fm) collect 
			`(not ,(call *PROPS* fm (1+ (kripke-k *PROPS*)))))))
			
	    
     (list
     `(impl ,(the-loopEx)
	    ,(cons 'and
		   (loop for fm in fma-list collect ;unless (arith-cop fm) collect
			`(iff ,(call *PROPS* fm (the-iloop)) ,(call *PROPS* fm (1+ (kripke-k *PROPS*)))))))))))
 

		  
		  
		    


(defun gen-evt-futr ()
  (format t "gen-evt-futr...")(force-output)
  (let ((k (kripke-k *PROPS*)))
    (append 
     (list 
      `(impl ,(the-loopEx)
	     ,(cons 'and		    
		    (loop for fm in (kripke-futr *PROPS*) when (member (car fm) '(until release)) collect
			  (case (car fm)
			    ((until)			       
			     `(impl ,(call *PROPS* fm k)
				    (and 				     
				     (<= ,(the-iloop) ,(intern (format nil "I_EVE_~s" (call-fmla-id *PROPS* fm))))
				     (<= ,(intern (format nil "I_EVE_~s" (call-fmla-id *PROPS* fm))) ,(kripke-k *PROPS*))
				     ,(call *PROPS* (third fm) (intern (format nil "I_EVE_~s" (call-fmla-id *PROPS* fm)))))))

			    ((release)			       
			     `(impl (not ,(call *PROPS* fm k))
				    (and 
				     (<= ,(the-iloop) ,(intern (format nil "I_EVE_~s" (call-fmla-id *PROPS* fm))))
				     (<= ,(intern (format nil "I_EVE_~s" (call-fmla-id *PROPS* fm))) ,(kripke-k *PROPS*))
				     (not ,(call *PROPS* fm (intern (format nil "I_EVE_~s" (call-fmla-id *PROPS* fm))))))))))))))))



(defun gen-past1 ()
  (format t "gen-past1...")(force-output)
  (loop for fm in (kripke-past *PROPS*) collect
	(case (car fm)
	  ((since trigger)
	   `(iff ,(call *PROPS* fm 0)
		 ,(call *PROPS* (third fm) 0)))
	  ((yesterday)
	   `(not ,(call *PROPS* fm 0)))
	  ((zeta)
	   (call *PROPS* fm 0)))))


(defun gen-past2 ()
  (format t "gen-past2...")(force-output)
  (loop for i from 1 to (1+ (kripke-k *PROPS*)) append
	(loop for fm in (kripke-past *PROPS*) collect
	      (case (car fm)
		((since)
		 `(iff ,(call *PROPS* fm i)
		       (or ,(call *PROPS* (third fm) i)
			   (and ,(call *PROPS* (second fm) i)
				,(call *PROPS* fm (1- i))))))
		((trigger)
		 `(iff ,(call *PROPS* fm i)
		       (and ,(call *PROPS* (third fm) i)
			    (or ,(call *PROPS* (second fm) i)
				,(call *PROPS* fm (1- i))))))
		((zeta yesterday)
		 `(iff ,(call *PROPS* fm i)
		       ,(call *PROPS* (second fm) (1- i))))))))

(defun gen-arith-past ()
  (format t "gen-arithmetic-past...")(force-output)
  (loop for i from 1 to (kripke-k *PROPS*) append    
       (loop for fma in (kripke-arith-past *PROPS*) collect
	    (list '=  
		  (call *PROPS* fma i)  
		  (case (car fma)
		    ((zeta yesterday)
		     (call *PROPS* (second fma) (1- i))))))))



(defun gen-arith-constraints ()
  (format t "gen-arithmetic-constraints...")(force-output)
  (loop for i from 0 to (kripke-k *PROPS*) append    
       (loop for fma in (kripke-timed-arith-ops *PROPS*) collect
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



(defun the-big-formula (fma loop-free no-loop)
  (cons
   (if (temp-fmlap fma)
       (call *PROPS* (cadr fma) 1)
       (labels 
	   ((rec-prn (l)
	      (mapcar (lambda (x)			
			(if (temp-fmlap x) 
			    (call *PROPS* (cadr x) 1)			    
			    (if (gethash x (kripke-list *PROPS*))
				(call *PROPS* x 1)
				(if (not (consp x))
				    x
				    (rec-prn x))))) l)))
	 (rec-prn fma)))
		    
	 
	(if loop-free
	    (nconc
	     (LoopFree)
	     (gen-bool)
	     (gen-futr)
	     ;(gen-evt-futr)
	     (gen-past1) ;????
	     (gen-past2))

	    (if no-loop		
		(nconc	   
		 ;(LoopConstraints)
		 (gen-bool)
		 (gen-futr)	     
		 (LastStateFormula)
		 ;(gen-evt-futr)
		 (gen-past1)
		 (gen-past2)	    
		 (gen-arith-futr)
		 (gen-arith-past)
		 (gen-arith-constraints))
		 
		 (nconc	   
		  (LoopConstraints)
		  (gen-bool)
		  (gen-futr)	     
		  (LastStateFormula)
		  (gen-evt-futr)
		  (gen-past1)
		  (gen-past2)	    
		  (gen-arith-futr)
		  (gen-arith-past)
		  (gen-arith-constraints))))))


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



;(defun prn-str (l) (apply #'concatenate (cons 'string l)))

(defun prn-str (l) (format nil "~{~a~^ ~}" l))

					; --- MAIN ---

(defun zot (the-time spec 
	    &key 
	    (loop-free nil) 
	    (transitions nil)
	    (negate-transitions nil)
	    (declarations nil)
	    (smt-solver :z3)
	    (logic :QF_UFIDL)
	    (smt-assumptions nil)
	    (no-loop nil)
	    (with-time t)
	    )


  (setf *smt-metric-futr-operators* nil)
  (setf *smt-metric-past-operators* nil)

  (setf *metric-operators* nil)
  
  (let ((formula (deneg (trio-to-ltl spec))))
    ;; (format t "~a" (if (eq with-time t)
    ;; 		       (with-time formula)
    ;; 		       formula))
    (setf *PROPS* (make-kripke the-time (if (eq with-time t)
    					    (with-time formula)
    					    formula)))

    (format t "This is SMT-Arithmetic-eeZot~%")    

    (let ((undeclared (set-difference (kripke-prop *PROPS*) declarations)))
      (if (and declarations undeclared)
	  (format t "Error: undeclared propositions ~S~%" undeclared)
					; Declarations are fine, so go on...
	  (progn 
	    (format t "~%1. processing formula")
	    (time (progn
		    (format t "~%Used boolean propositions: ~%~S~%" (kripke-prop *PROPS*))
		    (format t "~%Used timed arithmetic terms: ~%~S~%" (kripke-timed-arith-terms *PROPS*))
		    (format t "~%Time bound: ~S~%" the-time)
		    (let ((trans (if transitions 
				     (manage-transitions transitions the-time) 
				     nil)))
		      (setf (kripke-formula *PROPS*)
			    
			     (deneg (trio-to-ltl 
				     (nconc (list 'and)
					    (if no-loop
						`((not ,(the-loopEx) ))
						`(t))
					    (when *zot-item-constraints*
					      (manage-transitions (list *zot-item-constraints*) 
								  (1+ the-time)))
					    
					    
					    (the-big-formula (if (eq with-time t)
								 (with-time formula)
								 formula) loop-free no-loop)
					    (if (and trans negate-transitions)
						(list (list 'not (cons 'and trans)))
						trans)
					    )))))
		    
		    (format t "~%done processing formula~%")
		   
		    (with-open-file (k "./output.smt.txt" :direction :output :if-exists :supersede)    ;write the smt file

		    (format k "(benchmark b~%")

		    (case logic
		      (:QF_UFIDL
		       (format k ":logic QF_UFIDL~%"))
		      (:QF_RDL
		       (format k ":logic QF_RDL~%"))
		      (:QF_UFLIA
		       (format k ":logic QF_UFLIA~%"))
		      (:QF_AUFLIA
		       (format k ":logic QF_AUFLIA~%")))


		    (let ((*print-case* :downcase))
		      ;write all the propositional items
		      (maphash (lambda (key v) 
				 (if (consp key) 
				     (case (car key)
				       ((until release)
					(format k ":extrapreds (( ~s Int ))~%" v)
					(format k ":extrafuns (( i_eve_~s Int ))~%" v))			       
				       (t
					(if (not (arith-itemp key))
					    (format k ":extrapreds (( ~s Int ))~%" v)))) ;legacy for (-P- a)
				     (if (member key (kripke-prop *PROPS*))
					 (format k ":extrapreds (( ~s Int))~%" v)				 
					 (case key
					   ((**LOOPEX**) (format k ":extrapreds (( ~s ))~%" v))
					   ((**I_LOOP**) (format k ":extrafuns (( ~s Int))~%" v))				 
					   (t (format k ":extrapreds (( ~s Int))~%" v))))))
			       (kripke-list *PROPS*))

		      ;write all the arithmetic items
		      (maphash (lambda (key v) 
				 (declare (ignore v))
				 (let ((it (arith-itemp key)))
				   (if (not (null it)) ;(not (string= (get-item-codom it) "Bool")))
				       (format k (concatenate 'string ":extrafuns (( ~s " (prn-str (get-item-sig it)) " ))~%") key))))
			       *arith-items*)

		      ;write all the temporal arithmetic subfmlas
		      (maphash (lambda (key v) 
				   (if (consp key)
				       (case (car key)
					 ((next yesterday)
					  (format k ":extrafuns (( ~s Int Int))~%" v))
					 ((+ - * / mod)
					  (format k ":extrafuns (( ~s Int Int))~%" v))) ))
		
				       ;(format k (concatenate 'string ":extrafuns (( ~s " (prn-str (get-item-sig (arith-itemp key))) " ))~%") v)))))
			       (kripke-timed-arith *PROPS*))

		      (if (not (null smt-assumptions))
			  (format k (concatenate 'string ":assumption " smt-assumptions "~%"))))
		       
		    (format k ":formula ")    
		    (write (kripke-formula *PROPS*) :stream k :escape nil :case :downcase)
		    (format k ")")
		    )

	    (to-smt-and-back *PROPS* smt-solver)
		
	    )))))))

