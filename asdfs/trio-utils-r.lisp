; --------------------------------------------------------------------------
;
; Copyright (C) 2006-2010 Matteo Pradella (pradella@elet.polimi.it)
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

; NOTICE: this is the former "smt-utils". For the last, genuine trio-utils, 
; please look in old_stuff

(in-package :cl-user)

(defpackage :trio-utils
  (:use :common-lisp) 
  (:export
    :clean-up
    :&&
    :||
    :!!
    :->
    :<-
    :<->
    :[<]
    :[>]
    :[>=]
    :[<=]
    :[=]
    :[!=]
    :[+]
    :[-]
    :[*]
    :[/]
    :[%]
    :define-tvar
    :define-var
    :timed
    :uf
    :*int*
    :*real*
    :*bool*
    :funct
    :-V-
    :array
    :only-one
    :-E-
    :-A-
    :-P- 
    :with-time
    :tempus
    :define-variable
    :define-item
    :define-array
    :*zot-item-constraints*
    :case-clause
    :and-case
    :or-case
    :else ; used by and-case and or-case
    :trio-to-ltl    
    :**inloop**
    :**inpool**
    :**pool**
    :**loop**
    :i_loop
    :i_pool
    :{
    :}
    :true
    :unsat
    :sat
    :forall
    :exists
    :pred
    ; -- TRIO ops --
    ; Note that they are necessary, to avoid shadowing
    ; in CL-USER when writing a spec.
    :impl
    :iff
    :niff
    :futr
    :past
    :dist
    :lasts   :lasts_ee   :lasts_ie   :lasts_ei   :lasts_ii
    :lasted  :lasted_ee  :lasted_ie  :lasted_ei  :lasted_ii
    :withinf :withinf_ee :withinf_ie :withinf_ei :withinf_ii 
    :withinp :withinp_ee :withinp_ie :withinp_ei :withinp_ii 
    :lasttime :lasttime_ee :lasttime_ie :lasttime_ei :lasttime_ii
    :nexttime :nexttime_ee :nexttime_ie :nexttime_ei :nexttime_ii
    :somf :somf_e :somf_i :som
    :somp :somp_e :somp_i
    :alwf :alwf_e :alwf_i :alw
    :alwp :alwp_e :alwp_i
    :until :until_ie :until_ee :until_ii :until_ei
    :until_ie_<=_<=
    :until_ie_>=
    :since :since_ie :since_ee :since_ii :since_ei
    :since_ie_<=_<=
    :since_ie_>=
    :release
    :trigger
    :next 
    :yesterday
    :zeta
    :Zlasted :Zwithinp :Zpast :Zlasttime
    ; -- Exotic stuff: handle with care --
    :until-b :until-b-v :until-b-^
    :since-b :since-b-v :since-b-^
    :release-b :release-b-^ :release-b-v
    :trigger-b :trigger-b-^ :trigger-b-v

    :until-b-inf :until-b-v-inf :until-b-^-inf
    :since-b-inf :since-b-v-inf :since-b-^-inf
    :release-b-inf :release-b-^-inf :release-b-v-inf
    :trigger-b-inf :trigger-b-^-inf :trigger-b-v-inf

    :diamond :diamond-inf
    :diamond-p :diamond-inf-p
    :box :box-inf
    :box-p :box-inf-p

    :*metric-operators*
    :*smt-metric-futr-operators*
    :*smt-metric-past-operators*
    :*items*
    :*arith-items*
    

    :declare-item
    :declare-array

    ))


(in-package :trio-utils)


; *metric-operators* must be set to true if the encoding natively supports
; metric operators (like lasts) -- it is used e.g. in mbezot
; when nil, operators are translated into plain old LTL
(defvar *metric-operators* nil)
(defvar *smt-metric-futr-operators* nil)
(defvar *smt-metric-past-operators* nil)


; *zot-item-constraints* will contain exclusive constraints for defined items
; (see define-item macro below) 
; CAVEAT this means that define-item has side effect
; and a sequence of commands like:
; define-item - zot - define-item - zot
; will return wrong results for the second zot call

(defvar *zot-item-constraints* nil)


