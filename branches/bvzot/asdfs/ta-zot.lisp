; Messy code for encoding Timed Automata in Zot
; MPradella, v20080313

; --------------------------------------------------------------------------
;
; Copyright (C) 2008 Matteo Pradella (pradella@elet.polimi.it)
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

(defpackage :ta-zot
  (:use :common-lisp
	:trio-utils
	:ap-zot)
  (:export :timed-automaton
	   :*automata-set*
	   :make-timed-automaton
	   :initialize-timed-automata
	   :in
	   :st
	   :rs
	   :in=
	   :st=
	   :add-trans
	   :add-label
	   ; -- operators
	   :white-tri
	   :white-tri/3
	   :black-tri
	   :black-tri/3
	   ; -- under-approximation
	   :timed-automaton-under-formula
	   :timed-automata-under-formula
	   ; -- over-approximation
	   :timed-automaton-over-formula
	   :timed-automata-over-formula
	   ))


(in-package :ta-zot)


(defvar *automata-set* nil)

; TA's data structure

(defstruct timed-automaton
  ; --- public ---
  name
  alphabet
  states
  initial-states
  clocks
  ; --- private ---
  transitions
  loc-labels)

; interface

(defgeneric add-trans (autom from to lamb constr))
(defgeneric add-label (autom state list-of-symbols))
(defgeneric alpha (autom state))
(defgeneric get-trans-from-states (autom from to))
(defgeneric all-connected-pairs (autom))
(defgeneric all-unconnected-pairs (autom))
(defgeneric get-all-trans (autom))
(defgeneric get-trans-from-clock-reset (autom clock))

; implementation

