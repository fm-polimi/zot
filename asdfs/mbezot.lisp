;; mbeZOT: a bounded satisfiability checker 
;; with future, past and metric operators and biinfinite semantics
;; --Matteo Pradella, 20061208
;; --Davide Casiraghi, 20081016
;; v. 20090115
; --------------------------------------------------------------------------
;
; Copyright (C) 2006,2007 Matteo Pradella (pradella@elet.polimi.it)
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
(defpackage :mbezot
  (:use :common-lisp 
	:trio-utils
	:kripke
	:sat-interface)
  (:export :zot))


(in-package :mbezot)

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
	     ((futr) `(futr ,(deneg `(not ,(second a))) ,(third a)))
	     ((lasts) `(withinf ,(deneg `(not ,(second a))) ,(third a)))
	     ((withinf) `(lasts ,(deneg `(not ,(second a))) ,(third a)))
	     ((until) 
	      `(release ,(deneg `(not ,(second a))) ,(deneg `(not ,(third a)))))
	     ((release) 
	      `(until ,(deneg `(not ,(second a))) ,(deneg `(not ,(third a)))))
	     ((yesterday) `(yesterday ,(deneg `(not ,(second a)))))
	     ((past) `(past ,(deneg `(not ,(second a))) ,(third a)))
	     ((lasted) `(withinp ,(deneg `(not ,(second a))) ,(third a)))
	     ((withinp) `(lasted ,(deneg `(not ,(second a))) ,(third a)))
	     ((since) 
	      `(trigger ,(deneg `(not ,(second a))) ,(deneg `(not ,(third a)))))
	     ((trigger) 
	      `(since ,(deneg `(not ,(second a))) ,(deneg `(not ,(third a)))))
	     (t (error "deneg: bad arg ~S ~S" (cons f a) (car a))))))))
    (t
      (cons (car f) (mapcar #'deneg (cdr f))))))


(defvar *PROPS* nil) ; this will contain a Kripke

(defclass mbezot-kripke (kripke) 
  ((the-cont :accessor kripke-cont :type list)
   (the-numvar-cont :accessor kripke-numvar-cont :type fixnum)))



(defun make-kripke (k fma)
  (declare (fixnum k))

  ;(setf futr-t (make-hash-table :test #'equal))
  ;(setf past-t (make-hash-table :test #'equal))

  (let ((a-kripke (make-instance 'mbezot-kripke))
	(futr-t   (make-hash-table :test #'equal))
	(past-t   (make-hash-table :test #'equal)))
	

    (setf 
      (kripke-k a-kripke)       (the fixnum k)
      (kripke-numvar a-kripke)  (the fixnum 0)
      (kripke-numvar-cont a-kripke)  (the fixnum 0)
      ; formula -> integer
      (kripke-list a-kripke)    (make-hash-table :test #'equal)
      ; integer -> formula
      (kripke-back a-kripke)    (make-array (* k 10) :adjustable t)
      (kripke-prop a-kripke)    nil
      (kripke-bool a-kripke)    nil
      (kripke-futr a-kripke)    nil
      (kripke-past a-kripke)    nil
      (kripke-cont a-kripke)    nil
      (kripke-maximum a-kripke) (the fixnum 0)
      (kripke-formula a-kripke) nil)   

    (labels ((store-and-adjust (el)
			       (let ((l (length (kripke-back a-kripke)))
				     (nv (the fixnum (kripke-numvar a-kripke))))
				 (when (<= l nv)
				   (adjust-array (kripke-back a-kripke) (1+ nv)))
				 (setf (elt (kripke-back a-kripke) nv) el)))

	     (store-and-adjust-cont (el)
				    (let ((l (length (kripke-back a-kripke)))
					  (nv (the fixnum (kripke-numvar-cont a-kripke))))
				      (when (<= l nv)
					(adjust-array (kripke-back a-kripke) (1+ nv)))
				      (setf (elt (kripke-back a-kripke) nv) el))))

      ; This puts looping symbols into the hash table
      (loop for x in '(**LOOP** **INLOOP** **POOL** **INPOOL**) 
	    do 
	    (progn
	      (the fixnum (incf (kripke-numvar a-kripke)))
	      (setf (gethash x (kripke-list a-kripke))
		    (the fixnum (kripke-numvar a-kripke)))
	      (store-and-adjust 
		; put the inverse in the back projection;
		; (cons 0 x) is a trick to avoid printing
		; the symbol in the back-parser;
		(if (not (member x '(**INLOOP** **INPOOL**))) 
		  x 
		  (cons 0 x)) )))

      ; This puts subformulae into the hash table
      (labels ((jump (fm)
		     (when (and (not (typep fm 'boolean))
				(not (numberp fm))
				(not (gethash fm (kripke-list a-kripke))))
		       (the fixnum (incf (kripke-numvar a-kripke))) 
		       (setf (gethash fm (kripke-list a-kripke)) 
			     (the fixnum (kripke-numvar a-kripke)))

		       (store-and-adjust fm) 

		       (when (consp fm)
			 (progn
			   (cond
			     ((eq (car fm) 'until)
			      (the fixnum (incf (kripke-numvar a-kripke))) 
			      (setf (gethash (list '<<F>> (third fm)) (kripke-list a-kripke)) 
				    (the fixnum (kripke-numvar a-kripke)))
			      (store-and-adjust (list '<<F>> (third fm))))

			     ((eq (car fm) 'release)
			      (incf (kripke-numvar a-kripke))
			      (setf (gethash (list '<<G>> (third fm)) (kripke-list a-kripke)) 
				    (kripke-numvar a-kripke))

			      (store-and-adjust (list '<<G>> (third fm))))

			     ((eq (car fm) 'since)
			      (incf (kripke-numvar a-kripke)) 
			      (setf (gethash (list '<<O>> (third fm)) (kripke-list a-kripke)) 
				    (kripke-numvar a-kripke))
			      (store-and-adjust (list '<<O>> (third fm))))

			     ((eq (car fm) 'trigger)
			      (incf (kripke-numvar a-kripke))
			      (setf (gethash (list '<<H>> (third fm)) (kripke-list a-kripke)) 
				    (kripke-numvar a-kripke))

			      (store-and-adjust (list '<<H>> (third fm))))

			     ((or (eq (car fm) 'futr)  (eq (car fm) 'lasts)  (eq (car fm) 'withinf))
			      (setf (gethash (list (car fm) (second fm)) futr-t) 
				    (cons (third fm) (gethash  (list (car fm) (second fm)) futr-t))))
			     ((or (eq (car fm) 'past)  (eq (car fm) 'lasted)  (eq (car fm) 'withinp))
			      (setf (gethash  (list (car fm) (second fm)) past-t) 
				    (cons (third fm) (gethash  (list (car fm) (second fm)) past-t))))))

			 (dolist (i (cdr fm))
			   (jump i))))))
	(jump fma)

	(setf (kripke-numvar-cont a-kripke) (kripke-numvar a-kripke))

	(maphash (lambda (fm times)
		   (let ((stimes (sort times #'>))
			 (ftime 0))
		     (loop for time = (car stimes) then (1- time)
			   until (not (position time stimes)) do
			   (setf ftime time))
		     (loop for j from 0 to (1- ftime)
			   when (not (gethash (list '<<MF>> (second fm) j) (kripke-list a-kripke))) do
			   (incf (kripke-numvar-cont a-kripke))
			   (setf (gethash (list '<<MF>> (second fm) j) (kripke-list a-kripke)) 
				 (kripke-numvar-cont a-kripke))
			   (store-and-adjust-cont (list '<<MF>> (second fm) j)))

		     ))
		 futr-t)


	(maphash 
	  (lambda (fm times)
	    (let ((stimes (sort times #'>))
		  (ftime 0))
	      (loop for time = (car stimes) then (1- time)
		    until (not (position time stimes)) do
		    (setf ftime time))
	      (loop for j from 0 to (1- ftime)
		    when (not (gethash (list '<<MP>> (second fm) j) (kripke-list a-kripke))) do
		    (incf (kripke-numvar-cont a-kripke))
		    (setf (gethash (list '<<MP>> (second fm) j) (kripke-list a-kripke)) 
			  (kripke-numvar-cont a-kripke))
		    (store-and-adjust-cont (list '<<MP>> (second fm) j)))

	      ))
	  past-t)

	(incf (kripke-numvar a-kripke)))

      (maphash  
	(lambda (fm val)
	  (declare (ignore val)) ; just to avoid warnings...

	  (if (symbolp fm)
	    (unless (member fm '(T NIL **LOOP** **INLOOP** **POOL** **INPOOL**))
	      (push fm (kripke-prop a-kripke)))
	    (case (car fm)
	      ((and or not) 
	       (push fm (kripke-bool a-kripke)))
	      ((next until release futr lasts withinf nexttime Znexttime until-b release-b) 
	       (push fm (kripke-futr a-kripke)))
	      ((yesterday since trigger past lasted withinp lasttime Zlasttime since-b trigger-b)
	       (push fm (kripke-past a-kripke)))
	      ((<<MF>> <<MP>>)
	       (push fm (kripke-cont a-kripke)))
	      ((<<F>> <<G>> <<O>> <<H>>)
	       nil)
	      (t
		(error "subformulae: unknown op ~S~%" fm))))) 
	(kripke-list a-kripke))

      a-kripke)))

(defmethod call ((kk mbezot-kripke) obj the-time &rest other) 
  (declare (ignore other)(fixnum the-time))

  (if (typep obj 'boolean)
    obj
    (let ((res (gethash obj (kripke-list kk)))
	  (time the-time))
      (unless res
	(error "Undeclared proposition: ~S" obj))
      (unless (<= res (kripke-numvar kk))
	(setf time (1+ (kripke-k kk))))

      (let ((val (the fixnum (+ (* (1+ time) (the fixnum (kripke-numvar kk))) ; time shift +1
				(the fixnum res)))))
	(when (< (kripke-maximum kk) val)
	  (setf (kripke-maximum kk) val))
	val))))

(defmethod back-call ((kk mbezot-kripke) val)
  (declare (fixnum val))
  (let* ((nv (the fixnum (kripke-numvar kk)))
	 (new-val (mod val nv)))
    (when (> val (* (+ (kripke-k kk) 2) (kripke-numvar kk)))
      (setf new-val (- val (* (+ (kripke-k kk) 1) (kripke-numvar kk)))))
    (let ((the-mod (the fixnum new-val)))
      (handler-case
	(let ((res
		(elt (kripke-back *PROPS*) 
		     (if (= 0 the-mod) nv the-mod))))
	  (if res res "bad!"))
	(error () "bad!!")))))

(defmethod back-call-time ((kk mbezot-kripke) val)
  (if (> val (* (+ (kripke-k kk) 3) (kripke-numvar kk)))
    (the fixnum (1+ (kripke-k kk)))
    (the fixnum (1- (floor val (kripke-numvar kk))))))


(defun the-l (i)
  (call *PROPS* '**LOOP** i))

(defun the-inloop (i)
  (call *PROPS* '**INLOOP** i))

(defun the-p (i)
  (call *PROPS* '**POOL** i))

(defun the-inpool (i)
  (call *PROPS* '**INPOOL** i))

(defun LoopExists ()
  (call *PROPS* '**INLOOP** (kripke-k *PROPS*)))

(defun PoolExists ()
  (call *PROPS* '**INPOOL** 0))

(defun props-equal (i j)
  (cons 
    'and
    (loop for fm in (kripke-prop *PROPS*)
	  collect
	  `(iff ,(call *PROPS* fm i)
		,(call *PROPS* fm j)))))

(declaim 
  (inline the-l the-inloop the-p the-inpool 
	  LoopExists PoolExists props-equal))


;; ---------
;; Semantics
;; ---------



; BZOT -- in fieri 

(defun LoopFree ()
  (format t "loopfree...")
  (loop for i from 1 to (1- (kripke-k *PROPS*)) append
	(loop for j from 1 to (1- (kripke-k *PROPS*)) when (< i j)
	      collect
	      (list 'not 
		    (cons 
		      'and
		      (loop for fm in (append (kripke-prop *PROPS*) 
					      ;(remove-if-not (lambda (f) (eq (car f) 'next))
					      (kripke-futr *PROPS*);)
					      ;(remove-if-not (lambda (f) (eq (car f) 'yesterday))
					      (kripke-past *PROPS*));)
			    collect
			    `(iff ,(call *PROPS* fm i)
				  ,(call *PROPS* fm j))))))))




(defun LoopConstraints ()
  (format t "loopconstraints...")
  (loop for i from 0 to (kripke-k *PROPS*) append 
	(if (= i 0)
	  `((not ,(the-l i))
	    (not ,(the-inloop i)))
	  `((impl ,(the-l i) ,(props-equal (1- i) (kripke-k *PROPS*)))
	    (iff  ,(the-inloop i) (or ,(the-inloop (1- i)) ,(the-l i)))
	    (impl ,(the-inloop (1- i)) (not ,(the-l i)))))))

(defun PoolConstraints () 
  (format t "poolconstraints...")
  (loop for i from 0 to (kripke-k *PROPS*) append 
	(if (= i (kripke-k *PROPS*))
	  `((not ,(the-p i))
	    (not ,(the-inpool i)))
	  `((impl ,(the-p i) ,(props-equal (1+ i) 0))
	    (iff  ,(the-inpool i) (or ,(the-inpool (1+ i)) ,(the-p i)))
	    (impl ,(the-inpool (1+ i)) (not ,(the-p i)))))))


(defun gen-bool ()
  (format t "gen-bool...")
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

(defun LastStateFormula ()
  (format t "lastState...")
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

(defun FirstStateFormula ()
  (format t "firstState...")
  (let ((fma-list (append
		    (kripke-prop *PROPS*)
		    (kripke-bool *PROPS*)
		    (kripke-futr *PROPS*)
		    (kripke-past *PROPS*))))
    (append 
      (loop for fm in fma-list collect
	    `(impl (not ,(PoolExists))
		   (not ,(call *PROPS* fm -1) ))) ; time shift +1

      (loop for i from 0 to (1- (kripke-k *PROPS*)) append
	    (loop for fm in fma-list collect
		  `(impl ,(the-p i)
			 (iff
			   ,(call *PROPS* fm -1) ; time shift +1
			   ,(call *PROPS* fm i))))))))

(defun gen-futr ()
  (format t "gen-futr...")
  (loop for i from -1 to (kripke-k *PROPS*) append
	(loop for fma in (kripke-futr *PROPS*) collect
	      (let ((prec nil) (tprec 0) (precf nil))
		(list 'iff  
		      (call *PROPS* fma i)  
		      (case (car fma)
			((futr)
			 (loop for fm in (kripke-futr *PROPS*) do
			       (if (and (eq (car fm) (car fma))        ; == futr!
					(< (third fm) (third fma))     ; t' < t
					(> (third fm) tprec)           ; t' > tprec
					(equal (second fm) (second fma)))
				 (progn
				   (setf tprec (third fm)) ; saved MAX time constant t' found, t' < t
				   (setf precf fm)         ; saved formula
				   (setf prec (call *PROPS* fm i))))) ; saved formula @ i

			 (if (and (not (= tprec 0)) (= tprec (1- (third fma))))
			   ; (?) optimization: I have already considered futr(f1,t-1), so I'm using it
			   (call *PROPS* precf (1+ i))

			   (if (<= (+ i  (third fma)) (kripke-k *PROPS*)) ; i+t <= k
			     (call *PROPS* (second fma) (+ i (third fma)))

			     ; else: <<MF(f1, t+i-k-1)>> i.e. t + i - size of temporal domain
			     (call *PROPS* (list '<<MF>> (second fma) (+ (third fma) (- (kripke-k *PROPS*)) i -1)) 0))))

			((lasts)
			 (loop for fm in (kripke-futr *PROPS*) do
			       (if (and (eq (car fm) 'lasts)
					(< (third fm) (third fma))
					(> (third fm) tprec)
					(equal (second fm) (second fma)))
				 (progn
				   (setf tprec (third fm))
				   (setf precf fm)
				   (setf prec (call *PROPS* fm i)))))

			 (if (and (not (Zerop tprec)) (= tprec (1- (third fma))))
			   `(and ,(call *PROPS* precf (1+ i))
				 ,(call *PROPS* (second fma) (1+ i)))


			   (append '(and)
				   (when prec `(,prec))
				   (loop for j from (+ i 1 tprec) to (min (+ i (third fma)) (kripke-k *PROPS*)) collect
					 (call *PROPS* (second fma) j))
				   (loop for j from (max (1+ (kripke-k *PROPS*)) (+ i tprec)) to (+ i (third fma)) collect
					 (call *PROPS* (list '<<MF>> (second fma) (+ j (- (kripke-k *PROPS*)) -1)) 0)))))

			((withinf)
			 (loop for fm in (kripke-futr *PROPS*) do
			       (if (and (eq (car fm) 'withinf)
					(< (third fm) (third fma))
					(> (third fm) tprec)
					(equal (second fm) (second fma)))
				 (progn
				   (setf tprec (third fm))
				   (setf precf fm)
				   (setf prec (call *PROPS* fm i)))))

			 (if (and (not (zerop tprec)) (eq tprec (1- (third fma))))
			   `(or ,(call *PROPS* precf (1+ i))
				,(call *PROPS* (second fma) (1+ i)))

			   (append '(or)
				   (when prec `(,prec))
				   (loop for j from (+ i 1 tprec) to (min (+ i (third fma)) (kripke-k *PROPS*)) collect
					 (call *PROPS* (second fma) j))
				   (loop for j from (max (1+ (kripke-k *PROPS*)) (+ i tprec)) to (+ i (third fma)) collect
					 (call *PROPS* (list '<<MF>> (second fma) (+ j (- (kripke-k *PROPS*)) -1)) 0)))))

			((next)
			 (call *PROPS* (second fma) (1+ i)))
			((until)
			 `(or ,(call *PROPS* (third fma) i) 
			      (and ,(call *PROPS* (second fma) i)
				   ,(call *PROPS* fma (1+ i)))))
			((release)
			 `(and ,(call *PROPS* (third fma) i)
			       (or ,(call *PROPS* (second fma) i)
				   ,(call *PROPS* fma (1+ i)))))))))))


(defun gen-past () 
  (format t "gen-past...")
  (loop for i from 0 to (1+ (kripke-k *PROPS*)) append
	(loop for fma in (kripke-past *PROPS*) collect
	      (let ((prec nil) (tprec 0) (precf nil))
		(list 'iff  
		      (call *PROPS* fma i)  
		      (case (car fma)
			((past)
			 (loop for f in (kripke-past *PROPS*) do
			       (if (and (eq (car f) (car fma))
					(< (third f) (third fma))
					(> (third f) tprec)
					(equal (second fma) (second f)))
				 (progn
				   (setf tprec (third f))
				   (setf precf f)
				   (setf prec (call *PROPS* f i)))))

			 (if (and (not (Zerop tprec)) (= tprec (1- (third fma))))
			   (call *PROPS* precf (1- i))

			   (if (>=  i  (third fma))
			     (call *PROPS* (second fma) (- i (third fma)))
			     (call *PROPS* (list '<<MP>> (second fma) (+ (third fma) (- i) -1)) 0))))

			((lasted)
			 (loop for f in (kripke-past *PROPS*) do
			       (if (and (eq (car f) (car fma))
					(< (third f) (third fma))
					(> (third f) tprec)
					(equal (second fma) (second f)))
				 (progn
				   (setf tprec (third f))
				   (setf precf f)
				   (setf prec (call *PROPS* f i)))))

			 (if (and (not (Zerop tprec)) (= tprec (1- (third fma))))
			   `(and ,(call *PROPS* precf (1- i))
				 ,(call *PROPS* (second fma) (1- i)))

			   (append '(and)
				   (when prec `(,prec))
				   (loop for j from (max 0 (+ i (- (third fma)))) to (+ i (- tprec) -1) collect
					 (call *PROPS* (second fma) j))
				   (loop for j from (- i (third fma)) to (min (- i tprec) -1) collect
					 (call *PROPS* (list '<<MP>> (second fma) (1- (* -1 j))) 0)))))


			((withinp)
			 (loop for f in (kripke-past *PROPS*) do
			       (if (and (eq (car f) (car fma))
					(< (third f) (third fma))
					(> (third f) tprec)
					(equal (second fma) (second f)))
				 (progn
				   (setf tprec (third f))
				   (setf precf f)
				   (setf prec (call *PROPS* f i)))))

			 (if (and (not (Zerop tprec)) (= tprec (1- (third fma))))
			   `(and ,(call *PROPS* precf (1- i))
				 ,(call *PROPS* (second fma) (1- i)))

			   (append '(or)
				   (when tprec `(,prec))
				   (loop for j from (max 0 (- i (third fma))) to (+ i (- tprec) -1) collect
					 (call *PROPS* (second fma) j))
				   (loop for j from (- i (third fma)) to (min (- i tprec) -1) collect
					 (call *PROPS* (list '<<MP>> (second fma) (1- (* -1 j))) 0)))))


			((yesterday)
			 (call *PROPS* (second fma) (1- i)))
			((since)
			 `(or ,(call *PROPS* (third fma) i) 
			      (and ,(call *PROPS* (second fma) i)
				   ,(call *PROPS* fma (1- i)))))
			((trigger)
			 `(and ,(call *PROPS* (third fma) i)
			       (or ,(call *PROPS* (second fma) i)
				   ,(call *PROPS* fma (1- i)))))))))))

(defun gen-evt-futr ()
  (format t "gen-evt-futr...")
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
		  unless (or (eq (car fm) 'next) (eq (car fm) 'futr) (eq (car fm) 'lasts) 
			     (eq (car fm) 'withinf)) collect
		  (case (car fm)
		    ((until)
		     (let ((fm1 `(<<F>> ,(third fm))))
		       `(iff ,(call *PROPS* fm1 i )
			     (or ,(call *PROPS* fm1 (1- i) )
				 (and ,(the-inloop i)
				      ,(call *PROPS* (third fm) i ))))))

		    ((release)
		     (let ((fm1 `(<<G>> ,(third fm))))
		       `(iff ,(call *PROPS* fm1 i )
			     (and ,(call *PROPS* fm1 (1- i) )
				  (or (not ,(the-inloop i))
				      ,(call *PROPS* (third fm) i ))))))))))))


(defun gen-evt-past ()
  (format t "gen-evt-past...")
  (let ((k (kripke-k *PROPS*)))
    (append 
      (loop for fm in (kripke-past *PROPS*) append
	    (case (car fm)
	      ((since)
	       (let ((fm1 `(<<O>> ,(third fm))))
		 (list
		   `(impl ,(PoolExists)
			  (impl
			    ,(call *PROPS* fm 0)
			    ,(call *PROPS* fm1 0)))
		   `(not
		      ,(call *PROPS* fm1 k)))))
	      ((trigger)
	       (let ((fm1 `(<<H>> ,(third fm))))
		 (list
		   `(impl ,(PoolExists)
			  (impl
			    ,(call *PROPS* fm1 0)
			    ,(call *PROPS* fm 0)))
		   (call *PROPS* fm1 k))))))
      (loop for i from 0 to (1- k) append
	    (loop for fm in (kripke-past *PROPS*)
		  unless (or (eq (car fm) 'yesterday) (eq (car fm) 'past) (eq (car fm) 'lasted) 
			     (eq (car fm) 'withinp)) collect
		  (case (car fm)
		    ((since)
		     (let ((fm1 `(<<O>> ,(third fm))))
		       `(iff ,(call *PROPS* fm1 i)
			     (or ,(call *PROPS* fm1 (1+ i) )
				 (and ,(the-inpool i)
				      ,(call *PROPS* (third fm) i ))))))

		    ((trigger)
		     (let ((fm1 `(<<H>> ,(third fm))))

		       `(iff ,(call *PROPS* fm1 i)
			     (and ,(call *PROPS* fm1 (1+ i) )
				  (or (not ,(the-inpool i))
				      ,(call *PROPS* (third fm) i ))))))))))))

(defun metric-constraints ()
  (format t "metric-constraints...")(force-output)
  (loop for fm in (kripke-cont *PROPS*)
	collect
	(case (car fm)
	  ((<<MF>>)
	   `(iff ,(call *PROPS* fm 0)
		 ,(cons 'or
			(loop for i from 1 to (kripke-k *PROPS*) collect
			      `(and ,(the-l i)
				    ,(call *PROPS* (second fm) (+ i (mod (third fm)
									 (+ (kripke-k *PROPS*) 
									    (- i) 1)))))))))
	  ((<<MP>>)
	   `(iff ,(call *PROPS* fm 0)
		 ,(cons 'or
			(loop for i from 0 to (1- (kripke-k *PROPS*)) collect
			      `(and ,(the-p i)
				    ,(call *PROPS* (second fm) (- i (mod (third fm)
									 (1+ i))))))))))))

(defun stabilize-past ()
  (format t "stabilize-past...") (force-output)
  (loop for i from 1 to (kripke-k *PROPS*) append
	(loop for fm in (kripke-past *PROPS*)
	      unless  (or (eq (car fm) 'yesterday)(eq (car fm) 'since) (eq (car fm) 'trigger)) collect
	      (let ((prec nil) (tprec 0))
		(case (car fm)
		  ((past)
		   (loop for f in (kripke-past *PROPS*) do
			 (if (and (eq (car f) (car fm))
				  (< (third f) (third fm))
				  (> (third f) tprec)
				  (equal (second fm) (second f)))
			   (progn
			     (setf tprec (third f)))))
		   (if (and (not (Zerop tprec)) (= tprec (1- (third fm))))
		     t
		     `(impl ,(the-l i)
			    ,(append `(and)
				     (loop for j from (+ tprec 2) to (min (third fm) i) collect
					   (iff (call *PROPS* (second fm) (- i j))
						(call *PROPS* (second fm) 
						      (- (kripke-k *PROPS*) 
							 (mod (1- j) (+ (kripke-k *PROPS*) (- i) 1))))))
				     (loop for j from (1+ (max (+ tprec 2) (min (third fm) i))) to (third fm) collect
					   (iff (call *PROPS* (list '<<MP>> (second fm) (- j (1+ i))) 0)
						(call *PROPS* (second fm) 
						      (- (kripke-k *PROPS*) 
							 (mod (1- j) (+ (kripke-k *PROPS*) (- i) 1))))))))))

		  ((lasted)
		   (loop for f in (kripke-past *PROPS*) do
			 (if (and (eq (car f) (car fm))
				  (< (third f) (third fm))
				  (> (third f) tprec)
				  (equal (second fm) (second f)))
			   (progn
			     (setf tprec (third f))
			     (setf prec (call *PROPS* f i)))))

		   (if (and (not (Zerop tprec)) (= tprec (1- (third fm))))
		     t
		     `(impl ,(the-inLoop i)
			    (iff ,(call *PROPS* fm i)
				 ,(append '(and) 
					  (when prec `(,prec))
					  (loop for j from 0
						to (min (1- (third fm)) (- (kripke-k *PROPS*) i)) collect
						(list 'or
						      (call *PROPS* (second fm) (- (kripke-k *PROPS*) j))
						      (the-inLoop (max 0 (+ i (- (third fm))  j)))))

					  (loop for j from (1+ tprec) to (min i (third fm)) collect
						(list 'or
						      `(not ,(the-InLoop (- i j)))
						      (call *PROPS* (second fm) (- i j) ))))))))

		  ((withinp)
		   (loop for f in (kripke-past *PROPS*) do
			 (if (and (eq (car f) (car fm))
				  (< (third f) (third fm))
				  (> (third f) tprec)
				  (equal (second fm) (second f)))
			   (progn
			     (setf tprec (third f))
			     (setf prec (call *PROPS* f i)))))
		   (if (and (not (Zerop tprec)) (= tprec (1- (third fm))))
		     t
		     `(impl ,(the-InLoop i)
			    (iff ,(call *PROPS* fm i)
				 ,(append '(or)
					  (when prec `(,prec))
					  (loop for j from 0
						to (min (1- (third fm)) (- (kripke-k *PROPS*) i)) collect
						(list 'and
						      (call *PROPS* (second fm) (- (kripke-k *PROPS*) j))
						      `(not ,(the-inLoop (max 0 (+ i (- (third fm)) 
										   j))))))
					  (loop for j from (1+ tprec) to (min i (third fm)) collect
						(list 'and
						      (the-InLoop (- i j))
						      (call *PROPS* (second fm) (- i j) ))))))))

		  )))))



(defun stabilize-futr ()
  (format t "stabilize-futr...")
  (loop for i from 0 to (1- (kripke-k *PROPS*)) append
	(loop for fm in (kripke-futr *PROPS*)
	      unless  (or (eq (car fm) 'next) (eq (car fm) 'until) (eq (car fm) 'release)) collect
	      (let ((prec nil) (tprec 0))
		(progn 		      
		  (loop for f in (kripke-futr *PROPS*) do
			(if (and (eq (car f) (car fm))
				 (equal (second fm) (second f))
				 (< (third f) (third fm))
				 (> (third f) tprec)
				 )
			  (progn
			    (setf tprec (third f)))))
		  (if (and (not (Zerop tprec)) (= tprec (1- (third fm))))
		    t
		    (case (car fm)
		      ((futr)
		       `(impl ,(the-p i)
			      ,(append '(and)
				       (loop for j from (1+ tprec) to (min (third fm) (- (kripke-k *PROPS*) i)) collect
					     (iff (call *PROPS* (second fm) (+ i j))
						  (call *PROPS* (second fm) 
							(mod (1- (mod j (1+ i) )) (1+ i)))))

				       (loop for j from (max (1+ tprec) (1+ (min (third fm) (- (kripke-k *PROPS*) i)))) 
					     to (third fm) collect
					     (iff (call *PROPS* 
							(list '<<MF>> (second fm) (- j (1+ (- (kripke-k *PROPS*) i))) )0)
						  (call *PROPS* (second fm) 
							(mod (1- (mod j (1+ i) )) (1+ i))))))))

		      ((lasts)
		       (loop for f in (kripke-futr *PROPS*) do
			     (if (and (eq (car f) (car fm))
				      (< (third f) (third fm))
				      (> (third f) tprec)
				      (equal (second fm) (second f)))
			       (progn
				 (setf tprec (third f))
				 (setf prec (call *PROPS* f i)))))
		       (if (and (not (Zerop tprec)) (= tprec (1- (third fm))))
			 t
			 `(impl ,(the-inPool i)
				(iff ,(call *PROPS* fm i)
				     ,(append '(and)
					      (unless (not prec) `(,prec))
					      (loop for j from 0
						    to (min (1- (third fm)) i) collect
						    (list 'or
							  (call *PROPS* (second fm) j)
							  (the-inPool (min (kripke-k *PROPS*) (+ i (third fm)  (- j))))))

					      (loop for j from (1+ tprec) to (min (- (kripke-k *PROPS*) i) (third fm)) collect
						    (list 'or
							  `(not ,(the-InPool (+ i j)))
							  (call *PROPS* (second fm) (+ i j) ))))))))

		      ((withinf)
		       (loop for f in (kripke-futr *PROPS*) do
			     (if (and (eq (car f) (car fm))
				      (< (third f) (third fm))
				      (> (third f) tprec)
				      (equal (second fm) (second f)))
			       (progn
				 (setf tprec (third f))
				 (setf prec (call *PROPS* f i)))))
		       (if (and (not (Zerop tprec)) (= tprec (1- (third fm))))
			 t
			 `(impl ,(the-InPool i)
				(iff ,(call *PROPS* fm i)
				     ,(append '(or)
					      (unless (not prec) `(,prec))
					      (loop for j from 0
						    to (min (1- (third fm)) i) collect
						    (list 'and
							  (call *PROPS* (second fm)  j)
							  `(not ,(the-inPool (min (kripke-k *PROPS*) (+ i (third fm)
													(- j)))))))
					      (loop for j from (1+ tprec) to (min (- (kripke-k *PROPS*) i) (third fm)) collect
						    (list 'and
							  (the-InPool (+ i j))
							  (call *PROPS* (second fm) (+ i j) )))))))))))))))



(defun the-big-formula (fma loop-free)
  (cons (call *PROPS* fma 1)
	(if loop-free
	  ;; 	  (nconc
	  ;; 	    (LoopConstraints)
	  ;; 	    (PoolConstraints)
	  ;; 	    (gen-bool)
	  ;; 	    (gen-futr)
	  ;; 	    (gen-evt-futr)
	  ;; 	    (gen-past)
	  ;; 	    (gen-evt-past)
	  ;; 	    (stabilize-past)
	  ;; 	    (stabilize-futr)
	  ;; 	    (LoopFree))
	  (nconc
	    (LoopConstraints)
	    (PoolConstraints)
	    (gen-bool)
	    (LastStateFormula)
	    (FirstStateFormula)
	    (gen-futr)
	    (gen-evt-futr)
	    (gen-past)
	    (gen-evt-past)
	    (stabilize-past)
	    (stabilize-futr)
	    (LoopFree))
	  (nconc
	    (LoopConstraints)
	    (PoolConstraints)
	    (gen-bool)
	    (LastStateFormula)
	    (FirstStateFormula)
	    (gen-futr)
	    (gen-evt-futr)
	    (gen-past)
	    (gen-evt-past)
	    (stabilize-past)
	    (stabilize-futr)
	    (metric-constraints)
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

    (loop for i from 0 to (1- the-k) append
	  (mapcar (lambda (x)
		    (call-recur x i)) trans))))


; --- MAIN ---

(defun zot (the-time spec 
		     &key 
		     (loop-free nil) 
		     (transitions nil)
		     (negate-transitions nil)
		     (declarations nil))

  (setf trio-utils:*metric-operators* t)

  (let ((formula (deneg (trio-to-ltl spec))))
    (setf *PROPS* (make-kripke the-time formula))
    (format t "This is mbeZot~%")

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
