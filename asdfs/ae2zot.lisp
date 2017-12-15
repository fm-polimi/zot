

;; ae2ZOT: a bounded satisfiability checker with past operators
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
; Options:
;   :gen-symbolic-val <t, nil>
;     default = t
;     if true, it imposes the periodicity on the symbolic valuations (i.e., the SVs at
;     k must be the same as those at loop-1)
;   :ipc-constraints <t, nil>
;     default = nil
;     if true, it generates the constraints that are necessary to guarantee the existence of
;     arithmetic models when the logic is IPC*
;   :periodic-terms <list>
;     default = empty list
;     it defines the list of arithmetic terms whose *values* must be periodic
;
; If the logic used is either QF_UFRDL or QF_UFLRA (i.e., if either the
; ":logic :QF_UFRDL" or ":logic :QF_UFLRA" options are used), then the plugin
; introduces the necessary adjustments to deal with real numbers, instead of
; integers
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
	   :QF_UFRDL
	   :QF_UFLIA
	   :QF_AUFLIA
	   :QF_UFLRA
	   :smt
	   :smt2
	   :smt-assumptions
	   :no-loop
	   :with-time)) 


(in-package :ae2zot) 

;(declaim (optimize (speed 3)(space 1)(safety 0)(debug 0)))
 


(defvar *real-constants* nil)