; Hash table used for defining items and their encoding
(defvar *items* (make-hash-table :test #'equal))

(defvar *arith-items* (make-hash-table :test #'equal))

; Call clean-up before loading other specs containing define-items or 
; define-array
(defun clean-up ()
  (setq *zot-item-constraints* nil ; discard old constraints
	*metric-operators*     nil ; by default, no native metric operators
	*smt-metric-futr-operators* nil
	*smt-metric-past-operators* nil
	*items* (make-hash-table :test #'equal)))


; --- Quantifications ---

(defun forall (domain formula)
  (cons 'and (mapcar formula domain)))

(defun exists (domain formula)
  (cons 'or (mapcar formula domain)))

(defun pred (&rest args)
  (with-input-from-string (z (reduce (lambda (x y)
				       (concatenate 'string x "_" y)) 
				     (mapcar (lambda (x)
					       (cond 
						 ((or (numberp x)(symbolp x))
						  (format nil "~S" x))
						 (t x)))
					     args)))
    (read z)))


; --- temporal operators and their semantics ---


(defun the-futr (fma i)
  (cond
    ((< i 0)
     nil)
    ((zerop i)
     fma)
    (t
      (if (or *metric-operators* *smt-metric-futr-operators*)
	`(futr ,fma ,i)
	`(next ,(the-futr fma (1- i)))))))


(defun the-past (fma i)
  (cond
    ((< i 0)
     nil)
    ((zerop i)
     fma)
    (t
      (if (or *metric-operators* *smt-metric-past-operators*)
	`(past ,fma ,i)
	`(yesterday ,(the-past fma (1- i))))))
  )

(defun the-lasts (fma i) ; _ei!
  (cond 
    ((< i 1)
     t)
    ((= i 1)
     `(next ,fma))
    (t
      (if (or *metric-operators* *smt-metric-futr-operators*)
	`(lasts ,fma ,i)
	`(next (and ,fma ,(the-lasts fma (1- i))))))))

(defun the-lasted (fma i) ; _ei!
  (cond
    ((< i 1)
     t)
    ((= i 1)
     `(yesterday ,fma))
    (t
      (if (or *metric-operators* *smt-metric-past-operators*)
	`(lasted ,fma ,i)
	`(yesterday (and ,fma ,(the-lasted fma (1- i))))))))

(defun the-withinf (fma i) ; _ei!
  (cond
    ((< i 1)
     nil)
    ((= i 1)
     `(next ,fma))
    (t
      (if (or *metric-operators* *smt-metric-futr-operators*)
	`(withinf ,fma ,i)
	`(next (or ,fma ,(the-withinf fma (1- i))))))))

(defun the-withinp (fma i) ; _ei!
  (cond
    ((< i 1)
     nil)
    ((= i 1)
     `(yesterday ,fma))
    (t
      (if (or *metric-operators* *smt-metric-past-operators*)
	`(withinp ,fma ,i)
	`(yesterday (or ,fma ,(the-withinp fma (1- i))))))))


(defun the-until-b-^ (t1 t2 fma1 fma2)
  (cond
    ((< t2 t1)
     nil)
    ((= t1 -1)
     `(or ,(the-until-b-^ 0 t2 fma1 fma2)
	  (yesterday ,fma2)))
    ((= t1 t2 0) 
     fma2)
    ((= t1 0)
     `(or ,fma2 (and ,fma1 (next ,(the-until-b-^ 0 (1- t2) fma1 fma2)))))
    (t
      (if *metric-operators*
	`(and ,fma1 ,(the-lasts fma1 (1- t1)) ,(the-futr (the-until-b-^ 0 (- t2 t1) fma1 fma2) t1))
	`(and ,fma1 (next ,(the-until-b-^ (1- t1) (1- t2) fma1 fma2)))))))

(defun the-release-b-^ (t1 t2 fma1 fma2)
  (if *metric-operators*
    `(and ,fma2 (lasts ,fma2 ,(1- t1)) (futr (release-b ,(- t2 t1) ,fma1 ,fma2) ,t1))
    `(not (until-b-^ ,t1 (not ,fma1) (not ,fma2)))))


(defun the-since-b-^ (t1 t2 fma1 fma2)
  (cond
    ((< t2 t1)
     nil)
    ((= t1 -1)
     `(or ,(the-since-b-^ 0 t2 fma1 fma2)
	  (next ,fma2)))
    ((= t1 t2 0) 
     fma2)
    ((= t1 0)
     `(or ,fma2 (and ,fma1 (yesterday ,(the-since-b-^ 0 (1- t2) fma1 fma2)))))
    (t
      (if *metric-operators*
	`(and ,fma1 ,(the-lasted fma1 (1- t1)) ,(the-past (the-since-b-^ 0 (- t2 t1) fma1 fma2) t1))
	`(and ,fma1 (yesterday ,(the-since-b-^ (1- t1) (1- t2) fma1 fma2)))))))

(defun the-trigger-b-^ (t1 t2 fma1 fma2)
  (if *metric-operators*
    `(and ,fma2 (lasted ,fma1 ,(1- t1)) (past (trigger-b ,(- t2 t1) ,fma1 ,fma2) ,t1))
    `(not ,(trio-to-ltl `(since-b-^ ,t1 ,t2 (not ,fma1) (not ,fma2))))))


(defun the-until-b-^-inf (t1 fma1 fma2) ; t2 = Infinity
  (cond
    ((= t1 -1)
     `(or ,(the-until-b-^-inf 0 fma1 fma2)
	  (yesterday ,fma2)))
    ((= t1 0)
     `(until ,fma1 ,fma2))
    (t
      (if *metric-operators*
	`(and ,fma1 ,(the-lasts fma1 (1- t1)) ,(the-futr (until fma1 fma2) t1))
	`(and ,fma1 (next ,(the-until-b-^-inf (1- t1) fma1 fma2)))))))


(defun the-since-b-^-inf (t1 fma1 fma2) ; t2 = Infinity
  (cond
    ((= t1 -1)
     `(or ,(the-since-b-^-inf 0 fma1 fma2)
	  (next ,fma2)))
    ((= t1 0)
     `(since ,fma1 ,fma2))
    (t
      (if *metric-operators*
	`(and ,fma1 ,(the-lasted fma1 (1- t1)) ,(the-past (since fma1 fma2) t1))
	`(and ,fma1 (yesterday ,(the-since-b-^-inf (1- t1) fma1 fma2)))))))

(defun the-nexttime (fma i)
  (assert (>= i 1))
  (if (= i 1)
    `(next ,fma)
    `(next (and (not ,fma) ,(the-nexttime fma (1- i))))))

(defun the-lasttime (fma i)
  (assert (>= i 1))
  (if (= i 1)
    `(yesterday ,fma)
    `(yesterday (and (not ,fma) ,(the-lasttime fma (1- i))))))



(defun trio-to-ltl (f)
  "defines the semantics of TRIO in terms of PLTL"
  (cond 
    ((or (symbolp f) (stringp f) (numberp f) (typep f 'boolean))
     f)
    (t
      (case (car f)
	((impl)
	 `(or ,(trio-to-ltl `(not ,(second f))) ,(trio-to-ltl (third f))))

	((iff)
	 (let ((x (trio-to-ltl (second f)))
	       (y (trio-to-ltl (third f))))
	   `(and (or ,x (not ,y)) (or ,y (not ,x)))))

	((niff)
	 (let ((x (trio-to-ltl (second f)))
	       (y (trio-to-ltl (third f))))
	   `(or (and ,x (not ,y)) (and ,y (not ,x)))))

	((futr)
	 (the-futr (trio-to-ltl (second f)) (third f)))
	((past)
	 (the-past (trio-to-ltl (second f)) (third f)))
	((dist)
	 (destructuring-bind (op fma k) f
	   (declare (ignore op))
	   (if (>= k 0)
	     (trio-to-ltl (list 'futr fma k))
	     (trio-to-ltl (list 'past fma (- k))))))

	((lasts lasts_ei)
	 (destructuring-bind (op fma k) f
	   (declare (ignore op))
	   (the-lasts (trio-to-ltl fma) k)))
	((lasts_ii)
	 (destructuring-bind (op fma k) f
	   (declare (ignore op))
	   (if (< k 0)
	     t
	     (list 'and (trio-to-ltl fma) 
		   (the-lasts (trio-to-ltl fma) k)))))
	((lasts_ee)
	 (destructuring-bind (op fma k) f
	   (declare (ignore op))
	   (the-lasts (trio-to-ltl fma) (1- k))))
	((lasts_ie)
	 (destructuring-bind (op fma k) f
	   (declare (ignore op))
	   (if (<= k 0)
	     t
	     (list 'and (trio-to-ltl fma)
		   (the-lasts (trio-to-ltl fma) (1- k))))))
	((lasted lasted_ei)
	 (the-lasted (trio-to-ltl (second f)) (third f)))
	((lasted_ii)
	 (destructuring-bind (op fma k) f
	   (declare (ignore op))
	   (if (< k 0)
	     t
	     (list 'and (trio-to-ltl fma) 
		   (the-lasted (trio-to-ltl fma) k)))))
	((lasted_ee)
	 (destructuring-bind (op fma k) f
	   (declare (ignore op))
	   (the-lasted (trio-to-ltl fma) (1- k))))
	((lasted_ie)
	 (destructuring-bind (op fma k) f
	   (declare (ignore op))
	   (if (<= k 0)
	     t
	     (list 'and (trio-to-ltl fma)
		   (the-lasted (trio-to-ltl fma) (1- k))))))

	((withinf withinf_ei)
	 (destructuring-bind (op fma k) f
	   (declare (ignore op))
	   (the-withinf (trio-to-ltl fma) k)))
	((withinf_ii)
	 (destructuring-bind (op fma k) f
	   (declare (ignore op))
	   (if (< k 0)
	     nil
	     (list 'or (trio-to-ltl fma) 
		   (the-withinf (trio-to-ltl fma) k)))))
	((withinf_ee)
	 (destructuring-bind (op fma k) f
	   (declare (ignore op))
	   (the-withinf (trio-to-ltl fma) (1- k))))
	((withinf_ie)
	 (destructuring-bind (op fma k) f
	   (declare (ignore op))
	   (if (<= k 0)
	     nil
	     (list 'or (trio-to-ltl fma)
		   (the-withinf (trio-to-ltl fma) (1- k))))))

	((withinp withinp_ei)
	 (destructuring-bind (op fma k) f
	   (declare (ignore op))
	   (the-withinp (trio-to-ltl fma) k)))
	((withinp_ii)
	 (destructuring-bind (op fma k) f
	   (declare (ignore op))
	   (if (< k 0)
	     nil
	     (list 'or (trio-to-ltl fma) 
		   (the-withinp (trio-to-ltl fma) k)))))
	((withinp_ee)
	 (destructuring-bind (op fma k) f
	   (declare (ignore op))
	   (the-withinp (trio-to-ltl fma) (1- k))))
	((withinp_ie)
	 (destructuring-bind (op fma k) f
	   (declare (ignore op))
	   (if (<= k 0)
	     nil
	     (list 'or (trio-to-ltl fma)
		   (the-withinp (trio-to-ltl fma) (1- k))))))

	((somf somf_i)
	 `(until t ,(trio-to-ltl (second f))))
	((somf_e)
	 `(next (until t ,(trio-to-ltl (second f)))))

	((alwf alwf_i)
	 `(release nil ,(trio-to-ltl (second f))))
	((alwf_e)
	 `(next (release nil ,(trio-to-ltl (second f)))))

	((somp somp_i)
	 `(since t ,(trio-to-ltl (second f))))
	((somp_e)
	 `(yesterday (since t ,(trio-to-ltl (second f)))))

	((alwp alwp_i)
	 `(trigger nil ,(trio-to-ltl (second f))))
	((alwp_e)
	 `(yesterday (trigger nil ,(trio-to-ltl (second f)))))

	((alw)
	 (trio-to-ltl (list 'and 
			    (list 'alwf_i (second f))
			    (list 'alwp_e (second f)))))

	((som)
	 (trio-to-ltl (list 'or 
			    (list 'somf_i (second f))
			    (list 'somp_e (second f)))))


	((lasttime lasttime_ei)
	 (the-lasttime (trio-to-ltl (second f)) (third f)))
	((lasttime_ii)
	 (list 'and (list 'not (second f)) 
	       (the-lasttime (trio-to-ltl (second f)) (third f))))
	((lasttime_ee)
	 (the-lasttime (trio-to-ltl (second f)) (1- (third f))))
	((lasttime_ie)
	 (list 'and (list 'not (second f))
	       (the-lasttime (trio-to-ltl (second f)) (1- (third f)))))

	((nexttime nexttime_ei)
	 (the-nexttime (trio-to-ltl (second f)) (third f)))
	((nexttime_ii)
	 (list 'and (list 'not (second f)) 
	       (the-nexttime (trio-to-ltl (second f)) (third f))))
	((nexttime_ee)
	 (the-nexttime (trio-to-ltl (second f)) (1- (third f))))
	((nexttime_ie)
	 (list 'and (list 'not (second f))
	       (the-nexttime (trio-to-ltl (second f)) (1- (third f)))))


	; About the various versions of Until (Since is analogous):
	; 
	; 0                    B
	; ---------------------- = LTL Until (ie)
	; AAAAAAAAAAAAAAAAAAAAA
	;
	; Note: B can always appear at 0
	;
	; Until LTL == Until_ie(A,B)
	; Trio_Until(A,B) := Until_ee(A,B) := B | X(A U B)
	; Until_ii := A U A&B
	; Until_ei := B | X(A U A&B)
	; 
	; Until_ie_<=_<=(k1,k2,A,B)
	; Until_ie_>=(k,A,B)

	((until_ie)
	 `(until ,(trio-to-ltl (second f)) ,(trio-to-ltl (third f))))
	((until_ee)
	 `(or ,(trio-to-ltl (third f)) (next (until ,(trio-to-ltl (second f)) ,(trio-to-ltl (third f))))))
	((until_ii)
	 `(until ,(trio-to-ltl (second f)) (and ,(trio-to-ltl (second f)) ,(trio-to-ltl (third f)))))
	((until_ei)
	 `(or ,(trio-to-ltl (third f)) (next (until ,(trio-to-ltl (second f)) (and ,(trio-to-ltl (second f)) ,(trio-to-ltl (third f)))))))


	((since_ie)
	 `(since ,(trio-to-ltl (second f)) ,(trio-to-ltl (third f))))
	((since_ee)
	 `(or ,(trio-to-ltl (third f))(yesterday (since ,(trio-to-ltl (second f)) ,(trio-to-ltl (third f))))))
	((since_ii)
	 `(since ,(trio-to-ltl (second f)) (and ,(trio-to-ltl (second f)) ,(trio-to-ltl (third f)))))
	((since_ei)
	 `(or ,(trio-to-ltl (third f)) (yesterday (since ,(trio-to-ltl (second f)) (and ,(trio-to-ltl (second f)) ,(trio-to-ltl (third f)))))))


	((until-b-^ until_ie_<=_<=)
	 (apply #'the-until-b-^ (mapcar #'trio-to-ltl (cdr f))))

	((since-b-^ since_ie_<=_<=)
	 (apply #'the-since-b-^ (mapcar #'trio-to-ltl (cdr f))))

	((until-b-^-inf until_ie_>=)
	 (apply #'the-until-b-^-inf (mapcar #'trio-to-ltl (cdr f))))

	((since-b-^-inf since_ie_>=)
	 (apply #'the-since-b-^-inf (mapcar #'trio-to-ltl (cdr f))))

	((release-b-^ release-b)
	 (destructuring-bind (t1 t2 f1 f2) (cdr f)
	   `(not ,(trio-to-ltl `(until-b-^ ,t1 ,t2 (not ,f1) (not ,f2))))))  

	((trigger-b-^ trigger-b)
	 (destructuring-bind (t1 t2 f1 f2) (cdr f)
	   `(not ,(trio-to-ltl `(since-b-^ ,t1 ,t2 (not ,f1) (not ,f2))))))

	((release-b-^-inf release-b-inf)
	 (destructuring-bind (t1 f1 f2) (cdr f)
	   `(not ,(trio-to-ltl `(until-b-^-inf ,t1 (not ,f1) (not ,f2))))))  

	((trigger-b-^-inf trigger-b-inf)
	 (destructuring-bind (t1 f1 f2) (cdr f)
	   `(not ,(trio-to-ltl `(since-b-^-inf ,t1 (not ,f1) (not ,f2))))))

	((until-b-v until-b)
	 (destructuring-bind (t1 t2 f1 f2) (cdr f)
	   (trio-to-ltl `(until-b-^ ,t1 ,t2 ,f1 (and ,f1 ,f2)))))

	((since-b-v since-b)
	 (destructuring-bind (t1 t2 f1 f2) (cdr f)
	   (trio-to-ltl `(since-b-^ ,t1 ,t2 ,f1 (and ,f1 ,f2)))))

	((until-b-v-inf until-b-inf)
	 (destructuring-bind (t1 f1 f2) (cdr f)
	   (trio-to-ltl `(until-b-^-inf ,t1 ,f1 (and ,f1 ,f2)))))

	((since-b-v-inf since-b-inf)
	 (destructuring-bind (t1 f1 f2) (cdr f)
	   (trio-to-ltl `(since-b-^-inf ,t1 ,f1 (and ,f1 ,f2)))))

	((release-b-v)
	 (destructuring-bind (t1 t2 f1 f2) (cdr f)
	   `(not ,(trio-to-ltl `(until-b-v ,t1 ,t2 (not ,f1) (not ,f2))))))  

	((trigger-b-v)
	 (destructuring-bind (t1 t2 f1 f2) (cdr f)
	   `(not ,(trio-to-ltl `(since-b-v ,t1 ,t2 (not ,f1) (not ,f2))))))

	((release-b-v-inf)
	 (destructuring-bind (t1 f1 f2) (cdr f)
	   `(not ,(trio-to-ltl `(until-b-v-inf ,t1 (not ,f1) (not ,f2))))))  

	((trigger-b-v-inf)
	 (destructuring-bind (t1 f1 f2) (cdr f)
	   `(not ,(trio-to-ltl `(since-b-v-inf ,t1 (not ,f1) (not ,f2))))))

	(t
	  (cons (car f) (mapcar #'trio-to-ltl (cdr f))))))))

; --------------------
; *** fancy syntax ***
; --------------------

(defun && (&rest args)
  `(and ,@args))

(defun || (&rest args)
  `(or ,@args))

(defun !! (arg)
  `(not ,arg))

(defun -> (x y)
  `(impl ,x ,y))

(defun <- (x y)
  `(impl ,y ,x))

(defun <-> (x y)
  `(iff ,x ,y))


;-----------------------------
; *** Arithmetic operators ***
;-----------------------------


(defun [<] (x y)
  `(< ,x, y))

(defun [>] (x y)
  `(> ,x ,y))

(defun [<=] (x y)
  `(<= ,x, y))

(defun [>=] (x y)
  `(>= ,x ,y))

(defun [=] (x y)
  `(= ,x ,y))

(defun [!=] (x y)
  `(not (= ,x ,y)))


(defun [+] (&rest args)
  `(+ ,@args))

(defun [-] (&rest args)
  `(- ,@args))

(defun [*] (&rest args)
  `(* ,@args))

(defun [/] (x y)
  `(/ ,x ,y))

(defun [%] (x y)
  `(mod ,x ,y))

(defparameter *int* "Int")
(defparameter *real* "Real")
(defparameter *bool* "Bool")


;; (set-macro-character #\[
;; 		     (lambda (stream char)
;; 		       (declare (ignore char))
;; 		       (list 'quote (read-delimited-list #\] stream t))))
;; (set-macro-character #\] (get-macro-character #\) nil))


(defun ufun (&rest args)
  `(,@args))

(defmacro -V- (var &rest body)
  (if (null body)
      `(quote ,var)
      `(ufun (quote ,var) ,@body)) )



;; !!! THIS DOES NOT WORK WITH CLISP !!!
'(set-dispatch-macro-character #\# #\(  
			      #'(lambda (stream char str)
				  (declare (ignore char) (ignore str))
				  `(list 'tempus ,@(read-delimited-list #\) stream t))))

		       


;-----------------------------
; *** define operators ***
;-----------------------------



(defun only-one (&rest items)
  (cons 'or
	(mapcar
	  (lambda (x)
	    `(and ,x  
		  ,@(mapcar (lambda (y) `(not ,y)) 
			    (remove-if (lambda (z) (equal x z)) items))))   
	  items)))

(defmacro define-operator (op arity)
  "defines a new operator. Arity=nil means unrestricted"
  (let ((args (gensym)))
    `(defun ,op (&rest ,args)
       (when ,arity
	 (unless (= ,arity (length ,args))
	   (error "Operator ~S has arity ~S - bad arguments: ~S" ',op ,arity ,args)))
       (cons ',op ,args))))


(defmacro define-ops (&rest ops)
  "takes a list of operators and their arities: eg. (alw 1 ...)"
  (unless (null ops)
    `(progn
       (define-operator ,(car ops) ,(cadr ops))
       (define-ops ,@(cddr ops)))))



(defmacro -E- (var set func)
  `(exists ,set (lambda (,var) ,func)))

(defmacro -A- (var set func)
  `(forall ,set (lambda (,var) ,func)))

(defmacro -P- (var &rest body)
  `(pred (quote ,var) ,@body))



(defmacro with-time (&rest body)
  `(list 'tempus ,@body))


; MMB-MR: Modified to make reals work.
(defun define-tvar (varname &rest domain) 
  (setf (gethash (intern (symbol-name varname)) *arith-items*) 
	(list 'timed (push "Real" domain ))))
  
 
	
(defun define-var (varname &rest domain) 
  (setf (gethash (intern (symbol-name varname)) *arith-items*) 
	(list 'uf domain)))


; --- variables & items ---


; -- legacy, deprecated part --
(defmacro define-variable (varname domain)
  (let ((_f_name (intern (concatenate 'string (symbol-name varname) "-IS")))
	(the-val (gensym))
	(the-x (gensym)))
    `(defun ,_f_name (,the-val)
       (cons 'and
	     (loop for ,the-x in ,domain collect
		   (if (equal ,the-x ,the-val)
		     (-P- ,varname ,the-x)
		     (list 'not (-P- ,varname ,the-x))))))))

; -- new part --

;; %%%%% SAVED OLD (UNARY_BASED) IMPLEMENTATION %%%%%
;;
;; (defmacro define-item (varname domain)
;;   (let ((_f_name (intern (concatenate 'string (symbol-name varname) "=")))
;; 	(the-val (gensym))
;; 	(var1 (gensym))
;; 	(var2 (gensym)))

;;     `(progn
;;        (unless *zot-item-constraints*
;; 	 (setf *zot-item-constraints* '(and)))

;;        (setf *zot-item-constraints* 
;; 	     (append *zot-item-constraints*
;; 		     (list
;; 		      (-E- ,var1 ,domain (&& 
;; 					  (-P- ,varname ,var1)
;; 					  (-A- ,var2 ,domain 
;; 					       (<- (equal ,var1 ,var2)
;; 						   (-P- ,varname ,var2))))))))

;;        (defun ,_f_name (,the-val)
;; 	 (-P- ,varname ,the-val)))))


;; (defmacro define-array (varname dom0 domain)
;;   (let ((_f_name (intern (concatenate 'string (symbol-name varname) "=")))
;; 	(the-val (gensym))
;; 	(the-val0 (gensym))
;; 	(var0 (gensym))	
;; 	(var1 (gensym))
;; 	(var2 (gensym)))

;;     `(progn
;;        (unless *zot-item-constraints*
;; 	 (setf *zot-item-constraints* '(and)))

;;        (setf *zot-item-constraints* 
;; 	  (append *zot-item-constraints*
;; 		  (list
;; 		   (-A- ,var0 ,dom0 
;; 			(-E- ,var1 ,domain 
;; 			     (&&
;; 			      (-P- ,varname ,var0 ,var1)
;; 			      (-A- ,var2 ,domain 
;; 				       (<- (equal ,var1 ,var2)
;; 					   (-P- ,varname ,var0 ,var2)))))))))

;;        (defun ,_f_name (,the-val0 ,the-val)
;; 	 (-P- ,varname ,the-val0 ,the-val)))))

;; %%%%%% END %%%%%%



  





;;-----------------------------------------------------------------------
;;item constraints, binary-based encoding
;;
;;Example: if |domain| = 20d = 10100b
;;
;;item_4 => (not item_3) and (item_2 => (not item_1) and (not item_0))
;;-----------------------------------------------------------------------

(defun item-constraints (varname len cur)
  (unless (< cur 0)
    (let ((cur1 0)(cur2 0))
      (-> (append '(and) 
		(loop for i = cur then (1- i)
		      until (or (eql (mod (floor (1- len) (expt 2 i)) 2) 0) (< i 0))
		      do (setf cur1 i)
		      collect

		      (pred varname i)
		      ))
	  (append '(and) 
		  (loop for i = (1- cur1) then (1- i)
			until (or (eql (mod (floor (1- len) (expt 2 i)) 2) 1) (< i 0)) collect
			(progn
			  (setf cur2 i)
			  (list 'not (pred varname i))))
		  (when (> cur2 0)
		    (list (item-constraints varname len (1- cur2)))))))))


;;-----------------------------------------------------------------------
;; Define-item is based on a base 2 counter, starting from 0
;;-----------------------------------------------------------------------
(defmacro define-item (varname domain) 
   (let ((_f_name (intern (concatenate 'string (symbol-name varname) "=")))
	(the-val (gensym)))

    `(if (= 1 (length ,domain))

      (defun ,_f_name (,the-val)
	 (-P- ,varname ,the-val))

      ; --- |domain| > 1 ---
      (progn
	 (unless *zot-item-constraints*
	   (setf *zot-item-constraints* '(and)))
	 (setf *zot-item-constraints*
	       (append *zot-item-constraints* (list (item-constraints  ',varname (length ,domain) 
								       (floor (log (1- (length ,domain)) 2)))))
	       )

	 (setf (gethash (symbol-name ',varname) *items*) ,domain)
	 (defun ,_f_name (,the-val)
	   t
	   (append '(and) 
		 (loop for i from 0 to (floor (log (1- (length ,domain)) 2)) collect
		       (if (eql (mod (floor (position ,the-val ,domain) (expt 2 i)) 2) 0)
			 (list 'not 
			       (-P- ,varname i))
			 (-P- ,varname i)))))))))



 



;;-----------------------------------------------------------------------
;; Helper function for define-array
;;-----------------------------------------------------------------------
(defun array-constraints (varname var0 len cur)
  (unless (< cur 0)
    (-> (cons 'and
	      (loop for i = cur then (1- i)
		    until (or (eql (mod (floor (1- len) (expt 2 i)) 2) 0) (< i 0)) collect
		    (progn
		      (setf cur  i)
		      (pred varname var0 i))))
	(append '(and)
		(loop for i = (1- cur) then (1- i)
		      until (or (eql (mod (floor (1- len) (expt 2 i)) 2) 1) (< i 0)) collect
		      (progn
			(setf cur i)
			(!! (pred varname var0 i))))
		(if (> cur 0)
		  (list (array-constraints varname var0 len (1- cur))))))))


;;-----------------------------------------------------------------------
;; Define-array, like define-item, is based on a base 2 counter, starting from 0
;;-----------------------------------------------------------------------
(defmacro define-array (varname dom0 domain)
  (let ((_f_name (intern (concatenate 'string (symbol-name varname) "=")))
	(the-val (gensym))
	(the-val0 (gensym))
	(var0 (gensym)))

    `(if (= 1 (length ,domain))

      (defun ,_f_name (,the-val0 ,the-val)
	 (-P- ,varname ,the-val0 ,the-val))

      ; --- |domain| > 1 ---
      (progn
	 (unless *zot-item-constraints*
	   (setf *zot-item-constraints* '(and)))
	 (setf *zot-item-constraints* 
	       (append *zot-item-constraints*
		       (list (-A- ,var0 ,dom0
				  (array-constraints ',varname ,var0 (length ,domain) (floor (log (1- (length ,domain)) 2)))))))

	 (loop for x in ,dom0 do
	       (setf (gethash (format nil "~S_~S" ',varname x) *items*) ,domain))

	 (defun ,_f_name (,the-val0 ,the-val)
	   (cons 'and
		 (loop for i from 0 to (floor (log (1- (length ,domain)) 2)) collect 
		       (if (eql (mod (floor (position  ,the-val ,domain) (expt 2 i)) 2) 0)
			 (list 'not 
			       (-P- ,varname ,the-val0 i))
			 (-P- ,varname ,the-val0 i)))))))))


; used for optional :declarations in Zot
(defmacro declare-item (item domain)
  (let ((var (gensym)))

    `(if (= 1 (length ,domain))
       (list (pred ',item (car ,domain)))

       (loop for ,var from 0 to (floor (log (1- (length ,domain)) 2)) collect
	     (pred ',item ,var)))))

; used for optional :declarations in Zot
(defmacro declare-array (array dom0 dom1)
  (let ((x (gensym))
	(i (gensym)))

    `(if (= 1 (length ,dom1))
       (loop for ,x in ,dom0 collect
	     (pred ',array ,x (car ,dom1)))

       (loop for ,x in ,dom0 append
	      (loop for ,i from 0 to (floor (log (1- (length ,dom1)) 2)) collect
		    (pred ',array ,x ,i))))))

; --- case clause ---

; old, original (and deprecated) version
(defun case-clause (&rest body)
  (let ((else-temp '(and)))
    (labels ((trans-case (c1 a1 &rest body)
			 (cond 
			   ((null body)
			    (if (eq c1 :else-clause)
			      (list (&& else-temp a1))
			      (list (&& c1 a1))))
			   (t 
			     (setf else-temp (append else-temp (list (list 'not c1))))
			     (cons (&& c1 a1)
				   (apply #'trans-case body))))))

      (cons 'or (apply #'trans-case body)))))


;new versions and variants

; ----------------------------------
; and/or-cases: examples & semantics
; ----------------------------------
;; (macroexpand-1 (quote      
;; 		(and-case (x '(1 2) y '(3 4))
;; 			  ((-P- P x) (-P- Q x))
;; 			  ((-P- R y) (-P- R1 y))
;; 			  (else (-P- R2 x)))
;; 		))
;; ===>
;; (-A- X '(1 2)
;;     (-A- Y '(3 4)
;;      (&& (-> (-P- R Y) (-P- R1 Y)) (-> (-P- P X) (-P- Q X))
;;       (-> (&& (!! (-P- R Y)) (!! (-P- P X))) (-P- R2 X)))))


;; (macroexpand-1 (quote      
;; 		(or-case (x '(1 2) y '(3 4))
;; 			  ((-P- P x) (-P- Q x))
;; 			  ((-P- R y) (-P- R1 y))
;; 			  (else (-P- R2 x)))
;; 		))
;; ===>	
;; (-E- X '(1 2)
;;     (-E- Y '(3 4)
;;      (|| (&& (-P- R Y) (-P- R1 Y)) (&& (-P- P X) (-P- Q X))
;;       (&& (!! (-P- R Y)) (!! (-P- P X)) (-P- R2 X)))))


(defmacro and-case (decls &rest clauses)
  (labels ((where-2 (q-symb body declarations)
		    (if declarations
		      `(,q-symb ,(first declarations) ,(second declarations) 
				,(where-2 q-symb body (cddr declarations)))
		      body)))

    (let ((lefts nil)
	  (fma   nil)
	  (elsf  nil))

      (dolist (c clauses)
	(if (eq (car c) 'else)
	  (setf elsf (second c))
	  (progn
	    (push `(!! ,(car c)) lefts)
	    (push `(-> ,(first c) ,(second c)) fma))))

      (push '&& lefts)
      (when elsf
	(setf elsf `(-> ,lefts ,elsf)))

      (if elsf
	(where-2 '-A- `(&& ,@fma ,elsf) decls)
	(where-2 '-A- `(&& ,@fma) decls)))))


(defmacro or-case (decls &rest clauses)
  (labels ((where-2 (q-symb body declarations)
		    (if declarations
		      `(,q-symb ,(first declarations) ,(second declarations) 
				,(where-2 q-symb body (cddr declarations)))
		      body)))

    (let ((lefts nil)
	  (fma   nil)
	  (elsf  nil))

      (dolist (c clauses)
	(if (eq (car c) 'else)
	  (setf elsf (second c))
	  (progn
	    (push `(!! ,(car c)) lefts)
	    (push `(&& ,(first c) ,(second c)) fma))))

      (when elsf
	(setf elsf `(&& ,@lefts ,elsf)))

      (if elsf
	(where-2 '-E- `(|| ,@fma ,elsf) decls)
	(where-2 '-E- `(|| ,@fma) decls)))))




; -------------------

(define-ops 
  impl 2
  iff  2
  futr 2
  past 2
  dist 2
  lasts 2  lasts_ee 2  lasts_ie 2  lasts_ei 2   lasts_ii 2
  lasted 2 lasted_ee 2 lasted_ie 2 lasted_ei 2 lasted_ii 2
  withinf 2 withinf_ee 2 withinf_ie 2 withinf_ei 2 withinf_ii 2
  withinp 2 withinp_ee 2 withinp_ie 2 withinp_ei 2 withinp_ii 2 
  lasttime 2 lasttime_ee 2 lasttime_ie 2 lasttime_ei 2 lasttime_ii 2
  nexttime 2 nexttime_ee 2 nexttime_ie 2 nexttime_ei 2 nexttime_ii 2
  somf 1 somf_e 1 somf_i 1 som 1
  somp 1 somp_e 1 somp_i 1
  alwf 1 alwf_e 1 alwf_i 1 alw 1
  alwp 1 alwp_e 1 alwp_i 1
  until 2 until_ie 2 until_ee 2 until_ii 2 until_ei 2
  until_ie_<=_<= 4 
  until_ie_>= 3
  since 2 since_ie 2 since_ee 2 since_ii 2 since_ei 2
  since_ie_<=_<= 4
  since_ie_>= 3
  release 2
  trigger 2
  next 1 
  yesterday 1
  zeta 1
  Zlasts 2 Zwithinf 2 Zfutr 2 Znexttime 2
  Zlasted 2 Zwithinp 2 Zpast 2 Zlasttime 2
  ; -- Exotic stuff handle with care --
  until-b 4 until-b-v 4  until-b-^ 4
  since-b 4 since-b-v 4  since-b-^ 4
  release-b 4 release-b-^ 4 release-b-v 4
  trigger-b 4 trigger-b-^ 4 trigger-b-v 4

  until-b-inf 3 until-b-v-inf 3 until-b-^-inf 3
  since-b-inf 3 since-b-v-inf 3 since-b-^-inf 3
  release-b-inf 3 release-b-^-inf 3 release-b-v-inf 3
  trigger-b-inf 3 trigger-b-^-inf 3 trigger-b-v-inf 3

  diamond   3 diamond-inf   2 
  diamond-p 3 diamond-inf-p 2
  box   3 box-inf   2
  box-p 3 box-inf-p 2
  )