(defun initialize-timed-automata (automata-list)
  (let ((states   (reduce #'union (mapcar #'timed-automaton-states   automata-list)))
	(alphabet (reduce #'union (mapcar #'timed-automaton-alphabet automata-list))))

    (setf *automata-set* automata-list)
    (let ((automata-names (mapcar #'timed-automaton-name automata-list)))
      (define-array st automata-names states)
      (define-array in automata-names alphabet))))

(defmethod add-trans ((autom timed-automaton) 
		      from to lamb constr)
  (with-slots (states alphabet clocks transitions) autom
    (assert (and (member from states)
		 (member to states)
		 (not (set-difference lamb clocks :test #'equal))))
    (push
     (list from to lamb constr) transitions)))


(defmethod add-label ((autom timed-automaton) state list-of-symbols)
  (with-slots (states loc-labels alphabet) autom
    (assert (and 
	     (member state states)
	     (not (set-difference list-of-symbols alphabet :test #'equal))))
    (push (cons state list-of-symbols) loc-labels)))

(defmethod alpha ((autom timed-automaton) state)
  (with-slots (states loc-labels) autom
    (assert (member state states))
    (cdr (assoc state loc-labels))))


(defmethod get-trans-from-states ((autom timed-automaton)
				  from to)
  (loop for x in (timed-automaton-transitions autom)
     when (and (equal from (first x))
	       (equal to (second x)))
     collect x))

(defmethod all-connected-pairs ((autom timed-automaton))
  (loop with result = nil
     for ed in (timed-automaton-transitions autom)
     do (pushnew (list (car ed)(cadr ed)) result)
     finally (return result)))
  
(defmethod all-unconnected-pairs ((autom timed-automaton))
  (with-slots (states) autom
    (loop for x in states append
	 (loop for y in states
	    unless (or (equal x y) ; no self loops
		       (get-trans-from-states autom x y))
	    collect (list x y)))))

(defmethod get-all-trans ((autom timed-automaton))
  (timed-automaton-transitions autom))


(defmethod get-trans-from-clock-reset ((autom timed-automaton)
				       clock)
  (assert (member clock (timed-automaton-clocks autom)))
  (loop for e in (timed-automaton-transitions autom)
     when (member clock (third e))
     collect e))  





;; ------ Encoding ------

; auxiliary operators

(defun white-tri (p q)
  (&& p
      (next q)))

(defmacro white-tri/3 (it id v- v+)
  (let ((it= (intern (concatenate 'string (symbol-name it) "="))))
    `(white-tri (,it= ,id ,v-)(,it= ,id ,v+))))
	     
(defun black-tri (p q)
  (&& p (next q)))

(defmacro black-tri/3 (it id v- v+)
  (let ((it= (intern (concatenate 'string (symbol-name it) "="))))
    `(black-tri (,it= ,id ,v-)(,it= ,id ,v+))))


;; --- Under-approximation


; Clock constraints

(defun clock-constr-to-formula-U (csi delta autom)
  "csi is a clock constraint"
  (cond
    ((null csi) t)
    ((or (symbolp csi)(numberp csi))
     csi)
    (t
     (ecase (car csi)
       (< ; < c k
	(destructuring-bind (op c k) csi  (declare (ignore op))
	  (list 'or
		(list 'and
		      (pred 'rs (timed-automaton-name autom)  c)
		      (diamond-p 0 (/ k delta) 
				 (list 'not (pred 'rs (timed-automaton-name autom)  c))))
		(list 'and
				(list 'not (pred 'rs (timed-automaton-name autom)  c))
		      (diamond-p 0 (/ k delta) 
				 (pred 'rs (timed-automaton-name autom)  c))))))

       (>= ; >= c k
	(destructuring-bind (op c k) csi (declare (ignore op))
	  (list 'or
		(list 'and
		      (pred 'rs (timed-automaton-name autom)  c)
		      (box-p 1 (- (/ k delta) 2) 
			     (pred 'rs (timed-automaton-name autom)  c)))
		(list 'and
				(list 'not (pred 'rs (timed-automaton-name autom)  c))
		      (box-p 1 (- (/ k delta) 2) 
			     (list 'not (pred 'rs (timed-automaton-name autom)  c)))))))

       ((and or)
	(cons (car csi) 
	      (mapcar (lambda (x)
			(clock-constr-to-formula-U x delta autom))
		      (cdr csi))))))))


			

(defun formula-1-U (autom delta)
  (cons 'and 
	(loop for (s-i s-j) in (all-connected-pairs autom)
	   collect
	     (-> (white-tri/3 st (timed-automaton-name autom) s-i s-j)
		 (cons 'or
		       (loop for 
			    (s-1 s-2 big-lambda csi) in 
			    (get-trans-from-states autom s-i s-j)
			  collect
			    (list 'and 
				  (cons 'and
					(loop for c in big-lambda collect
					     (list 'or 
						   (white-tri (list 'not (pred 'rs (timed-automaton-name autom)  c))
							      (pred 'rs (timed-automaton-name autom)  c))
						   (white-tri (pred 'rs (timed-automaton-name autom)  c)
							      (list 'not (pred 'rs (timed-automaton-name autom)  c))))))
				  
				  (clock-constr-to-formula-U csi delta autom))))))))



(defun formula-2-U (autom)
  (cons 'and 
	(loop for (s-i s-j) in (all-unconnected-pairs autom)
	     collect
	     (list 'not (white-tri/3 st (timed-automaton-name autom) s-i s-j)))))



(defun formula-3-U (autom)
  (cons 'and
	(loop for s in (timed-automaton-states autom) collect
	     (list 'impl
		   (st= (timed-automaton-name autom) s)
		   (cons 'or
			 (loop for a in (alpha autom s) collect
			      (in= (timed-automaton-name autom) a)))))))


(defun formula-4-U (autom)
  (cons 'and
	(loop for c in (timed-automaton-clocks autom)
	   collect
	     (list 'impl
		   (list 'or
			 (white-tri (list 'not (pred 'rs (timed-automaton-name autom)  c))
				    (pred 'rs (timed-automaton-name autom)  c))
			 (white-tri (pred 'rs (timed-automaton-name autom)  c)
				    (list 'not (pred 'rs (timed-automaton-name autom)  c))))

		   (cons 'or
			 (loop for (s-i s-j sig big-lambda csi) in
			      (get-trans-from-clock-reset autom c)
			    collect
			      (white-tri/3 st (timed-automaton-name autom) s-i s-j)))))))



(defun formula-5-U (autom)
  (list 'and
	(cons 'and
	      (loop for c in (timed-automaton-clocks autom) collect
		   (pred 'rs (timed-automaton-name autom)  c)))
	
	(diamond 1 2
		 (cons 'and
		       (loop for c in (timed-automaton-clocks autom)
			  collect (list 'not (pred 'rs (timed-automaton-name autom)  c)))))

	(cons 'or
	      (loop for s in (timed-automaton-initial-states autom) collect
					(st= (timed-automaton-name autom) s)))))



(defun 1-step-reachable (autom state)
  (loop for (s1 s2) in (all-connected-pairs autom)
     when (equal s1 state)
     collect s2))

(defun formula-6-U (autom)
  (cons 'and
	(loop for s in (timed-automaton-states autom)
	     collect
	     (impl (st= (timed-automaton-name autom) s)
		   (somf_i 
		    (cons 'or
			  (loop for s1 in (1-step-reachable autom s)
			     collect (st= (timed-automaton-name autom) s1))))))))


		
	      
;; --- Over-approximation

; Clock constraints


(defun clock-constr-to-formula-O (csi delta autom)
  "csi is a clock constraint"
  (cond
    ((null csi) t)
    ((or (symbolp csi)(numberp csi))
     csi)
    (t
     (ecase (car csi)
       (< ; < c k
	(destructuring-bind (op c k) csi  (declare (ignore op))
	  (list 'or
		(list 'and
		      (box-p 0 1 (pred 'rs (timed-automaton-name autom)  c))
		      (diamond-p 1 (1- (/ k delta)) 
				 (list 'not (pred 'rs (timed-automaton-name autom)  c))))
		(list 'and
		      (box-p 0 1 (list 'not (pred 'rs (timed-automaton-name autom)  c)))
		      (diamond-p 1 (1- (/ k delta)) 
				 (pred 'rs (timed-automaton-name autom)  c))))))

       (>= ; >= c k
	(destructuring-bind (op c k) csi  (declare (ignore op))
	  (list 'or
		(list 'and
		      (box-p 0 1 (pred 'rs (timed-automaton-name autom)  c))
		      (box-p 0 (1+ (/ k delta)) 
			     (pred 'rs (timed-automaton-name autom)  c)))
		(list 'and
		      (box-p 0 1 (list 'not (pred 'rs (timed-automaton-name autom)  c)))
		      (box-p 0 (1+ (/ k delta)) 
			     (list 'not (pred 'rs (timed-automaton-name autom)  c)))))))

       ((and or)
	(cons (car csi) 
	      (mapcar (lambda (x)
			(clock-constr-to-formula-O x delta autom))
		      (cdr csi))))))))


(defun formula-1-O (autom delta)
  (cons 'and 
	(loop for (s-i s-j) in (all-connected-pairs autom)
	   collect
	     (-> (black-tri/3 st (timed-automaton-name autom) s-i s-j)
		 (cons 'or
		       (loop for 
			    (s-1 s-2 big-lambda csi) in 
 			    (get-trans-from-states autom s-i s-j)
			  collect
			    (list 'and 
				  (cons 'and
					(loop for c in big-lambda collect
					     (list 'or
						   (list 'and
							 (box-p 0 1 (list 'not (pred 'rs (timed-automaton-name autom)  c)))
							 (box 0 2 
							      (list 'impl
								    (st= (timed-automaton-name autom) s-j)
								    (pred 'rs (timed-automaton-name autom)  c))))
						   (list 'and
							 (box-p 0 1 (pred 'rs (timed-automaton-name autom)  c))
							 (box 0 2 
							      (list 'impl
								    (st= (timed-automaton-name autom) s-j)
								    (list 'not (pred 'rs (timed-automaton-name autom)  c))))))))
				  
				  (clock-constr-to-formula-O csi delta autom))))))))


(defun formula-2-O (autom)
  (cons 'and 
	(loop for (s-i s-j) in (all-unconnected-pairs autom)
	     collect
	     (list 'not (black-tri/3 st (timed-automaton-name autom) s-i s-j)))))


(defun formula-3-O (autom)
  (formula-3-U autom))


(defun formula-4-O (autom)
  (cons 'and
	(append
	 (loop for c in (timed-automaton-clocks autom)
	    collect
	      (list 'impl
		    (black-tri (list 'not (pred 'rs (timed-automaton-name autom)  c))
			       (pred 'rs (timed-automaton-name autom)  c))
		    (cons 'or
			  (loop for (s-i s-j sig big-lambda csi) in
			       (get-trans-from-clock-reset autom c)
			     collect
			       (list 'and
				     (box-p 0 1 (st= (timed-automaton-name autom) s-i))
				     (box   0 2 (list 'impl
						      (pred 'rs (timed-automaton-name autom)  c)
						      (st= (timed-automaton-name autom) s-j))))))))
	 (loop for c in (timed-automaton-clocks autom)
	    collect
	      (list 'impl
		    (black-tri (pred 'rs (timed-automaton-name autom)  c)
			       (list 'not (pred 'rs (timed-automaton-name autom)  c)))
		    (cons 'or
			  (loop for (s-i s-j sig big-lambda csi) in
			       (get-trans-from-clock-reset autom c)
			     collect
			       (list 'and
				     (box-p 0 1 (st= (timed-automaton-name autom) s-i))
				     (box   0 2 (list 'impl
						      (list 'not (pred 'rs (timed-automaton-name autom)  c))
						      (st= (timed-automaton-name autom) s-j)))))))))))


(defun formula-5-O (autom)
  (list 'and
	(cons 'and
	      (loop for c in (timed-automaton-clocks autom) collect
		   (pred 'rs (timed-automaton-name autom)  c)))
	
	(next
	 (cons 'and
	       (loop for c in (timed-automaton-clocks autom)
		  collect (list 'not (pred 'rs (timed-automaton-name autom)  c)))))
	
	(cons 'or
	      (loop for s in (timed-automaton-initial-states autom) append
		   (loop for sigma in (alpha autom s) collect
			(box 0 1
			     (list 'and
				   (st= (timed-automaton-name autom) s) (in= (timed-automaton-name autom) sigma))))))))


(defun formula-6-O (autom)
  (formula-6-U autom))



; --- complete under-approximation formula

(defgeneric timed-automaton-under-formula (autom delta))

(defmethod timed-automaton-under-formula ((autom timed-automaton) delta)
  (cons 'and
	(cons (basicize (formula-5-U autom))
	      (mapcar (lambda (f) (list 'alwf (basicize f))) 
		      (list (formula-1-U autom delta)
			    (formula-2-U autom)
			    (formula-3-U autom)
			    (next (formula-4-U autom))
			    (formula-6-U autom))))))

(defun timed-automata-under-formula (delta)
  (cons 'and
	(mapcar      
	 (lambda (autom) (timed-automaton-under-formula autom delta))
	 *automata-set*)))

; --- complete over-approximation formula

(defgeneric timed-automaton-over-formula (autom delta))

(defmethod timed-automaton-over-formula ((autom timed-automaton) delta)
  (cons 'and
	(cons (basicize (formula-5-O autom))
	      (mapcar (lambda (f) (list 'alwf (basicize f))) 
		      (list (formula-1-O autom delta)
			    (formula-2-O autom)
			    (formula-3-O autom)
			    (next (formula-4-O autom))
			    (formula-6-O autom))))))

(defun timed-automata-over-formula (delta)
  (cons 'and
	(mapcar      
	 (lambda (autom) (timed-automaton-over-formula autom delta))
	 *automata-set*)))