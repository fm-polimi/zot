; --------------------------------------------------------------------------
;
; Copyright (C) 2007 Matteo Pradella (pradella@elet.polimi.it)
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
; -------------------------------------------------------------------------

(in-package :cl-user)

(defpackage :ap-zot 
  (:use :common-lisp
	:trio-utils)
  (:export :normalize
	   :basicize
	   :compute-granularity
	   :over-approximation
	   :under-approximation
	   :nth-divisor))


(in-package :ap-zot)

(defun basicize (f)
  (cond 
    ((or (symbolp f)(stringp f)(numberp f)(eq f t)(null f))  
     f)

    ((eq (car f) 'impl)
     `(or (not ,(basicize (second f))) 
       ,(basicize (third f))))

    ((eq (car f) 'iff)
     (let ((x (basicize (second f)))
	   (y (basicize (third f))))
       `(and 
	 (or ,x (not ,y)) 
	 (or ,y (not ,x)))))
    
    ((eq (car f) 'diamond)
     (destructuring-bind (t1 t2 f1) (cdr f)
       `(until-b ,t1 ,t2 t ,(basicize f1))))
    
    ((eq (car f) 'diamond-inf)
     (destructuring-bind (t1 f1) (cdr f)
       `(until-b-inf ,t1 t ,(basicize f1))))

    ((eq (car f) 'diamond-p)
     (destructuring-bind (t1 t2 f1) (cdr f)
       `(since-b ,t1 ,t2 t ,(basicize f1))))
    
    ((eq (car f) 'diamond-p-inf)
     (destructuring-bind (t1 f1) (cdr f)
       `(since-b-inf ,t1 t ,(basicize f1))))

    ((eq (car f) 'box)
     (destructuring-bind (t1 t2 f1) (cdr f)
       `(release-b ,t1 ,t2 nil ,(basicize f1))))
    
    ((eq (car f) 'box-inf)
     (destructuring-bind (t1 f1) (cdr f)
       `(release-b-inf ,t1 nil ,(basicize f1))))

    ((eq (car f) 'box-p)
     (destructuring-bind (t1 t2 f1) (cdr f)
       `(trigger-b ,t1 ,t2 nil ,(basicize f1))))
    
    ((eq (car f) 'box-inf-p)
     (destructuring-bind (t1 f1) (cdr f)
       `(trigger-b-inf ,t1 nil ,(basicize f1))))

    (t
     (cons (car f) (mapcar #'basicize (cdr f))))))


(defun normalize (f)
  (cond 
    ((or (symbolp f)(stringp f)(numberp f)(eq f t)(null f))  
     f)

    ((eq (car f) 'not)
     (let ((a (second f)))
       (cond
	 ((or (null a)(eq a t)) 
	  (not a))

	 ((or (symbolp a)(stringp a)(numberp a))  
	  f)

	 (t 
	  (case (car a)
	    ((not) (normalize (second a)))

	    ((and) (cons 'or (mapcar 
			      #'(lambda (x) (normalize `(not ,x)))
			      (cdr a))))
	    ((or) (cons 'and (mapcar 
			      #'(lambda (x) (normalize `(not ,x)))
			      (cdr a))))

	    ((until-b until-b-v)
	     (destructuring-bind (t1 t2 f1 f2) (cdr a) 
	       `(release-b ,t1 ,t2 
		 ,(normalize `(not ,f1)) 
		 ,(normalize `(not (and ,f1 ,f2))))))

	    ((until-b-inf until-b-v-inf)
	     (destructuring-bind (t1 f1 f2) (cdr a) 
	       `(release-b-inf ,t1 
		 ,(normalize `(not ,f1)) 
		 ,(normalize `(not (and ,f1 ,f2))))))

	    ((since-b since-b-v)
	     (destructuring-bind (t1 t2 f1 f2) (cdr a) 
	       `(trigger-b ,t1 ,t2 
		 ,(normalize `(not ,f1)) 
		 ,(normalize `(not (and ,f1 ,f2))))))

	    ((since-b-inf since-b-v-inf)
	     (destructuring-bind (t1 f1 f2) (cdr a) 
	       `(trigger-b-inf ,t1 
		 ,(normalize `(not ,f1)) 
		 ,(normalize `(not (and ,f1 ,f2))))))

	    ((until-b-^)
	     (destructuring-bind (t1 t2 f1 f2) (cdr a) 
	       `(release-b ,t1 ,t2 
		 ,(normalize `(not ,f1)) 
		 ,(normalize `(not ,f2)))))

	    ((until-b-^-inf)
	     (destructuring-bind (t1 f1 f2) (cdr a) 
	       `(release-b-inf ,t1 
		 ,(normalize `(not ,f1)) 
		 ,(normalize `(not ,f2)))))

	    ((since-b-^)
	     (destructuring-bind (t1 t2 f1 f2) (cdr a) 
	       `(trigger-b ,t1 ,t2 
		 ,(normalize `(not ,f1)) 
		 ,(normalize `(not ,f2)))))

	    ((since-b-^-inf)
	     (destructuring-bind (t1 f1 f2) (cdr a) 
	       `(trigger-b-inf ,t1 
		 ,(normalize `(not ,f1)) 
		 ,(normalize `(not ,f2)))))

	    ((release-b release-b-^)
	     (destructuring-bind (t1 t2 f1 f2) (cdr a)
	       (if (null f1)
		   `(until-b ,t1 ,t2 
		     t
		     ,(normalize `(not ,f2)))
		   `(until-b-^ ,t1 ,t2 
		     ,(normalize `(not ,f1)) 
		     ,(normalize `(not ,f2))))))

	    ((release-b-inf release-b-^-inf)
	     (destructuring-bind (t1 f1 f2) (cdr a) 
	       (if (null f1)
		   `(until-b-inf ,t1 
		     t
		     ,(normalize `(not ,f2)))
		   `(until-b-^-inf ,t1 
		     ,(normalize `(not ,f1)) 
		     ,(normalize `(not ,f2))))))

	    ((trigger-b trigger-b-^)
	     (destructuring-bind (t1 t2 f1 f2) (cdr a) 
	       (if (null f1)
		   `(since-b ,t1 ,t2 
		     t
		     ,(normalize `(not ,f2)))
		   `(since-b-^ ,t1 ,t2 
		     ,(normalize `(not ,f1)) 
		     ,(normalize `(not ,f2))))))

	    ((trigger-b-inf trigger-b-^-inf)
	     (destructuring-bind (t1 f1 f2) (cdr a) 
	       (if (null f1)
		   `(since-b-inf ,t1 
		     t
		     ,(normalize `(not ,f2)))
		   `(since-b-^-inf ,t1 
		     ,(normalize `(not ,f1)) 
		     ,(normalize `(not ,f2))))))

	    (t (error "normalize: bad arg ~S" (cons f a))))))))
    (t
     (cons (car f) (mapcar #'normalize (cdr f))))))


(defun compute-lcm (f)
  (cond 
    ((or (symbolp f)(stringp f)(numberp f)(eq f t)(null f))
     1)
    (t
      (case (car f)
	((until-b since-b release-b trigger-b)
	 (destructuring-bind (t1 t2 f1 f2) (cdr f)
	   (lcm (denominator t1) (denominator t2))))

	((until-b-inf since-b-inf release-b-inf trigger-b-inf)
	 (destructuring-bind (t1 f1 f2) (cdr f)
	   (denominator t1)))

	((until-b-^ since-b-^ until-b-^-inf since-b-^-inf)
	 (error "You cannot use ~S here.~%" (car f)))

	(t 
	  (apply #'lcm (mapcar #'compute-lcm (cdr f))))))))

(defun compute-gcd (f)
  (cond 
    ((or (symbolp f)(stringp f)(numberp f)(eq f t)(null f))
     0)
    (t
      (case (car f)
	((until-b since-b release-b trigger-b)
	 (destructuring-bind (t1 t2 f1 f2) (cdr f)
	   (gcd (numerator t1) (numerator t2))))

	((until-b-inf since-b-inf release-b-inf trigger-b-inf)
	 (destructuring-bind (t1 f1 f2) (cdr f)
	   (numerator t1)))

	((until-b-^ since-b-^ until-b-^-inf since-b-^-inf)
	 (error "You cannot use ~S here.~%" (car f)))

	(t 
	  (apply #'gcd (mapcar #'compute-gcd (cdr f))))))))


(defun compute-granularity (f)
  (list (compute-gcd f)
	(compute-lcm f)))

(defun over-approximation (f the-delta)
  (cond 
    ((or (symbolp f)(stringp f)(numberp f)(eq f t)(null f))
     f)
    (t
      (case (car f)
	((until-b since-b)
	 (destructuring-bind (t1 t2 f1 f2) (cdr f)
	   (list (car f) 
		 (1+ (/ t1 the-delta))
		 (1- (/ t2 the-delta))
		 (over-approximation f1 the-delta)
		 (over-approximation f2 the-delta))))

	((release-b trigger-b)
	 (destructuring-bind (t1 t2 f1 f2) (cdr f)
	   (list (car f) 
		 (1- (/ t1 the-delta))
		 (1+ (/ t2 the-delta))
		 (over-approximation f1 the-delta)
		 (over-approximation f2 the-delta))))

	((until-b-inf since-b-inf)
	 (destructuring-bind (t1 f1 f2) (cdr f)
	   (list (car f) 
		 (1+ (/ t1 the-delta))
		 (over-approximation f1 the-delta)
		 (over-approximation f2 the-delta))))

	((release-b-inf trigger-b-inf)
	 (destructuring-bind (t1 f1 f2) (cdr f)
	   (list (car f) 
		 (1- (/ t1 the-delta))
		 (over-approximation f1 the-delta)
		 (over-approximation f2 the-delta))))
	(t 
	  (cons (car f) 
		(mapcar #'(lambda (f)
			    (over-approximation f the-delta)) (cdr f))))))))


(defun under-approximation (f the-delta)
  (cond 
    ((or (symbolp f)(stringp f)(numberp f)(eq f t)(null f))
     f)
    (t
      (case (car f)
	((until-b)
	 (destructuring-bind (t1 t2 f1 f2) (cdr f)
	   (list 'until-b-^ 
		 (floor   (/ t1 the-delta))
		 (ceiling (/ t2 the-delta))
		 (under-approximation f1 the-delta)
		 (under-approximation f2 the-delta))))

	((until-b-inf)
	 (destructuring-bind (t1 f1 f2) (cdr f)
	   (list 'until-b-^-inf 
		 (floor   (/ t1 the-delta))
		 (under-approximation f1 the-delta)
		 (under-approximation f2 the-delta))))

	((since-b)
	 (destructuring-bind (t1 t2 f1 f2) (cdr f)
	   (list 'since-b-^ 
		 (floor   (/ t1 the-delta))
		 (ceiling (/ t2 the-delta))
		 (under-approximation f1 the-delta)
		 (under-approximation f2 the-delta))))

	((since-b-inf)
	 (destructuring-bind (t1 f1 f2) (cdr f)
	   (list 'since-b-^-inf 
		 (floor   (/ t1 the-delta))
		 (under-approximation f1 the-delta)
		 (under-approximation f2 the-delta))))

	((release-b)
	 (destructuring-bind (t1 t2 f1 f2) (cdr f)
	   (list 'release-b-v
		 (floor   (/ t1 the-delta))
		 (ceiling (/ t2 the-delta))
		 (under-approximation f1 the-delta)
		 (under-approximation f2 the-delta))))

	((release-b-inf)
	 (destructuring-bind (t1 f1 f2) (cdr f)
	   (list 'release-b-v-inf
		 (floor   (/ t1 the-delta))
		 (under-approximation f1 the-delta)
		 (under-approximation f2 the-delta))))

	((trigger-b)
	 (destructuring-bind (t1 t2 f1 f2) (cdr f)
	   (list 'trigger-b-v
		 (floor   (/ t1 the-delta))
		 (ceiling (/ t2 the-delta))
		 (under-approximation f1 the-delta)
		 (under-approximation f2 the-delta))))

	((trigger-b-inf)
	 (destructuring-bind (t1 f1 f2) (cdr f)
	   (list 'trigger-b-v-inf
		 (floor   (/ t1 the-delta))
		 (under-approximation f1 the-delta)
		 (under-approximation f2 the-delta))))

	(t 
	  (cons (car f) 
		(mapcar #'(lambda (f)
			    (under-approximation f the-delta)) (cdr f))))))))


;returns the n-th divisor of num, in decreasing order, or 1 if num has fewer than n divisors
(defun nth-divisor (n num)
  (labels ((divisor-aux (num upto cur-list)
		       (cond
			 ((> upto num) cur-list)
			 ((= (mod num upto) 0) (divisor-aux num (1+ upto) (cons upto cur-list)))
			 (t (divisor-aux num (1+ upto) cur-list)))))
    (let ((divisors (divisor-aux num 1 nil)))
      (if (> n (length divisors)) 1 (nth (1- n) divisors)))))
  