(defvar *discrete-counters* nil)


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
	     (in (car f) '(tempus not and or iff impl next until release since trigger zeta yesterday < > = <= >=)))))
	
(declaim (inline predicatep))
	
	
(defun pastp (f) 
  (and (consp f) 
	     (in (car f) '(yesterday trigger zeta))))
   

(declaim (inline pastp))


(defun LTL-formulap (f) 
  (and (consp f)        
	(in (car f) '(not and or iff impl next until release since trigger zeta yesterday))))

(declaim (inline LTL-formulap))


(defun arith-cop (f) 
  (and (consp f) 
       (in (car f) '(< > = <= >= mod))))

(declaim (inline arith-cop))

(defun arith-opp (f) 
  (and (consp f) 
       (in (car f) '(+ - * /))))

(declaim (inline arith-opp))


(defun arith-itemp (f) 
  (if (consp f) 
      (gethash (car f) *arith-items*)
      (gethash f *arith-items*)))


(declaim (inline arith-itemp))


(defun bool-fmlap (f) 
  (and (consp f) (in (car f) '(not and or impl iff))))


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

    ((and (consp f) (eq (car f) 'and) (null (cdr f))) 'true)
    ((and (consp f) (eq (car f) 'or)  (null (cdr f))) 'false)
 
    ((eq (car f) 'not)
			(let ((a (second f)))
       		(cond 
					 ((eq a t) 'false)
					 ((null a) 'true)	 
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
						 	((impl) `(and ,(deneg (second a)) ,(deneg `(not (third a)))))
						 	((iff)  `(or 
											(and ,(deneg (second a)) ,(deneg `(not ,(third a))))
											(and ,(deneg `(not ,(second a))) ,(deneg (third a)))))		
						 	((next) `(next ,(deneg `(not ,(second a)))))
						 	((until) `(release ,(deneg `(not ,(second a))) ,(deneg `(not ,(third a)))))
							((release) `(until ,(deneg `(not ,(second a))) ,(deneg `(not ,(third a)))))
						 	((yesterday) `(zeta ,(deneg `(not ,(second a)))))
						 	((zeta) `(yesterday ,(deneg `(not ,(second a)))))
						 	((since) `(trigger ,(deneg `(not ,(second a))) ,(deneg `(not ,(third a)))))	     
						 	((trigger) `(since ,(deneg `(not ,(second a))) ,(deneg `(not ,(third a)))))
						 	((<) `(>= ,(second a) ,(third a)))
						 	((>) `(<= ,(second a) ,(third a)))
							((<=)`(> ,(second a) ,(third a)))
							((>=)`(< ,(second a) ,(third a)))
						 	((!=)`(= ,(second a) ,(third a)))	 
						 	((=) `(or (< ,(second a) ,(third a)) (> ,(second a) ,(third a))))
		 				 	(t (error "deneg: bad arg ~S" (cons f a))))))))  

    ((and (consp f) (eq (car f) 'and) (null (cdr f))) 'true)
    ((and (consp f) (eq (car f) 'or)  (null (cdr f))) 'false) 
    (t
     (cons (car f) (mapcar #'deneg (cdr f))))))




(defun to-smt-dialect (f smt)
  (declare (optimize (debug 0)(safety 0)(speed 3)))
      (cond     
	    ((null f) 'false)
	    ((eq f t) 'true)   	    
	    ((or (symbolp f) (numberp f)) f)
	    ((or (arith-cop (car f)) (arith-opp (car f))) f)
	    (t
		  (case (car f)
			((impl)
			      (case smt
				    ((:smt)
					  `(implies ,(to-smt-dialect (second f) smt) ,(to-smt-dialect (third f) smt)))
				    ((:smt2)
					   `(=> ,(to-smt-dialect (second f) smt) ,(to-smt-dialect (third f) smt)))
				    (t
					  `(or ,(to-smt-dialect `(not ,(second f)) smt) ,(to-smt-dialect (third f) smt)))))

			((iff)
			      (case smt
				    ((:smt)
					  `(iff ,(to-smt-dialect (second f) smt) ,(to-smt-dialect (third f) smt)))
				    ((:smt2)
					  `(= ,(to-smt-dialect (second f) smt) ,(to-smt-dialect (third f) smt)))
				     (t
					  `(and 
						 (or ,(to-smt-dialect `(not ,(second f)) smt) ,(to-smt-dialect (third f) smt))
						 (or ,(to-smt-dialect (second f) smt) ,(to-smt-dialect `(not ,(third f)) smt))))))

			(t
			      (cons (car f) (mapcar #'(lambda(x)
							    (to-smt-dialect x smt)) (cdr f))))))))
			

 




(defvar *PROPS* nil) ; this will contain a Kripke


(defclass ae2zot-kripke (kripke) 
      ((the-arith :accessor kripke-arith :type list) ;all arithmetic formulae
	    (the-timed-arith :accessor kripke-timed-arith :type hash-table) ;just arithmetic formulae inside with-time
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
      (let ((a-kripke (make-instance 'ae2zot-kripke)))
	    (setf 
		  (kripke-k a-kripke)      k
		  (kripke-numvar a-kripke) 0
					; formula -> integer
		  (kripke-list a-kripke)   (make-hash-table :test #'equal)
					; integer -> formula
		  (kripke-back a-kripke)   (make-array (* k 10) :adjustable t)
		  (kripke-atomic-formulae a-kripke)   nil
		  (kripke-bool a-kripke)   nil
		  (kripke-futr a-kripke)   nil
		  (kripke-maximum a-kripke) 0
		  (kripke-past a-kripke)   nil
		  (kripke-arith a-kripke)  nil
		  (kripke-timed-arith-terms a-kripke) nil
		  (kripke-timed-arith a-kripke)  (make-hash-table :test #'equal)
		  (kripke-untimed-arith a-kripke)  (make-hash-table :test #'equal)
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

					; put in kripkr-IPC-vars (timed and untimed) all the arithmetical variables involved
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
							  (if (and (consp fm) (null sig))					
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
					       (t (error "1: I'm parsing a LTL formula: type inconsistency of non boolean ~S: ~s inside a LTL formula! ~%" fm tp)))

					; if fm is an AP, put fm in kripke-list
					 (if (symbolp fm)
					       (setf (gethash fm (kripke-list a-kripke)) 
						     (intern (format nil "~s" fm)))

					; else if fm is a LTL-formula
					       (if (LTL-formulap fm)	     
						     (setf (gethash fm (kripke-list a-kripke)) 
							   (intern (format nil "ZOT-P~s" (incf (kripke-numvar a-kripke)))))

					;otherwise rise an error!!						 
						     (error "2: I'm parsing a LTL formula: type inconsistency of non boolean ~S: ~s inside a LTL formula! ~%" fm tp))))))
		   
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
				    ((and or not iff impl) 
					  (push fm (kripke-bool a-kripke)))
				    ((< = > >= <=) ; if fm is a interpreted RELATION 
					  (progn
						(push fm (kripke-atomic-formulae a-kripke))
						(push fm (kripke-IPC-constraints a-kripke))))
				    ((next until release) 
					  (push fm (kripke-futr a-kripke)))
				    ((yesterday zeta since trigger)
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
				    ((next) 
					  (push fm (kripke-arith-futr a-kripke)))
				    ((yesterday)
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
				    ;; ((next) 
				    ;; 	  (push fm (kripke-arith-futr a-kripke)))
				    ;; ((yesterday)
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
				 ; IPC-terms does not cointain the starting variable
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
			  ;; (remove-if #'(lambda(x)              ----- BOH...PERCHE' ?!?!?
			  ;; 		     (eq (length x) 1))
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


(defmethod call ((kk ae2zot-kripke) obj the-time &rest other)
					; if *real-constants* are needed then update the type of 'obj' and 'the-time' when they are numbers
      (if (and *real-constants* (numberp the-time))
	    (setf the-time (float the-time)))
      (if (and *real-constants* (numberp obj))
	    (setf obj (float obj)))
      
      (cond 
	    ((eq 'false obj) 'false)
	    ((eq 'true obj) 'true)   
	    ((numberp obj) obj)
	    ((and (consp obj) (or (arith-cop (car obj)) (arith-opp (car obj)))) 
		  (list (gethash obj (kripke-timed-arith kk)) the-time)) 
	    (t 
		  (let ( (p (gethash obj (kripke-list kk))) 
			     (q (gethash obj (kripke-timed-arith kk))))      
			(cond 
					;*************************************************
					; the object han not been recognized...rise error!
					;*************************************************
			      ((and (null p) (null q)) 
				    (if (eq (get-item-sort (arith-itemp obj)) 'timed) 
					;if the item is a timed arithmetic term, so rise up an error!
					  (error "During Call process, item ~s not found in formula~%~%HINT: maybe you are using some predicates in the 'transitions:' which is not used in the 'formula' section. To fix this problem let initialize these predicates with a fake value (maybe in the instant 0...)~%" obj))
					;otherwise it is a non-timed term, so give it back!
				    obj)
					;************************
					; if the object is a term
					;************************
			      ((null p) 						   
				    (if (consp q)
					  (if other					
						(cons (car q) (append (mapcar #'(lambda (x)
					; if other is specified then call is evaluating a nested term. Therefore, inner terms should be marked with the time instant defined by other
										      (call *PROPS* x (car other)))
									    (cdr q))
								    (list the-time )))
						(cons (car q)
							  (append (mapcar #'(lambda (x)
										      (call *PROPS* x the-time))
									    (cdr q))
								    (list the-time))))

					
					  (if (and *discrete-counters* (member q *discrete-counters*))
						(intern (format nil "(to_real ~s)" (list q the-time)))
						(list q the-time))))
					;**********************************
					;if the object is an atomic formula
					;**********************************
			      ((null q)
				    (if (consp p)	
					  (progn 
					;(format t "cons ~s~%" p)
						(cons (car p) (append (mapcar #'(lambda (x)
										      (call *PROPS* x the-time))
									    (cdr p))
								    (list the-time))))
					  (progn 
					;(format t "non-cons ~s~%" p)
						(list p the-time)))))))))

	   
       
       


(defgeneric call-fmla-id (kk obj))

(defmethod call-fmla-id ((kk ae2zot-kripke) obj) 
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
				      (kripke-atomic-formulae *PROPS*) 
					;(remove-if-not (lambda (f) (eq (car f) 'next))
				      (kripke-futr *PROPS*);)
					;(remove-if-not (lambda (f) (eq (car f) 'yesterday))
				      (kripke-past *PROPS*));)
		       collect
			 `(iff ,(call *PROPS* fm i) 
			       ,(call *PROPS* fm j)))))))))
  




(defun LoopConstraints (gen-symbolic-val discrete-regions)
      (format t "define loop constraints~%")(force-output)
      (list
	    `(impl ,(the-loopEx) 
		   ,(cond 			  
			  ((eq *real-constants* t) (cons 'or (loop for i from 1 to (kripke-k *PROPS*) collect `(= ,(the-iloop) ,(float i)))))
			  (t `(and (< 0 ,(the-iloop)) (<= ,(the-iloop) ,(kripke-k *PROPS*))))))
			  

	    (list
		  'iff
		  (list 'and 
			`(<= ,(if *real-constants* 1.0 1) ,(the-iloop)) 
			`(<= ,(the-iloop) ,(if *real-constants* (float (kripke-k *PROPS*)) (kripke-k *PROPS*))))    
		  (append 
			(list 'and (the-loopEx))
			(nconc
				(if discrete-regions
					'(true)
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


					; enforce IPC-periodicity over intepreted RELATIONs in {<,>,<=,>=,=} w.r.t. the set of VARIABLES	     

		   (loop for partition in (kripke-related-IPC-vars *PROPS*) 
			 when gen-symbolic-val ; when generate-symbolic-valuation is true then build periodicity over symbolic valuation at position k and (i-loop)-1
			 append
			 (let* ( (symbolic-valuation-XY-points (get-symbolic-valuation-points partition)) 
				     (symbolic-valuation-points (remove-duplicates symbolic-valuation-XY-points)) )
			       
			       (loop for point1 in symbolic-valuation-points append
				     (loop for point2 in (remove point1 symbolic-valuation-points) append
					   `( (iff ,(make-IPC-constraint '< (call *PROPS* point1 `(- ,(the-iloop) ,(if *real-constants* 1.0 1) )) (call *PROPS* point2 `(- ,(the-iloop) ,(if *real-constants* 1.0 1) ))) 
						    ,(make-IPC-constraint '< (call *PROPS* point1 (kripke-k *PROPS*)) (call *PROPS* point2 (kripke-k *PROPS*))))
					       (iff ,(make-IPC-constraint '= (call *PROPS* point1 `(- ,(the-iloop) ,(if *real-constants* 1.0 1) )) (call *PROPS* point2 `(- ,(the-iloop) ,(if *real-constants* 1.0 1) ))) 
						     ,(make-IPC-constraint '= (call *PROPS* point1 (kripke-k *PROPS*)) (call *PROPS* point2 (kripke-k *PROPS*)))))))))))


					;enforce periodicity over APs and (uninterpreted) RELATIONs (over TERMs)
	     (loop for p in (kripke-atomic-formulae *PROPS*) 
				when (not (arith-cop p))
				collect
		  		 `(iff ,(call *PROPS* p `(- ,(the-iloop) ,(if *real-constants* 1.0 1))) ,(call *PROPS* p (kripke-k *PROPS*)))))))))



(defun gen-bool ()
      (format t "define LTL boolean connectives~%")(force-output)
      (loop for i from 0 to (1+ (kripke-k *PROPS*)) append
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
			      ((iff) (list 'iff (call *PROPS* (second fma) i) (call *PROPS* (third fma) i)))
					((impl) (list 'impl (call *PROPS* (second fma) i) (call *PROPS* (third fma) i))))))))

(defun gen-futr ()
      (format t "define LTL future formulae X, U, R~%")(force-output)
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
      (format t "define FO future formulae Xt~%")(force-output)
      (loop for i from 0 to (kripke-k *PROPS*) append    
	    (loop for fma in (kripke-arith-futr *PROPS*) collect
		  (list '=  
			(call *PROPS* fma i)  
			(case (car fma)
			      ((next)
				    (call *PROPS* (second fma) (1+ i) i)))))))
  


(defun LastStateFormula ()
  (format t "define last state contraints~%")(force-output)
  (let ((fma-list (append
		    (kripke-atomic-formulae *PROPS*)
		    (kripke-bool *PROPS*)
		    (kripke-futr *PROPS*)
		    (kripke-past *PROPS*))))

    (list 
     `(impl (not ,(the-loopEx))
	    ,(cons 'and 
		   (loop for fm in fma-list unless (pastp fm) collect 
			`(not ,(call *PROPS* fm (1+ (kripke-k *PROPS*)))))))

     
     `(impl ,(the-loopEx)
	    ,(cons 'and
		   (loop for fm in fma-list ;unless (arith-cop fm) 
			collect
			`(iff ,(call *PROPS* fm (the-iloop)) ,(call *PROPS* fm (1+ (kripke-k *PROPS*))))))))))
 

		  
		  
		    


(defun gen-evt-futr ()
  (format t "define eventuality for LTL future modalities U,R~%")(force-output)

  (labels(
	  (the-i-eve-fm (fm)
			`,(intern (format nil "ZOT-I-EVE_~s" fm))))
    
    (if (kripke-futr *PROPS*)	    
	(list
	 `(impl ,(the-loopEx)
		,(append `(and true)
			 (loop for fm in (kripke-futr *PROPS*) 
			       when (member (car fm) '(until release)) collect
			       (case (car fm)
				 ((until)			       
				  `(impl ,(call *PROPS* fm (kripke-k *PROPS*))
					 (and 				     
					  (<= ,(the-iloop) ,(the-i-eve-fm (call-fmla-id *PROPS* fm)))
					  (<= ,(the-i-eve-fm (call-fmla-id *PROPS* fm)) ,(if *real-constants* (float (kripke-k *PROPS*)) (kripke-k *PROPS*)))
					  ,(call *PROPS* (third fm) (the-i-eve-fm (call-fmla-id *PROPS* fm))))))
				 
				 ((release)			       
				  `(impl (not ,(call *PROPS* fm (kripke-k *PROPS*)))
					 (and 
					  (<= ,(the-iloop) ,(the-i-eve-fm (call-fmla-id *PROPS* fm)))
					  (<= ,(the-i-eve-fm (call-fmla-id *PROPS* fm)) ,(if *real-constants* (float (kripke-k *PROPS*)) (kripke-k *PROPS*)))
					  (not ,(call *PROPS* (third fm) (the-i-eve-fm (call-fmla-id *PROPS* fm)))))))))))))))
       
	    
(defun stabilize-constants ()
  ;(format t "define eventuality for LTL future modalities U,R~%")(force-output)

  (labels(
	  (the-i-eve-fm (fm)
			`,(intern (format nil "ZOT-I-EVE_~s" fm))))
    
    (if (and (kripke-futr *PROPS*) *real-constants*)
	(list (list 'and 
	       (cons 'or (loop for i from 0 to (kripke-k *PROPS*) collect
				`(= ,(the-iloop) ,(if *real-constants* (float i) i))))
	       (cons 'and (cons 't
		     (loop for fm in (kripke-futr *PROPS*) 
			   when (member (car fm) '(until release)) collect
			   (list 'or
				 `(> ,(the-i-eve-fm (call-fmla-id *PROPS* fm)) ,(if *real-constants* (float (kripke-k *PROPS*)) (kripke-k *PROPS*)))
				 (cons 'or (loop for i from 0 to (kripke-k *PROPS*) collect
				       `(= ,(the-i-eve-fm (call-fmla-id *PROPS* fm)) ,(if *real-constants* (float i) i)))))))))))))
				 



(defun gen-past1 ()
  (format t "gen-past1...~%")(force-output)
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
  (format t "gen-past2...~%")(force-output)
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
  (format t "define FO future formulae Yt~%")(force-output)
  (loop for i from 1 to (kripke-k *PROPS*) append    
	(loop for fma in (kripke-arith-past *PROPS*) collect
	      (list '=  
		    (call *PROPS* fma i)  
		    (case (car fma)
		      ((zeta yesterday)
		       (call *PROPS* (second fma) (1- i))))))))



(defun gen-i-atomic-formulae ()
  (format t "define for interpreted relations: <,>,=,<=,>= ~%")(force-output)
  (loop for i from 0 to (1+ (kripke-k *PROPS*)) append
	(loop for fma in (kripke-atomic-formulae *PROPS*) 
	      when (arith-cop fma)
	      collect
	      (list 'iff  
		    (call *PROPS* fma i)  		    
		    (cons (car fma) (mapcar #'(lambda (x)
						(call *PROPS* x i))
					    (cdr fma)))))))



(defun gen-arith-constraints ()
  (format t "define FO terms for +,-,*,/,mod ~%")(force-output)
  (loop for i from 0 to (1+ (kripke-k *PROPS*)) append    
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




(defun gen-existence-condition (ipc-constraints)
  (format t "define existence condition for Integers~%")(force-output)
  (when ipc-constraints
    (labels(       
	    (max-term-deep (term)
			   (if (consp term)
			       (+ 1 (max-term-deep (cadr term)))
			     0))  
	    (get-X-term (term i)
			(if (numberp term)
			    term
			  (if (> i 0)
			      (list 'next (get-X-term term (1- i)))
			    term)))
	    
	    (get-Y-term (term i)
			(if (numberp term)
			      term
			    (if (> i 0)
				(list 'yesterday (get-Y-term term (1- i)))
			      term)))

	    (the-f_xy (t1 t2)
		      `,(intern (format nil "ZOT-F_~s_~s" t1 t2)))

	    (the-tilde-f_xy (t1 t2)
			    `,(intern (format nil "ZOT-TILDE-F_~s_~s" t1 t2)))

	    (the-b_xy (t1 t2)
		      `,(intern (format nil "ZOT-B_~s_~s" t1 t2)))

	    (the-tilde-b_xy (t1 t2)
			    `,(intern (format nil "ZOT-TILDE-B_~s_~s" t1 t2)))

	    (the-bigF_xy (t1 t2)
			 `,(intern (format nil "ZOT-bigF_~s_~s" t1 t2)))

	    (the-tilde-bigF_xy (t1 t2)
			       `,(intern (format nil "ZOT-TILDE-bigF_~s_~s" t1 t2)))

	    (the-bigB_xy (t1 t2)
			 `,(intern (format nil "ZOT-bigB_~s_~s" t1 t2)))

	    (the-tilde-bigB_xy (t1 t2)
			       `,(intern (format nil "ZOT-TILDE-bigB_~s_~s" t1 t2)))

	    ;; (the-LF_x (t1)
	    ;; 	      `,(intern (format nil "ZOT-LF_~s" t1)))

	    ;; (the-tilde-LF_x (t1)
	    ;; 		    `,(intern (format nil "ZOT-TILDE-LF_~s" t1)))

	    ;; (the-LB_x (t1)
	    ;; 	      `,(intern (format nil "ZOT-LB_~s" t1)))

	    ;; (the-tilde-LB_x (t1)
	    ;; 		    `,(intern (format nil "ZOT-TILDE-LB_~s" t1)))


	    (the-i_xy (t1 t2)
		      `,(intern (format nil "ZOT-INDEX-I_~s_~s" t1 t2)))		   

	    ;; (remove-single (ls)
	    ;; 	 (if (and (consp ls) (not (cdr ls)))
	    ;; 	       nil
	    ;; 	       (list-check ls)))

	    (list-check (ls)
			(if (consp ls)				     
			    (if (cdr ls) ; length(ls)>1
				(let ((l (remove 'nil (mapcar #'list-check (cdr ls)))))
				  (if l
				      (cons (car ls) l)
				    nil)))					   
			  ls))


	    )

      (nconc
       
       (loop for partition in (kripke-related-IPC-vars *PROPS*) append
       	     (loop for term1 in partition append
       		   (loop for term2 in partition append
       			 (loop for j from 0 to (kripke-k *PROPS*) append   
       			       (loop for h from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) append
       				     (loop for m from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) append
       					   (if (<= h m) 
       					       (if (and (numberp term1) (numberp term2))
       						   `(
       						     (iff (,(the-f_xy term1 term2) ,j ,h ,m)
       							  ,(if (< term1 term2) 'true 'false))
       						     (iff (,(the-tilde-f_xy term1 term2) ,j ,h ,m) 
       							  ,(if (<= term1 term2) 'true 'false)))
       						 (if (and (= h m) (equal term1 term2))
       						     `(
       						       (iff (,(the-f_xy term1 term2) ,j ,h ,m) false)
       						       (iff (,(the-tilde-f_xy term1 term2) ,j ,h ,m) true))
       						   `(
       						     (iff (,(the-f_xy term1 term2) ,j ,h ,m)
       							  (< ,(if (>= h 0) (call *PROPS* (get-X-term term1 h) j) (call *PROPS* (get-Y-term term1 (- h)) j))
       							     ,(if (>= m 0) (call *PROPS* (get-X-term term2 m) j) (call *PROPS* (get-Y-term term2 (- m)) j))))
       						     (iff (,(the-tilde-f_xy term1 term2) ,j ,h ,m)
       							  (<= ,(if (>= h 0) (call *PROPS* (get-X-term term1 h) j) (call *PROPS* (get-Y-term term1 (- h)) j))
       							      ,(if (>= m 0) (call *PROPS* (get-X-term term2 m) j) (call *PROPS* (get-Y-term term2 (- m)) j)))))))
       					     `(
       					       (iff (,(the-f_xy term1 term2) ,j ,h ,m) false)
       					       (iff (,(the-tilde-f_xy term1 term2) ,j ,h ,m) false)))))))))

       
       
       
       (loop for partition in (kripke-related-IPC-vars *PROPS*) append
	     (loop for term1 in partition append
		   (loop for term2 in partition append
			 (loop for j from 0 to (kripke-k *PROPS*) append   
			       (loop for h from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) append
				     (loop for m from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) append
					   (if (>= h m) 
					       (if (and (numberp term1) (numberp term2))
						   `(
						     (iff (,(the-b_xy term1 term2) ,j ,h ,m)
							  ,(if (< term1 term2) 'true 'false))
						     (iff (,(the-tilde-b_xy term1 term2) ,j ,h ,m)
							  ,(if (<= term1 term2) 'true 'false)))
						 (if (and (= h m) (equal term1 term2))
						     `(
						       (iff (,(the-b_xy term1 term2) ,j ,h ,m) false)
						       (iff (,(the-tilde-b_xy term1 term2) ,j ,h ,m) true))
						   `(
						     (iff (,(the-b_xy term1 term2) ,j ,h ,m)
							  (< ,(if (>= h 0) (call *PROPS* (get-X-term term1 h) j) (call *PROPS* (get-Y-term term1 (- h)) j))
							     ,(if (>= m 0) (call *PROPS* (get-X-term term2 m) j) (call *PROPS* (get-Y-term term2 (- m)) j))))
						     (iff (,(the-tilde-b_xy term1 term2) ,j ,h ,m)
							  (<= ,(if (>= h 0) (call *PROPS* (get-X-term term1 h) j) (call *PROPS* (get-Y-term term1 (- h)) j))
							      ,(if (>= m 0) (call *PROPS* (get-X-term term2 m) j) (call *PROPS* (get-Y-term term2 (- m)) j)))))))
					     `(
					       (iff (,(the-b_xy term1 term2) ,j ,h ,m) false)
					       (iff (,(the-tilde-b_xy term1 term2) ,j ,h ,m) false)))))))))




					; DEFINITION OF bigXX in 0 and K
       (loop for partition in (kripke-related-IPC-vars *PROPS*) append
       	     (loop for term1 in partition append
       		   (loop for term2 in partition append
       			 (loop for h from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) append
       			       (loop for m from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) append
       				     `(
       				       (and
       					(iff (,(the-bigF_xy term1 term2) ,(kripke-k *PROPS*) ,h ,(kripke-k *PROPS*) ,m)
       					     (,(the-f_xy term1 term2) ,(kripke-k *PROPS*) ,h ,m))
       					(iff (,(the-tilde-bigF_xy term1 term2) ,(kripke-k *PROPS*) ,h ,(kripke-k *PROPS*) ,m)
       					     (,(the-tilde-f_xy term1 term2) ,(kripke-k *PROPS*) ,h ,m)))
       				       (and		  				       
       					(iff (,(the-bigB_xy term1 term2) 0 ,h 0 ,m)
       					     (,(the-b_xy term1 term2) 0 ,h ,m))
       					(iff (,(the-tilde-bigB_xy term1 term2) 0 ,h 0 ,m)
       					     (,(the-tilde-b_xy term1 term2) 0 ,h ,m)))))))))



					; *** CONSISTENCY (I) ***
       (loop for partition in (kripke-related-IPC-vars *PROPS*) append
	     (loop for term1 in partition append
		   (loop for term2 in partition 
					;when (not (and (numberp term1) (numberp term2)))
			 append
			 (loop for i from (kripke-k *PROPS*) downto 1 append
			       (loop for j from 0 to i append
				     (loop for l from (- j (+ (kripke-max-X *PROPS*) (kripke-max-Y *PROPS*))) to (1- j)
					   when (>= l 0)
					   append
					;(loop for h from (+ j (- l) (- (kripke-max-Y *PROPS*))) to (kripke-max-X *PROPS*) append
					   (loop for h from (- (kripke-max-Y *PROPS*)) to (+ (kripke-max-X *PROPS*) (- j) l) append									
						 (loop for m from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) append
						       `(
							 (iff (,(the-bigF_xy term1 term2) ,j ,h ,i ,m)
							      (,(the-bigF_xy term1 term2) ,l ,(+ h (- j l)) ,i ,m))
							 (iff (,(the-bigB_xy term1 term2) ,i ,m ,j ,h)
							      (,(the-bigB_xy term1 term2) ,i ,m ,l ,(+ h (- j l))))
							 (iff (,(the-tilde-bigF_xy term1 term2) ,j ,h ,i ,m)
							      (,(the-tilde-bigF_xy term1 term2) ,l ,(+ h (- j l)) ,i ,m))
							 (iff (,(the-tilde-bigB_xy term1 term2) ,i ,m ,j ,h)
							      (,(the-tilde-bigB_xy term1 term2) ,i ,m ,l ,(+ h (- j l)))))))))))))



					; *** CONSISTENCY (II) ***
       (loop for partition in (kripke-related-IPC-vars *PROPS*) append
	     (loop for term1 in partition append
		   (loop for term2 in partition 
					;when (not (and (numberp term1) (numberp term2)))
			 append
			 (loop for i from 0 to (1- (kripke-k *PROPS*)) append
			       (loop for j from (kripke-k *PROPS*) downto i append
				     (loop for l from (1+ j) to (+ j (+ (kripke-max-X *PROPS*) (kripke-max-Y *PROPS*)))
					   when (<= l (kripke-k *PROPS*))
					   append
					;(loop for h from (- (kripke-max-Y *PROPS*)) to (+ (kripke-max-X *PROPS*) (- j) l) append
					   (loop for h from (+ l (- j) (- (kripke-max-Y *PROPS*))) to (kripke-max-X *PROPS*) append									
						 (loop for m from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) append
						       `(
							 (iff (,(the-bigF_xy term1 term2) ,i ,m ,j ,h)
							      (,(the-bigF_xy term1 term2) ,i ,m ,l ,(- h (- l j))))
							 (iff (,(the-bigB_xy term1 term2) ,j ,h ,i ,m)
							      (,(the-bigB_xy term1 term2) ,l ,(- h (- l j)) ,i ,m))
							 (iff (,(the-tilde-bigF_xy term1 term2) ,i ,m ,j ,h)
							      (,(the-tilde-bigF_xy term1 term2) ,i ,m ,l ,(- h (- l j))))
							 (iff (,(the-tilde-bigB_xy term1 term2) ,j ,h ,i ,m)
							      (,(the-tilde-bigB_xy term1 term2) ,l ,(- h (- l j)),i ,m)))))))))))
       


   

					; bigF/tilde-bigF - bigB/tilde-bigB DEFINITION
					;(remove 'nil
       (loop for partition in (kripke-related-IPC-vars *PROPS*) append
	     (loop for term1 in partition append
		   (loop for term2 in partition append	    	  			  
					;when (not (and (numberp term1) (numberp term2))) append
			 (loop for i from 0 to (kripke-k *PROPS*) append
			       (loop for j from 0 to (kripke-k *PROPS*) append						      
				     (loop for h from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) append							    						
					   (loop for m from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) append
						 (let ((shift (- (+ j h) (+ i m))))
						   (if (<= shift 0)
						       (if (= j i)							      
							   `(
							     (iff (,(the-bigF_xy term1 term2) ,j ,h ,i ,m) (,(the-f_xy term1 term2) ,j ,h ,m))
							     (iff (,(the-tilde-bigF_xy term1 term2) ,j ,h ,i ,m) (,(the-tilde-f_xy term1 term2) ,j ,h ,m)))
							 (if (< i j)
							     `(
							       (iff (,(the-bigF_xy term1 term2) ,j ,h ,i ,m) false)										     
							       (iff (,(the-tilde-bigF_xy term1 term2) ,j ,h ,i ,m) false))
							   (if (and (numberp term1) (numberp term2))
							       `(
								 (iff (,(the-bigF_xy term1 term2) ,j ,h ,i ,m)
								      ,(if (< term1 term2) 'true 'false))
								 (iff (,(the-tilde-bigF_xy term1 term2) ,j ,h ,i ,m)
								      ,(if (<= term1 term2) 'true 'false)))
							     (if (and (> (abs shift) (+ (kripke-max-Y *PROPS*) (kripke-max-X *PROPS*))) (= h (- (kripke-max-Y *PROPS*))))
								 `(
								   (iff (,(the-bigF_xy term1 term2) ,j ,h ,i ,m)
									,(list-check 
									  (cons 'or
										(loop for term3 in partition collect
										      (cons 'or
											    (loop for u from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) 
												  when (or (/= h u) (not (eq term1 term3)))
												  collect
												  `(or
												    (and 
												     (,(the-f_xy term1 term3) ,j ,h ,u)
												     (,(the-tilde-bigF_xy term3 term2) ,j ,u ,i ,m))
												    (and 
												     (,(the-tilde-f_xy term1 term3) ,j ,h ,u)
												     (,(the-bigF_xy term3 term2) ,j ,u ,i ,m)))))))))
								   
								   (iff (,(the-tilde-bigF_xy term1 term2) ,j ,h ,i ,m)
									,(list-check
									  (cons 'or
										(loop for term3 in partition collect
										      (cons 'or
											    (loop for u from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) 
												  when (or (/= h u) (not (eq term1 term3)))
												  collect
												  `(and 
												    (,(the-tilde-f_xy term1 term3) ,j ,h ,u)
												    (,(the-tilde-bigF_xy term3 term2) ,j ,u ,i ,m))
												  )))))))))))
						     (if (> shift 0)
							 `(
							   (iff (,(the-bigF_xy term1 term2) ,j ,h ,i ,m) false)										     
							   (iff (,(the-tilde-bigF_xy term1 term2) ,j ,h ,i ,m) false))))))))))))


					;(remove 'nil
       (loop for partition in (kripke-related-IPC-vars *PROPS*) append
	     (loop for term1 in partition append
		   (loop for term2 in partition append	    	  			  
					;when (not (and (numberp term1) (numberp term2))) append
			 (loop for i from 0 to (kripke-k *PROPS*) append
			       (loop for j from 0 to (kripke-k *PROPS*) append						      
				     (loop for h from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) append							    						
					   (loop for m from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) append
						 (let ((shift (- (+ j h) (+ i m))))
						   (if (>= shift 0)
						       (if (= j i)							      
							   `(
							     (iff (,(the-bigB_xy term1 term2) ,j ,h ,i ,m) (,(the-b_xy term1 term2) ,j ,h ,m))
							     (iff (,(the-tilde-bigB_xy term1 term2) ,j ,h ,i ,m) (,(the-tilde-b_xy term1 term2) ,j ,h ,m)))
							 (if (> i j)
							     `(
							       (iff (,(the-bigB_xy term1 term2) ,j ,h ,i ,m) false)										     
							       (iff (,(the-tilde-bigB_xy term1 term2) ,j ,h ,i ,m) false))
							   (if (and (numberp term1) (numberp term2))
							       `(
								 (iff (,(the-bigB_xy term1 term2) ,j ,h ,i ,m)
								      ,(if (< term1 term2) 'true 'false))
								 (iff (,(the-tilde-bigB_xy term1 term2) ,j ,h ,i ,m)
								      ,(if (<= term1 term2) 'true 'false)))
							     (if (and (> (abs shift) (+ (kripke-max-Y *PROPS*) (kripke-max-X *PROPS*))) (= h (kripke-max-X *PROPS*)))
								 `(
								   (iff (,(the-bigB_xy term1 term2) ,j ,h ,i ,m)
									,(list-check
									  (cons 'or
										(loop for term3 in partition collect
										      (cons 'or
											    (loop for u from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) 
												  when (or (/= h u) (not (eq term1 term3)))
												  collect
												  `(or
												    (and 
												     (,(the-b_xy term1 term3) ,j ,h ,u)
												     (,(the-tilde-bigB_xy term3 term2) ,j ,u ,i ,m))
												    (and 
												     (,(the-tilde-b_xy term1 term3) ,j ,h ,u)
												     (,(the-bigB_xy term3 term2) ,j ,u ,i ,m)))))))))
								   
								   (iff (,(the-tilde-bigB_xy term1 term2) ,j ,h ,i ,m)
									,(list-check
									  (cons 'or
										(loop for term3 in partition collect
										      (cons 'or
											    (loop for u from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) 
												  when (or (/= h u) (not (eq term1 term3)))
												  collect
												  `(and 
												    (,(the-tilde-b_xy term1 term3) ,j ,h ,u)
												    (,(the-tilde-bigB_xy term3 term2) ,j ,u ,i ,m))
												  )))))))))))
						     (if (< shift 0)
							 `(
							   (iff (,(the-bigB_xy term1 term2) ,j ,h ,i ,m) false)										     
							   (iff (,(the-tilde-bigB_xy term1 term2) ,j ,h ,i ,m) false))))))))))))




       
       ;; 					; LOOP
       ;; (loop for partition in (kripke-related-IPC-vars *PROPS*) append
       ;; 	     (loop for term1 in partition append  
       ;; 		   (loop for h from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) append	  
       ;; 			 `(
       ;; 			   (iff (,(the-LF_x term1) ,h)
       ;; 				(,(the-bigF_xy term1 term1) (- ,(the-iloop) 1) ,h ,(kripke-k *PROPS*) ,h))
       ;; 			   (iff (,(the-tilde-LF_x term1) ,h)
       ;; 				(,(the-tilde-bigF_xy term1 term1) (- ,(the-iloop) 1) ,h ,(kripke-k *PROPS*) ,h))
       ;; 			   (iff (,(the-LB_x term1) ,h)
       ;; 				(,(the-bigB_xy term1 term1) ,(kripke-k *PROPS*) ,h (- ,(the-iloop) 1) ,h))
       ;; 			   (iff (,(the-tilde-LB_x term1) ,h)
       ;; 				(,(the-tilde-bigB_xy term1 term1) ,(kripke-k *PROPS*) ,h (- ,(the-iloop) 1) ,h))))))
       ;; 					; end LOOP

	    (loop for partition in (kripke-related-IPC-vars *PROPS*) append
	    	  (loop for term1 in partition append
	    		(loop for term3 in partition 
	    				when (and (not (equal term1 term3)) (not (and (numberp term1) (numberp term3))))
	    		      collect
	    		      `(and (<= ,(the-iloop) ,(the-i_xy term1 term3)) (<= ,(the-i_xy term1 term3) ,(kripke-k *PROPS*))))))
		  
       

	  				; *** EXISTENCE CONDITION with EXISTS *** (correct) - better for output
       (loop for partition in (kripke-related-IPC-vars *PROPS*) collect
	     `(not
		    ,(cons 'or
			 (loop for term1 in partition append
			       (loop for term3 in partition 
				     when (not (equal term1 term3)) append
					   (loop for term2 in partition append
						 (loop for term4 in partition 
					when (and (not (equal term1 term3)) (not (and (numberp term1) (numberp term3))))
						       append	    			      					      
								       (loop for h from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) append	  								  
									     (loop for n from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) append
										   (loop for hp from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) append		
											 (loop for np from (- (kripke-max-Y *PROPS*)) to (kripke-max-X *PROPS*) collect
											       `(or
												 (and
												  ;(,(the-tilde-LF_x term1) ,h)
												  (,(the-tilde-bigF_xy term1 term2) (- ,(the-iloop) 1) ,h ,(the-i_xy term1 term3) ,n)
												  (,(the-tilde-bigF_xy term2 term1) ,(the-i_xy term1 term3) ,n ,(kripke-k *PROPS*) ,h)
												  ;(,(the-LB_x term3) ,hp)
												  ,(cons 'or	  														    
													 `(
													   (and 
													    (,(the-tilde-bigB_xy term3 term4) ,(kripke-k *PROPS*) ,hp ,(the-i_xy term1 term3) ,np)
													    (,(the-bigB_xy term4 term3) ,(the-i_xy term1 term3) ,np (- ,(the-iloop) 1) ,hp))
													   (and 
													    (,(the-bigB_xy term3 term4) ,(kripke-k *PROPS*) ,hp ,(the-i_xy term1 term3) ,np)
													    (,(the-tilde-bigB_xy term4 term3) ,(the-i_xy term1 term3) ,np (- ,(the-iloop) 1) ,hp))))
												  (or
												   (,(the-f_xy term2 term4) ,(the-i_xy term1 term3) ,n ,np)
												   (,(the-b_xy term2 term4) ,(the-i_xy term1 term3) ,n ,np)))
												 (and 
												  ;(,(the-tilde-LB_x term1) ,h)
												  (,(the-tilde-bigB_xy term1 term2) ,(kripke-k *PROPS*) ,h ,(the-i_xy term1 term3) ,n)
												  (,(the-tilde-bigB_xy term2 term1) ,(the-i_xy term1 term3) ,n (- ,(the-iloop) 1) ,h)
												  ;(,(the-LF_x term3) ,hp)
												  ,(cons 'or	  														   
													 `(
													   (and 
													    (,(the-tilde-bigF_xy term3 term4) (- ,(the-iloop) 1) ,hp ,(the-i_xy term1 term3) ,np)
													    (,(the-bigF_xy term4 term3) ,(the-i_xy term1 term3) ,np ,(kripke-k *PROPS*) ,hp)) 
													   (and 
													    (,(the-bigF_xy term3 term4) (- ,(the-iloop) 1) ,hp ,(the-i_xy term1 term3) ,np)
													    (,(the-tilde-bigF_xy term4 term3) ,(the-i_xy term1 term3) ,np ,(kripke-k *PROPS*) ,hp))))
												  (or 
												   (,(the-f_xy term4 term2) ,(the-i_xy term1 term3) ,np ,n)
												   (,(the-b_xy term4 term2) ,(the-i_xy term1 term3) ,np ,n)))
												 ))))))))))))	




       ))))
										     


(defun gen-periodic-arith-terms (periodic-arith-terms)
  (if periodic-arith-terms
					;(format t "define arithmetic periodic terms~%")(force-output)
      (loop for term in periodic-arith-terms collect
	    `(= ,(call *PROPS* term (the-iloop)) ,(call *PROPS* term (1+ (kripke-k *PROPS*)))))))



(defun gen-regions (bound discrete-regions parametric-regions discrete-counters signals no-periodic-regions)
	(format t "Define regions")(force-output)

  (if (> bound 0)
	; ------------------------------------------------------------------------------
	;TODO:for discrete regions there is no check for discrete-counters and signals |
	; ------------------------------------------------------------------------------	
	(if discrete-regions
		; discrete regions
		(append
			(loop for clock-x being the hash-keys of *arith-items*
				 using (hash-value value)
				 append
				 (nconc 

				  ; Build tyhe periodicity of regions between (i_loop - 1) and K

					(list `(iff (= ,(call *PROPS* clock-x `(- ,(the-iloop) 1)) 0) (= ,(call *PROPS* clock-x (kripke-k *PROPS*)) 0)))
					(list `(iff (< ,(call *PROPS* clock-x `(- ,(the-iloop) 1)) 0) (< ,(call *PROPS* clock-x (kripke-k *PROPS*)) 0)))

				  (loop for i from 1 to bound append
					`(
						(iff (= ,(call *PROPS* clock-x `(- ,(the-iloop) 1)) ,i) (= ,(call *PROPS* clock-x (kripke-k *PROPS*)) ,i))
							(iff (< ,(call *PROPS* clock-x `(- ,(the-iloop) 1)) ,i) (< ,(call *PROPS* clock-x (kripke-k *PROPS*)) ,i))
						(iff (< ,i ,(call *PROPS* clock-x `(- ,(the-iloop) 1))) (< ,i ,(call *PROPS* clock-x (kripke-k *PROPS*))))))

				 ; define clocks behaviour
				  (loop for i from 1 to (kripke-k *PROPS*) collect
					`(or
						    (= ,(call *PROPS* clock-x (1+ i)) 0)
						    (= ,(call *PROPS* clock-x (1+ i)) (+ ,(call *PROPS* clock-x i) (delta ,i)))))))

			; zot-delta is always positive
			   (loop for i from 1 to (1+ (kripke-k *PROPS*)) collect
				 `(> (delta ,i) 0))) 

		
		; else there are no discrete clocks
		(if no-periodic-regions
		; if no-parametric-regions then create only increment constraints and no periodicity formulae on regions 
			(append
				(loop for clock-x being the hash-keys of *arith-items*
				using (hash-value value)
				when (not (member clock-x discrete-counters))
				when (not (member clock-x signals))
				append
					(nconc
					  ; define clocks behaviour
						(loop for i from 1 to (kripke-k *PROPS*) collect
							`(or
								(= ,(call *PROPS* clock-x (float (1+ i))) ,(float 0))
								(= ,(call *PROPS* clock-x (float (1+ i))) (+ ,(call *PROPS* clock-x (float i)) (delta ,(float i))))))
							  
						; zot-delta is always positive
						(loop for i from 0 to (1+ (kripke-k *PROPS*)) collect
							`(> (delta ,(float i)) ,(float 0))))))
		; else
			; if regions are parametric then create regions based on an existentially quantified constant
			(if parametric-regions	
			  (append	
				 (loop 
					with evaluated-clocks-list = (list)
					for clock-x being the hash-keys of *arith-items*	
			
					when (not (member clock-x discrete-counters))
					when (not (member clock-x signals))
					do (setf evaluated-clocks-list (append evaluated-clocks-list (list clock-x)))

					when (not (member clock-x discrete-counters))
					when (not (member clock-x signals))
					append
						(let ((v (intern (format nil "(to_real zot-c_~S)" clock-x)))
								(v1 (intern (format nil "(+ (to_real zot-c_~S) 1.0)" clock-x))))
				
						(list 
							`(or
								(and
									(or
										(and (= ,(call *PROPS* clock-x (the-iloop)) ,v) (= ,(call *PROPS* clock-x (float (1+ (kripke-k *PROPS*)))) ,v))
										(and
												(< ,v ,(call *PROPS* clock-x (the-iloop)))
												(< ,(call *PROPS* clock-x (the-iloop)) ,v1)

												(< ,v ,(call *PROPS* clock-x (float (1+ (kripke-k *PROPS*)))))
												(< ,(call *PROPS* clock-x (float (1+ (kripke-k *PROPS*)))) ,v1)))

									(<= ,(float 0) ,v) 
									(< ,v ,(float bound)))

								(and (= ,(call *PROPS* clock-x (the-iloop)) ,(float bound)) (= ,(call *PROPS* clock-x (float (1+ (kripke-k *PROPS*)))) ,(float bound)))
								(and 
									(< ,(float bound) ,(call *PROPS* clock-x (the-iloop)))
									(< ,(float bound) ,(call *PROPS* clock-x (float (1+ (kripke-k *PROPS*)))))))
					
							;define diagonal constraints
							(cons 'and (cons 't
								(loop
									for clock-y being the hash-keys of *arith-items*
									when (not (eq clock-y clock-x))
									when (not (member clock-y evaluated-clocks-list))
									when (not (member clock-y discrete-counters))
									when (not (member clock-y signals))
									collect
										(let ( (h (intern (format nil "(to_real zot-c_~S)" clock-y))) )					  		

												`(impl
													(and (< ,(call *PROPS* clock-x (float (1+ (kripke-k *PROPS*)))) ,(float bound)) (< ,(call *PROPS* clock-y (float (1+ (kripke-k *PROPS*)))) ,(float bound)))
													(or
														(and 
															(=
																(- ,(call *PROPS* clock-x (the-iloop)) ,v) 
																(- ,(call *PROPS* clock-y (the-iloop)) ,h))
															(= 
																(- ,(call *PROPS* clock-x (float (1+ (kripke-k *PROPS*)))) ,v)
																(- ,(call *PROPS* clock-y (float (1+ (kripke-k *PROPS*)))) ,h)))

														(and 
															(< 
																(- ,(call *PROPS* clock-x (the-iloop)) ,v) 
																(- ,(call *PROPS* clock-y (the-iloop)) ,h))
															(< 
																(- ,(call *PROPS* clock-x (float (1+ (kripke-k *PROPS*)))) ,v)
																(- ,(call *PROPS* clock-y (float (1+ (kripke-k *PROPS*)))) ,h)))

														(and 
															(< 
																(- ,(call *PROPS* clock-y (the-iloop)) ,h) 
																(- ,(call *PROPS* clock-x (the-iloop)) ,v))
															(< 
																(- ,(call *PROPS* clock-y (float (1+ (kripke-k *PROPS*)))) ,v)
																(- ,(call *PROPS* clock-x (float (1+ (kripke-k *PROPS*)))) ,h))))))))) 



						;define clocks behaviour
						(cons 'and
							; clock(i+1) = clock(i) + delta(i) forall i in [0,k]
							(loop for i from 0 to (kripke-k *PROPS*) collect
								`(or
									(= ,(call *PROPS* clock-x (float (1+ i))) ,(float 0))
									(= ,(call *PROPS* clock-x (float (1+ i))) (+ ,(call *PROPS* clock-x (float i)) (delta ,(float i)))))))))

						)

						; zot-delta is always positive
				 		(loop for i from 0 to (1+ (kripke-k *PROPS*)) collect
							`(> (delta ,(float i)) ,(float 0)))) 
	 

				; else no parametric regions
				(append
				  (loop for clock-x being the hash-keys of *arith-items*
					using (hash-value value)
					when (not (member clock-x discrete-counters))
					when (not (member clock-x signals))
					append
					(nconc 

					  ; Build tyhe periodicity of regions between (i_loop - 1) and K

						(list `(iff (= ,(call *PROPS* clock-x `(- ,(the-iloop) ,(float 1))) ,(float 0)) (= ,(call *PROPS* clock-x (float (kripke-k *PROPS*))) ,(float 0))))
						(list `(iff (< ,(call *PROPS* clock-x `(- ,(the-iloop) ,(float 1))) ,(float 0)) (< ,(call *PROPS* clock-x (float (kripke-k *PROPS*))) ,(float 0))))

					  (loop for i from 1 to bound append
						`(
							(iff (= ,(call *PROPS* clock-x `(- ,(the-iloop) ,(float 1))) ,(float i)) (= ,(call *PROPS* clock-x (float (kripke-k *PROPS*))) ,(float i)))
								(iff (< ,(call *PROPS* clock-x `(- ,(the-iloop) ,(float 1))) ,(float i)) (< ,(call *PROPS* clock-x (float (kripke-k *PROPS*))) ,(float i)))
							(iff (< ,(float i) ,(call *PROPS* clock-x `(- ,(the-iloop) ,(float 1)))) (< ,(float i) ,(call *PROPS* clock-x (float (kripke-k *PROPS*)))))))
						  

						(loop for clock-y being the hash-keys of *arith-items*
						using (hash-value value)
						append
							(loop for d from 0 to bound append
								`(
								(iff 
											(= ,(call *PROPS* clock-x `(- ,(the-iloop) ,(float 1))) (+ ,(call *PROPS* clock-y `(- ,(the-iloop) ,(float 1))) ,(float d))) 
											(= ,(call *PROPS* clock-x (float (kripke-k *PROPS*))) (+ ,(call *PROPS* clock-y (float (kripke-k *PROPS*))) ,(float d))))
								(iff 
											(= ,(call *PROPS* clock-y `(- ,(the-iloop) ,(float 1))) (+ ,(call *PROPS* clock-x `(- ,(the-iloop) ,(float 1))) ,(float d))) 
											(= ,(call *PROPS* clock-y (float (kripke-k *PROPS*))) (+ ,(call *PROPS* clock-x (float (kripke-k *PROPS*))) ,(float d))))
								(iff 
											(< ,(call *PROPS* clock-x `(- ,(the-iloop) ,(float 1))) (+ ,(call *PROPS* clock-y `(- ,(the-iloop) ,(float 1))) ,(float d))) 
											(< ,(call *PROPS* clock-x (float (kripke-k *PROPS*))) (+ ,(call *PROPS* clock-y (float (kripke-k *PROPS*))) ,(float d))))
								(iff 
											(< ,(call *PROPS* clock-y `(- ,(the-iloop) ,(float 1))) (+ ,(call *PROPS* clock-x `(- ,(the-iloop) ,(float 1))) ,(float d))) 
											(< ,(call *PROPS* clock-y (float (kripke-k *PROPS*))) (+ ,(call *PROPS* clock-x (float (kripke-k *PROPS*))) ,(float d)))))))



					  ; Build tyhe periodicity of regions between i_loop and K+1

					#|	(list `(iff (= ,(call *PROPS* clock-x (the-iloop)) ,(float 0)) (= ,(call *PROPS* clock-x (float (1+ (kripke-k *PROPS*)))) ,(float 0))))
						(list `(iff (< ,(call *PROPS* clock-x (the-iloop)) ,(float 0)) (< ,(call *PROPS* clock-x (float (1+ (kripke-k *PROPS*)))) ,(float 0))))

					  (loop for i from 1 to bound append
						`(
								(iff (= ,(call *PROPS* clock-x (the-iloop)) ,(float i)) (= ,(call *PROPS* clock-x (float (1+ (kripke-k *PROPS*)))) ,(float i)))
								(iff (< ,(call *PROPS* clock-x (the-iloop)) ,(float i)) (< ,(call *PROPS* clock-x (float (1+ (kripke-k *PROPS*)))) ,(float i)))
								(iff (< ,(float i) ,(call *PROPS* clock-x (the-iloop))) (< ,(float i) ,(call *PROPS* clock-x (float (1+ (kripke-k *PROPS*))))))))  

						(loop for clock-y being the hash-keys of *arith-items*
						using (hash-value value)
						when (not (member clock-y discrete-counters))
						when (not (member clock-y signals))					
						append
							(loop for d from 0 to bound append
								`(
								(iff 
											(= ,(call *PROPS* clock-x (the-iloop)) (+ ,(call *PROPS* clock-y (the-iloop)) ,(float d))) 
											(= ,(call *PROPS* clock-x (float (1+ (kripke-k *PROPS*)))) (+ ,(call *PROPS* clock-y (float (1+ (kripke-k *PROPS*)))) ,(float d))))
								(iff 
											(= ,(call *PROPS* clock-y (the-iloop)) (+ ,(call *PROPS* clock-x (the-iloop)) ,(float d))) 
											(= ,(call *PROPS* clock-y (float (1+ (kripke-k *PROPS*)))) (+ ,(call *PROPS* clock-x (float (1+ (kripke-k *PROPS*)))) ,(float d))))
								(iff 
											(< ,(call *PROPS* clock-x (the-iloop)) (+ ,(call *PROPS* clock-y (the-iloop)) ,(float d))) 
											(< ,(call *PROPS* clock-x (float (1+ (kripke-k *PROPS*)))) (+ ,(call *PROPS* clock-y (float (1+ (kripke-k *PROPS*)))) ,(float d))))
								(iff 
											(< ,(call *PROPS* clock-y (the-iloop)) (+ ,(call *PROPS* clock-x (the-iloop)) ,(float d))) 
											(< ,(call *PROPS* clock-y (float (1+ (kripke-k *PROPS*)))) (+ ,(call *PROPS* clock-x (float (1+ (kripke-k *PROPS*)))) ,(float d)))))))

						|#
				
		

					  ; define clocks behaviour
					  (loop for i from 1 to (kripke-k *PROPS*) collect
						`(or
								(= ,(call *PROPS* clock-x (float (1+ i))) ,(float 0))
								(= ,(call *PROPS* clock-x (float (1+ i))) (+ ,(call *PROPS* clock-x (float i)) (delta ,(float i))))))))
				  
				 	 ; zot-delta is always positive
				 	 (loop for i from 1 to (1+ (kripke-k *PROPS*)) collect
						`(> (delta ,(float i)) ,(float 0)))) ) )

		; else bound <= 0 then all arithmetical items are considered as discrete or dense counters
		)
	)
)




(defun the-big-formula (fma loop-free no-loop periodic-arith-terms gen-symbolic-val ipc-constraints bound discrete-regions parametric-regions discrete-counters signals no-periodic-regions)      
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
       
      (nconc
			(if no-loop
				`((not ,(the-loopEx))))
			(LoopConstraints gen-symbolic-val discrete-regions)
			(gen-bool)
			(gen-futr)		       
			(LastStateFormula)
			(gen-evt-futr)
			(gen-past1)
			(gen-past2)	    
			(gen-arith-futr)
			(gen-arith-past)
			(gen-i-atomic-formulae)
			(gen-arith-constraints)
			(gen-existence-condition ipc-constraints)
			(gen-periodic-arith-terms periodic-arith-terms)
			(stabilize-constants) 
			(gen-regions bound discrete-regions parametric-regions discrete-counters signals no-periodic-regions)))))



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



(defun build-smt-file (formula-structure smt-assumptions parametric-regions discrete-regions over-clocks ipc-constraints discrete-counters signals logic smt-dialect no-periodic-regions)

  (with-open-file (k "./output.smt.txt" :direction :output :if-exists :supersede)  
		(with-open-file (dict "./output.dict.txt" :direction :output :if-exists :supersede)

			(case smt-dialect
			  	((:smt) (format k "(benchmark b~%"))
				((:smt2) 't))		  
			

			(let ( (l (case logic
			 				((:QF_UFIDL) "QF_UFIDL")
			 				((:QF_UFRDL) "QF_UFRDL")
			 				((:QF_UFLIA) "QF_UFLIA")
			 				((:QF_UFLRA) "QF_UFLRA")
			  				((:QF_AUFLIA) "QF_AUFLIA"))))

			(case smt-dialect
			  	((:smt) (format k ":logic ~a~%" l))
				((:smt2) t) ;(format k "(set-logic ~a)~%" l))
				) )


		  (let (  (*print-case* :downcase)
				  	 (*print-pretty* t)
			 		 (time-domain (if (or (eq logic :QF_UFRDL) (eq logic :QF_UFLRA))
										*real*
					 					*int*)) )
			;write all the propositional items
			 (maphash (lambda (key v)
					(format dict "~s -> ~s~%" v key)
				   (if (consp key) 
					(case (car key)
					  ((until release)
							(case smt-dialect
								((:smt)
					   				(format k ":extrapreds (( ~s ~a ))~%" v time-domain)
					   				(format k ":extrafuns (( zot-i-eve_~s ~a ))~%" v time-domain))
								((:smt2) 
					   				(format k "(declare-fun ~s ( ~a ) Bool )~%" v time-domain)
					   				(format k "(declare-fun zot-i-eve_~s () ~a )~%" v time-domain))))
					  (t
					  	 (if (not (arith-itemp key))
							(case smt-dialect
								((:smt) (format k ":extrapreds (( ~s ~a ))~%" v time-domain)) ;legacy for (-P- a)
								((:smt2) (format k "(declare-fun ~s ( ~a ) Bool )~%" v time-domain))))))
				 (if (member key (kripke-atomic-formulae formula-structure))
						(case smt-dialect
					  		((:smt) (format k ":extrapreds (( ~s ~a ))~%" v time-domain))
							((:smt2) (format k "(declare-fun ~s ( ~a ) Bool )~%" v time-domain)))
					(case key
					  ((**LOOPEX**) (case smt-dialect 
											((:smt) (format k ":extrapreds (( ~s ))~%" v))
											((:smt2) (format k "(declare-fun ~s () Bool )~%" v))))
					  ((**I_LOOP**) (case smt-dialect 
											((:smt) (format k ":extrafuns (( ~s ~a ))~%" v time-domain))
											((:smt2) (format k "(declare-fun ~s () ~a )~%" v time-domain))))
					  (t (case smt-dialect
								((:smt) (format k ":extrapreds (( ~s ~a ))~%" v time-domain))
								((:smt2)  (format k "(declare-fun ~s ( ~a ) Bool )~%" v time-domain))))))))
				  (kripke-list formula-structure))

			;write all the arithmetic items
			 (maphash (lambda (key v)
				    (declare (ignore v))
				    (let* (  (it (arith-itemp key))
							    (sig (get-item-sig it)) 
								 (time-d (if (eq (get-item-sort it) 'timed) time-domain "")) )
					 
					 (if it 
						(case smt-dialect
					 		((:smt)
					 				(format k ":extrafuns (( ~s ~A ~A  ))~%" key time-d (string-trim "()" (format nil "~a" sig))))
					 		((:smt2) 
					 				(format k "(declare-fun ~s ( ~A ) ~A )~%" key time-d (string-trim "()" (format nil "~a" sig))))))))
				  *arith-items*)

			;write all the parametric constants of clocks
			(if parametric-regions
				 (maphash (lambda (key v) 
					    (declare (ignore v))
					    (let* (  (it (arith-itemp key))
									 (time-d (if (eq (get-item-sort it) 'timed) 
													time-domain
													"")) )
								(if (not (or (member key signals) (member key discrete-counters)))
									(case smt-dialect
					 					((:smt) (format k ":extrafuns (( zot-c_~s Int ))~%" key ))
					 					((:smt2) (format k "(declare-fun zot-c_~s () Int )~%" key ))))))
				  *arith-items*))


			;write all the temporal arithmetic subfmlas
			 (maphash (lambda (key v)
					(format dict "~s -> ~s~%" v key)  
				    (if (consp key)
					(case (car key)
					  ((next yesterday + - * / mod)
							(case smt-dialect
					   		((:smt) (format k ":extrafuns (( ~s ~a ~a ))~%" v time-domain time-domain))
					  			((:smt2) (format k "(declare-fun ~s ( ~a ) ~a )~%" v time-domain time-domain)))))))
				  (kripke-timed-arith formula-structure))


			 ;; MR added if to avoid producing the next predicates if ipc constraints are not used
				;TODO: update :smt2 format
			 (if (not (null ipc-constraints))
				(loop for partition in (kripke-related-IPC-vars formula-structure) do
				   (loop for term1 in partition do
					 (loop for term2 in partition do
					  (format k ":extrafuns (( zot-index-i_~s_~s Int ))~%" term1 term2)
					  (format k ":extrapreds (( zot-f_~s_~s Int Int Int))~%" term1 term2)
					  (format k ":extrapreds (( zot-tilde-f_~s_~s Int Int Int))~%" term1 term2)
					  (format k ":extrapreds (( zot-b_~s_~s Int Int Int ))~%" term1 term2)
					  (format k ":extrapreds (( zot-tilde-b_~s_~s Int Int Int ))~%" term1 term2)
					  (format k ":extrapreds (( zot-bigf_~s_~s Int Int Int Int ))~%" term1 term2)
					  (format k ":extrapreds (( zot-tilde-bigf_~s_~s Int Int Int Int ))~%" term1 term2)
					  (format k ":extrapreds (( zot-bigb_~s_~s Int Int Int Int ))~%" term1 term2)
					  (format k ":extrapreds (( zot-tilde-bigb_~s_~s Int Int Int Int ))~%" term1 term2)
					  (format k ":extrapreds (( zot-tf_~s_~s Int Int ))~%" term1 term2)
					  (format k ":extrapreds (( zot-tb_~s_~s Int Int ))~%" term1 term2)
					  (format k ":extrapreds (( zot-exc_~s_~s ))~%" term1 term2))
					 (format k ":extrapreds (( zot-lf_~s Int ))~%" term1)
					 (format k ":extrapreds (( zot-lb_~s Int ))~%" term1)
					 (format k ":extrapreds (( zot-tilde-lf_~s Int ))~%" term1)
					 (format k ":extrapreds (( zot-tilde-lb_~s Int ))~%" term1))))
			 
		
			 (if (> over-clocks 0)
				(case discrete-regions
					((t) (case smt-dialect 
								((:smt) (format k ":extrafuns (( delta Int Int ))~%"))
								((:smt2) (format k "(declare-fun delta ( Int ) Int )~%"))))
			  		((nil) (case smt-dialect 
								((:smt) (format k ":extrafuns (( delta Real Real ))~%"))
								((:smt2) (format k "(declare-fun delta ( Real ) Real )~%"))))))

			 (if (not (null smt-assumptions))
				(format k (concatenate 'string ":assumption " smt-assumptions "~%")))
		  
			; *******************
			; print the formula |
			; *******************
			 (case smt-dialect 
				((:smt) (format k ":formula "))
				((:smt2) (format k "(assert "))))	
			 (write (kripke-formula formula-structure) :stream k :escape nil :case :downcase :pretty t)
			 (case smt-dialect 
				((:smt) (format k ")"))
				((:smt2)
					(progn
						(format k ")") 
			 			(format k "(check-sat-using (then elim-uncnstr													  
																	(using-params qflra 
																			 :arith.branch_cut_ratio 10				; ***
																			 :arith.dump_lemmas false
																			 :arith.euclidean_solver true				; ***
																			 :arith.greatest_error_pivot true		; ***
																			 :arith.ignore_int false					
																			 :arith.int_eq_branch true					; ***
																			 :arith.nl false								; ***
																			 :arith.nl.branching true
																			 :arith.nl.gb true
																			 :arith.nl.rounds 1024
																			 :arith.propagate_eqs false				; ***
																			 :arith.propagation_mode 2
																			 :arith.random_initial_value false
																			 :arith.solver 2
																			 :array.extensional false					; ***
																			 :array.weak false
																			 :auto_config false							; ***
																			 :bv.enable_int2bv false					; ***
																			 :bv.reflect false							; ***
																			 :candidate_models false
																			 :case_split 0									; ***
																			 :dack 1											; ***
																			 :dack.eq false
																			 :dack.factor 0.1
																			 :dack.gc 2000
																			 :dack.gc_inv_decay 0.8
																			 :dack.threshold 10
																			 :delay_units false
																			 :delay_units_threshold 32
																			 :ematching false								; ***
																			 :fail_if_inconclusive true
																			 :macro_finder false
																			 :mbqi false									; ***
																			 :mbqi.force_template 10
																			 :mbqi.max_cexs 1
																			 :mbqi.max_cexs_incr 0
																			 :mbqi.max_iterations 1000
																			 :mbqi.trace false
																			 :pb.conflict_frequency 1000
																			 :pb.enable_compilation true
																			 :pb.enable_simplex true					; ***
																			 :pb.learn_complements true
																			 :phase_selection 3							
																			 :pull_nested_quantifiers false
																			 :qi.eager_threshold 10.0
																			 :qi.lazy_threshold 20.0
																			 :qi.max_instances 4294967295
																			 :qi.max_multi_patterns 0
																			 :qi.profile false
																			 :qi.profile_freq 4294967295
																			 :random_seed 0
																			 :refine_inj_axioms true
																			 :relevancy 2
																			 :restart_factor 1.1
																			 :restart_strategy 1
																			 :timeout 0
																		)

										) ) (get-model)") ) ) ) ) ) )



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
		     (periodic-terms nil)	
		     (gen-symbolic-val t)
		     (ipc-constraints nil)
		     (smt-lib :smt)
		     (over-clocks -1)
			  (discrete-regions nil)
			  (parametric-regions nil)
			  (discrete-counters nil)
			  (signals nil)
			  (debug nil)
			  (no-periodic-regions nil)
		     )

					;(setf *periodic-arith-vars* periodic-vars)
  (setf *smt-metric-futr-operators* nil)
  (setf *smt-metric-past-operators* nil)
  (if (or (eq logic :QF_UFRDL)(eq logic :QF_UFLRA))
  (setf *real-constants* t))
  (setf *metric-operators* nil)
  (setf *format-smt* t)
  (setf *smt-native-impl* t)
  
  ;***************************************
  ;set the global list of dicrete counters - use when over-clocks flag is active
  ;***************************************
  (setf *discrete-counters* discrete-counters)

  
  (let ((formula (deneg (trio-to-ltl spec))))

    (setf *PROPS* (make-kripke the-time 
			       (if (eq with-time t)
				   (with-time formula)
				 formula)))

    (format t "This is SMT-Arithmetic-eeZot~%")    


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
		  (format t "~%SMT output format: ~S~%~%" smt-lib)
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
							 loop-free 
							 no-loop 		
							 periodic-terms
							 gen-symbolic-val
							 ipc-constraints
							 over-clocks
							 discrete-regions
							 parametric-regions
							 discrete-counters
							 signals
							 no-periodic-regions))
				      (if (and trans negate-transitions)
					    (deneg (list (list 'not (cons 'and trans))))
					    (deneg trans)))
				smt-lib)))
				      
		  
		  (format t "~%done processing formula~%")	

			(if debug
				(progn
    	  			(format t "~%Formula:~%~a"  (kripke-formula *PROPS*))
		  			(format t "~%Input Formula:~%~a" formula)))
		  
		  (build-smt-file *PROPS* smt-assumptions parametric-regions discrete-regions over-clocks ipc-constraints discrete-counters signals logic smt-lib no-periodic-regions)
				    
		  (to-smt-and-back *PROPS* smt-solver :smt-lib smt-lib))))))))

