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

(defpackage :smteezot
  (:use :common-lisp 
	:trio-utils
	:kripke
	:smt-interface
	)
  (:export :zot
	   :loopex
	   :yices
	   :cvc3
	   :mathsat
	   :z3)) 


(in-package :smteezot) 

;(declaim (optimize (speed 3)(space 1)(safety 0)(debug 0)))


; -------------------------
; MP: hack to improve spped of "member"
(defmacro in (x set)
  (let* ((insym (gensym))
         (the-set (loop for i in (eval set) 
                     collect (list 'eq insym `(quote ,i)))))
    `(let ((,insym ,x))
       (or ,@the-set)))) 


(defun predicatep (f) 
  (and (consp f) 
       (not (in (car f) '(not and or next until release since trigger zeta yesterday)))))

(declaim (inline predicatep))

(defun arithp (f) 
  (and (consp f) 
       (not (in (car f) '(not and or next until release since trigger zeta yesterday)))))

(declaim (inline arithp))




(defun deneg (f)
  "deneg pushes negations to propositions"
  (declare (optimize (debug 0)(safety 0)(speed 3)))


  (cond     
    ((null f) 'false)
    ((eq f t) 'true)   

    ((or (symbolp f) (stringp f) (integerp f) (predicatep f) ) f)
    ((eq (car f) 'not)
     (let ((a (second f)))
       (cond 
	 ((eq a t) 'false)
	 ((null a) 'true)	 
	 ((or (symbolp a) (stringp a) (integerp a) (predicatep a)) f)	 
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
	     (t (error "deneg: bad arg ~S" (cons f a)))))))) 

    ((and (consp f) (eq (car f) 'and) (null (cdr f))) 'true)
    ((and (consp f) (eq (car f) 'or)  (null (cdr f))) 'false)

    ;((member (car f) '(and or next until release since trigger zeta yesterday))   
    (t
      (cons (car f) (mapcar #'deneg (cdr f))))))





(defvar *PROPS* nil) ; this will contain a Kripke


(defclass eezot-kripke (kripke) ())

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
      (kripke-past a-kripke)   nil)

    
      (setf (gethash '**I_LOOP** (kripke-list a-kripke))
 		    (intern (format nil "I_LOOP" )))

      (setf (gethash '**LOOPEX** (kripke-list a-kripke))
 		    (intern (format nil "LOOPEX" )))


      ; This puts subformulae into the hash table
      (labels ((jump (fm)
		     (when (and (not (member fm '(nil true false)))
				(not (gethash fm (kripke-list a-kripke)))
				)
		       
		       (if (symbolp fm)
			   (setf (gethash fm (kripke-list a-kripke)) 
				 (intern (format nil "~s" fm)))
			   (setf (gethash fm (kripke-list a-kripke)) 
				 (intern (format nil "P~s" (incf (kripke-numvar a-kripke))))))

		       (when (consp fm)
			 (dolist (i (cdr fm))
			   (jump i))))))
	(jump fma)
	(incf (kripke-numvar a-kripke)))

      (maphash  
	(lambda (fm val)
	  (declare (ignore val)) ; just to avoid warnings...

	  (if (symbolp fm)
	    (unless (member fm '(true false **I_LOOP** **LOOPEX**))
	      (push fm (kripke-prop a-kripke)))
	    (case (car fm)
	      ((and or not) 
	       (push fm (kripke-bool a-kripke)))
	      ((next until release) 
	       (push fm (kripke-futr a-kripke)))
	      ((yesterday zeta since trigger)
	       (push fm (kripke-past a-kripke)))
	      ((< > =)
	       nil)
	      (t
		(error "subformulae: unknown op ~S~%" fm))))) 
	(kripke-list a-kripke))

      a-kripke))


(defmethod call ((kk eezot-kripke) obj the-time &rest other) 
  (assert (null other))
  (cond 
    ((eq 'false obj) 'false)
    ((eq 'true obj) 'true)    
    (t (list (gethash obj (kripke-list kk)) the-time))))


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
   `(impl ,(the-loopEx) (and (< 0 ,(the-iloop)) (<= ,(the-iloop) ,(kripke-k *PROPS*))))
   (list
    'iff
     (list 'and `(<= 1 ,(the-iloop)) `(<= ,(the-iloop) ,(kripke-k *PROPS*)))    
     (cons 'and 
 	   (cons
 	    (the-loopEx)
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
		   (loop for fm in fma-list collect
 			`(not ,(call *PROPS* fm (1+ (kripke-k *PROPS*))) ))))
     (list
     `(impl ,(the-loopEx)
	    ,(cons 'and
		   (loop for fm in fma-list collect 	    
			`(iff ,(call *PROPS* fm (the-iloop)) ,(call *PROPS* fm (1+ (kripke-k *PROPS*))) ))))))))
 

		  
		  
		    


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


(defun gen-predicate ()
					;(format t "gen-predicate...")(force-output)
  (let ((ls '())
	(*print-case* :downcase)) 
    (maphash (lambda (key v) 
	       (if (consp key)
		   (case (car key)
		     ((until release)
		      (push (format nil ":extrapreds (( ~s Int ))" v) ls)
		      (push (format nil ":extrafuns (( i_eve_~s Int ))" v) ls))		     
		     (t
		      (push (format nil ":extrapreds (( ~s Int ))" v) ls)))		 
		   (if (eq key '**I_LOOP**)
		       (push (format nil ":extrafuns (( ~s Int ))" v) ls)
		       (push (format nil ":extrapreds (( ~s Int))" v) ls))))
		 
	     (kripke-list *PROPS*))
    (append `( ,(format nil "(benchmark b")
		,(format nil ":logic QF_UFIDL")
		) ls)))
	  
		   
     



(defun the-big-formula (fma loop-free)
  (cons (call *PROPS* fma 1)
	(if loop-free

					; original
	    ;; 	  (nconc
	    ;; 	   (gen-bool)
	    ;; 	   (gen-futr)
	    ;; 	   (gen-evt-futr)
	    ;; 	   (gen-past1)
	    ;; 	   (gen-past2)
	    ;; 	   (LoopFree)
	    ;; 	   ;(SimplePath)
	    ;; 	   )


					; variant
	    ;; 	  (nconc
	    ;; 	   (LoopConstraints)
	    ;; 	   (gen-bool)
	    ;; 	   (gen-futr)
	    ;; 	   (LastStateFormula) ; !!
	    ;; 	   (gen-evt-futr)
	    ;; 	   (gen-past1)
	    ;; 	   (gen-past2)
	    ;; 	   (LoopFree))

	    (nconc
	     (LoopFree)
	     (gen-bool)
	     (gen-futr)
	     ;(gen-evt-futr)
	     (gen-past1) ;????
	     (gen-past2))

	    (nconc	   
	     (LoopConstraints)
	     (gen-bool)
	     (gen-futr)
	     (LastStateFormula)
	     (gen-evt-futr)
	     (gen-past1)
	     (gen-past2)	    
	     ))))


(defun manage-transitions (trans the-k)
  (labels ((call-recur (f i)
	     (cond
	       ((or (stringp f) (integerp f) (typep f 'boolean)) f)
	       ((symbolp f) (call *PROPS* f i))
	       ((eq 'next (car f)) (call-recur (second f) (1+ i)))
	       (t
		(cons (car f) (mapcar (lambda (x)
					(call-recur x i)) (cdr f)))))))
    (loop for i from 0 to (1- the-k)
       append
       (mapcar (lambda (x)
		 (call-recur x i)) trans))))



					; --- MAIN ---

(defun zot (the-time spec 
	    &key 
	    (loop-free nil) 
	    (transitions nil)
	    (negate-transitions nil)
	    (declarations nil)
	    (smt-solver :z3))

  (setf *smt-metric-futr-operators* nil)
  (setf *smt-metric-past-operators* nil)

  (setf *metric-operators* nil)

  (let ((formula (deneg 
		  (trio-to-ltl spec))))
					;(format t "~S" formula)
    (setf *PROPS* (make-kripke the-time formula))
    (format t "This is SMTeeZot~%")

    (let ((undeclared (set-difference (kripke-prop *PROPS*) declarations)))
      (if (and declarations undeclared)
	  (format t "Error: undeclared propositions ~S~%" undeclared)
					; Declarations are fine, so go on...
	  (progn 
	    (format t "~%1. processing formula")
	    (time (progn
		    (format t "~%Used propositions: ~%~S~%" (kripke-prop *PROPS*))
		    (format t "~%Time bound: ~S~%" the-time)
		    (let ((trans (if transitions 
				     (manage-transitions transitions the-time) 
				     nil)))
		      (setf (kripke-formula *PROPS*)
			    
			    (deneg (trio-to-ltl 
				    (nconc (list 'and)
					   (when *zot-item-constraints*
					     (manage-transitions (list *zot-item-constraints*) 
								 (1+ the-time)))
					   
					   
					   (the-big-formula formula loop-free)
					   (if (and trans negate-transitions)
					       (list (list 'not (cons 'and trans)))
					       trans))))))
		    
		    (format t "~%done processing formula~%")))

	    (with-open-file (k "./output.smt.txt" :direction :output :if-exists :supersede)			       	    
	      (format k "(benchmark b~%")
	      (format k ":logic QF_UFIDL~%") 
	      (let ((*print-case* :downcase))
		(maphash (lambda (key v) 
			   (if (consp key)
			       (case (car key)
				 ((until release)
				  (format k ":extrapreds (( ~s Int ))~%" v)
				  (format k ":extrafuns (( i_eve_~s Int ))~%" v))			       
				 (t
				  (format k ":extrapreds (( ~s Int ))~%" v)))
			       (if (member key (kripke-prop *PROPS*))
				   (format k ":extrapreds (( ~s Int))~%" v)				 
				   (case key
				     ((**LOOPEX**) (format k ":extrapreds (( ~s ))~%" v))
				     ((**I_LOOP**) (format k ":extrafuns (( ~s Int))~%" v))				 
				     (t (format k ":extrapreds (( ~s Int))~%" v))))))
			 (kripke-list *PROPS*)))
	      (format k ":formula ")    
	      (write (kripke-formula *PROPS*) :stream k :escape nil :case :downcase)
	      (format k ")"))    
	      

	    (to-smt-and-back *PROPS* smt-solver)
	    )))))

