;; eZOT: a bounded satisfiability checker with past operators
;; --Matteo Pradella, 20061208
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

(defpackage :eezot
  (:use :common-lisp 
	:trio-utils
	:kripke
	:sat-interface)
  (:export :zot)) 


(in-package :eezot) 

;(declaim (optimize (speed 3)(space 1)(safety 0)(debug 0)))


; -------------------------

(defun deneg (f)
  "deneg pushes negations to propositions"
  (cond 
    ((or (symbolp f) (stringp f) (integerp f) (typep f 'boolean))  f)
    ((eq (car f) 'not)
     (let ((a (second f)))
       (cond
	 ((typep a 'boolean) (not a))
	 ((or (symbolp a) (stringp a) (integerp a))  f)
	 (t 
	   (case (car a)
	     ((not) (deneg (second a)))
	     ((and) (cons 'or (mapcar 
				(lambda (x) (deneg `(not ,x)))
				(cdr a))))
	     ((or) (cons 'and (mapcar 
				(lambda (x) (deneg `(not ,x)))
				(cdr a))))
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

    (labels ((store-and-adjust (el)
			       (let ((l (length (kripke-back a-kripke)))
				     (nv (kripke-numvar a-kripke)))
				 (when (<= l nv)
				   (adjust-array (kripke-back a-kripke) (1+ nv)))
				 (setf (elt (kripke-back a-kripke) nv) el))))

      ; This puts plain symbols into the hash table
      (loop for x in '(**LOOP** **INLOOP**) 
	    do 
	    (progn
	      (incf (kripke-numvar a-kripke))
	      (setf (gethash x (kripke-list a-kripke))
		    (kripke-numvar a-kripke))
	      (store-and-adjust 
		; put the inverse in the back projection;
		; (cons 0 x) is a trick to avoid printing
		; the symbol in the back-parser;
		; d is he current value of d
		(if (not (eq x '**INLOOP**))
		  x 
		  (cons 0 x)) )))

      ; This puts subformulae into the hash table
      (labels ((jump (fm)
		     (when (and (not (typep fm 'boolean))
				(not (gethash fm (kripke-list a-kripke))))
		       (incf (kripke-numvar a-kripke))
		       (setf (gethash fm (kripke-list a-kripke)) 
			     (kripke-numvar a-kripke))

		       (store-and-adjust fm)

		       (when (consp fm)
			 (progn
			   (cond
			     ((eq (car fm) 'until)
			      (incf (kripke-numvar a-kripke))
			      (setf (gethash (list '<<F>> (third fm)) (kripke-list a-kripke)) 
				    (kripke-numvar a-kripke))

			      (store-and-adjust (list '<<F>> (third fm))))

			     ((eq (car fm) 'release)
			      (incf (kripke-numvar a-kripke))
			      (setf (gethash (list '<<G>> (third fm)) (kripke-list a-kripke)) 
				    (kripke-numvar a-kripke))

			      (store-and-adjust (list '<<G>> (third fm))))))

			 (dolist (i (cdr fm))
			   (jump i))))))
	(jump fma)
	(incf (kripke-numvar a-kripke)))

      (maphash  
	(lambda (fm val)
	  (declare (ignore val)) ; just to avoid warnings...

	  (if (symbolp fm)
	    (unless (member fm '(T NIL **LOOP** **INLOOP**))
	      (push fm (kripke-prop a-kripke)))
	    (case (car fm)
	      ((and or not) 
	       (push fm (kripke-bool a-kripke)))
	      ((next until release) 
	       (push fm (kripke-futr a-kripke)))
	      ((yesterday zeta since trigger)
	       (push fm (kripke-past a-kripke)))
	      ((<<F>> <<G>>)
	       nil)
	      (t
		(error "subformulae: unknown op ~S~%" fm))))) 
	(kripke-list a-kripke))

      a-kripke)))


(defmethod call ((kk eezot-kripke) obj the-time &rest other) 
  (assert (null other))
  (if (typep obj 'boolean)
    obj
    (let ((res (gethash obj (kripke-list kk))))
      (unless res
	(error "Undeclared proposition: ~S" obj))
      (let ((val (+ (* the-time (kripke-numvar kk))
		    res)))
	(when (< (kripke-maximum kk) val)
	  (setf (kripke-maximum kk) val))
	val))))


(defmethod back-call ((kk eezot-kripke) val)
  (let* ((nv (kripke-numvar kk))
	 (the-mod (mod val nv)))
    (handler-case
      (let ((res
	      (elt (kripke-back *PROPS*) 
		   (if (= 0 the-mod) nv the-mod))))
	(if res res "bad!"))
      (error () "bad!!"))))


(defmethod back-call-time ((kk eezot-kripke) val)
  (floor val (kripke-numvar kk)))



(defun the-l (i)
  (call *PROPS* '**LOOP** i))

(defun the-inloop (i)
  (call *PROPS* '**INLOOP** i))

(defun LoopExists ()
  (call *PROPS* '**INLOOP** (kripke-k *PROPS*)))

(defun props-equal (i j)
  (cons 
    'and
    (loop for fm in (kripke-prop *PROPS*)
	  collect
	  `(iff ,(call *PROPS* fm i)
		,(call *PROPS* fm j)))))

(declaim 
  (inline the-l the-inloop LoopExists props-equal))

;; ---------
;; Semantics
;; ---------


; BZOT -- in fieri 

(defun LoopFree ()
  (format t "loopfree...")(force-output)
  (loop for i from 0 to (1- (kripke-k *PROPS*)) append
	(loop for j from 0 to (1- (kripke-k *PROPS*)) when (< i j)
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
				  ,(call *PROPS* fm j))))))))





(defun LoopConstraints ()
  (format t "loopconstraints...")(force-output)
  (loop for i from 0 to (kripke-k *PROPS*) append 
	(if (= i 0)
	  `((not ,(the-l 0))
	    (not ,(the-inloop 0)))
	  `((impl ,(the-l i) ,(props-equal (1- i) (kripke-k *PROPS*)))
	    (iff  ,(the-inloop i) (or ,(the-inloop (1- i)) ,(the-l i)))
	    (impl ,(the-inloop (1- i)) (not ,(the-l i)))))))


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

    (append 
      (loop for fm in fma-list collect
	    `(impl (not ,(LoopExists))
		   (not ,(call *PROPS* fm (1+ (kripke-k *PROPS*))) )))

      (loop for i from 1 to (kripke-k *PROPS*) append
	    (loop for fm in fma-list collect
		  `(impl ,(the-l i)
			 (iff
			   ,(call *PROPS* fm (1+ (kripke-k *PROPS*)))
			   ,(call *PROPS* fm i))))))))


(defun gen-evt-futr ()
  (format t "gen-evt-futr...")(force-output)
  (let ((k (kripke-k *PROPS*)))
    (append 
      (loop for fm in (kripke-futr *PROPS*) append
	    (case (car fm)
	      ((until)
	       (let ((fm1 `(<<F>> ,(third fm))))
		 (list
		   `(impl ,(LoopExists)
			  (impl
			    ,(call *PROPS* fm k)
			    ,(call *PROPS* fm1 k)))
		   `(not
		      ,(call *PROPS* fm1 0)))))
	      ((release)
	       (let ((fm1 `(<<G>> ,(third fm))))
		 (list
		   `(impl ,(LoopExists)
			  (impl
			    ,(call *PROPS* fm1 k)
			    ,(call *PROPS* fm k)))
		   (call *PROPS* fm1 0))))))

      (loop for i from 1 to k append
	    (loop for fm in (kripke-futr *PROPS*)
		  unless (eq (car fm) 'next) collect 
		  (case (car fm)
		    ((until)
		     (let ((fm1 `(<<F>> ,(third fm))))

		       `(iff ,(call *PROPS* fm1 i)
			     (or ,(call *PROPS* fm1 (1- i))
				 (and ,(the-inloop i)
				      ,(call *PROPS* (third fm) i))))))

		    ((release)
		     (let ((fm1 `(<<G>> ,(third fm))))

		       `(iff ,(call *PROPS* fm1 i)
			     (and ,(call *PROPS* fm1 (1- i))
				  (or (not ,(the-inloop i))
				      ,(call *PROPS* (third fm) i))))))))))))


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
	    (gen-evt-futr)
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
		     (declarations nil)) 

  (setf trio-utils:*metric-operators* nil)

  (let ((formula (deneg (trio-to-ltl spec))))
    (setf *PROPS* (make-kripke the-time formula))
    (format t "This is eeZot~%")

    (let ((undeclared (set-difference (kripke-prop *PROPS*) declarations)))
      (if (and declarations undeclared)
	(format t "Error: undeclared propositions ~S~%" undeclared)
	; Declarations are fine, so go on...
	(progn 
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
	  (to-sat-and-back *PROPS*))))))

