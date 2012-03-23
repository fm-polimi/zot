; Messy code for encoding Petri Net in Zot
; Marcello Bersani, v20090505

; --------------------------------------------------------------------------
;
; Copyright (C) 2009 Matteo Pradella (pradella@elet.polimi.it)
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


(defpackage :pn-zot
  (:use :common-lisp
	:trio-utils
	:ap-zot)
  (:export :p-net
	   :*pnet-set*
	   :make-p-net
	   :initialize-p-nets
	   :add-flow
	   :add-time-cnstr
	   :p-net-timing
	   ; -- operators
	   ;:white-tri
	   ;:black-tri
	   :1-wiggle
	   :1-Nwiggle
	   
	   ; -- under-approximation
	   :p-net-under-formula
	   :p-nets-under-formula
	   ; -- over-approximation
	   :p-net-over-formula
	   :p-nets-over-formula
	   
	   :formula-1-U
	   :formula-2-U
	   :formula-3-U
	   :formula-4-U
	   :formula-5-U
	   :formula-6-U
	   :formula-7-U
	   :formula-8-U
	   :formula-9-U
	   :formula-1-O
	   :formula-2a-O
	   :formula-2b-O
	   :formula-3-O
	   :formula-4a-O
	   :formula-4b-O
	   :formula-5-O
	   :formula-6-O

	   :mu
	   :tau
	   :eps
	   
	   :get-pre
	   :get-post))


(in-package :pn-zot)


(defvar *pnet-set* nil)

; PN's data structure

(defstruct p-net
  name
  places 
  initial-marking
  timing
  ;;timing structure: (hash table t_i, alpha_i, beta_i)
  transitions
  flow
  ;;flow structure: (list (p_i, (list pre_j), (list post_k))
)

; interface

;build a flow like t_pre -> p -> t_post
(defgeneric add-flow (p-net place pre post))

;add  timing constraint to transition
(defgeneric add-time-cnstr (p-net trans alpha beta))

;compute a the preset of a place or a transition
(defgeneric get-pre (p-net item))

;compute a the postset of a place or a transition
(defgeneric get-post (p-net item))


(defun initialize-p-nets (p-nets-list)  
;;   (progn (setf *pnet-set* p-nets-list)
;; 	 (mapcar #'(lambda(x) (setf (p-net-timing x) (make-hash-table))) *pnet-set*)))
  (setf *pnet-set* p-nets-list))


;;---------Operators-----------



(defun black-tri (a &optional b)
   (if b 
       (&& a (next b))
       (&& (!! a) (next a))))
  

(defun white-tri (a &optional b)
   (if b 
       (&& a (next b))
       (&& (!! a) (next a))))


(defun 1-wiggle (f)
   (|| (black-tri f (!! f)) (black-tri (!! f) f)))

;suitable for non triggering events
(defun 1-Nwiggle (f)
   (|| (black-tri f f) (black-tri (!! f) (!! f))))


(defun 2-wiggle (f)
   (|| (white-tri f (!! f)) (white-tri (!! f) f)))

(defun 3-wiggle (f h)
   (|| (&& (box-p 0 1 (!! h)) (box 0 2 (-> f h))) 
	  (&& (box-p 0 1 h) (box 0 2 (-> f (!! h))))))

;suitable for non triggering events
(defun 3-Nwiggle (f h)
   (|| (&& (box-p 0 1 (!! h)) (box 0 2 (-> f (!! h)))) 
	  (&& (box-p 0 1 h) (box 0 2 (-> f h)))))


(defun nipple (g setX setY)
  ;compute setY/setX
  (let ((diffYX (loop for i in setY when (not (member i setX)) collect i)))  
    (if diffYX
	;if diffXYX isn't empty set
	(cons 'and (loop for x in setX           
		  for y in diffYX 
	       append (list (funcall g x) (!! (funcall g y)))))
	;else...
	(cons 'and (loop for x in setX collect (funcall g x)) ))))



(defun get-power-set (set)  
  (delete-duplicates (cond ((eq (list-length set) 1) (list set nil))
			   (t (cons set 
				    (loop for e in (loop for j in set append (list (remove j set) ))
				       append (get-power-set e)))) )
		     :test #'equal))


(defmethod add-flow ((pn p-net) place pre post)
  (with-slots (places transitions flow) pn

    ;check existence of place pre post
 ;;    (assert (and (member place places)
;; 		 (member pre transitions)
;; 		 (member post transitions)))

    ;if place hasn't already been inserted thus insert it
    (if (not (member place flow :test #'eq :key #'car) )
	(push (list place nil nil) (p-net-flow pn))) 

    
    ;push pre & post in the list
    (mapc #'(lambda(x) (if (eq (car x) place) 
                  (progn (if (not (eq pre nil)) (pushnew pre (cadr x) :test 'eq))
			 (if (not (eq post nil)) (pushnew post (caddr x) :test 'eq)))))
	  flow)))
    



(defmethod add-time-cnstr ((pn p-net) trans alpha beta)
  (with-slots (transitions timing) pn

    ;check existence of trans
    (assert (member trans transitions))
    
    ;if trans hasn't already been inserted thus insert it
;    (if (not (member trans :test #'eq :key #'car) )
;	(push trans timing))

    ;(if (not (gethash trans timing)) (setf (gethash trans timing) `(,alpha ,beta)))
 
    ;so push alpha beta in the list 
;    (mapc #'(lambda(x) (if (eq (car x) trans) 
;                  (progn (push alpha (cdr x)) 
;			 (push beta (cddr x))))
;	  timing))))
    
    (setf (gethash trans timing) (list alpha beta))))
    

(defmethod get-pre ((pn p-net) item)
  (with-slots (places transitions flow) pn
          ;;if item is a place
    (cond ((member item places)
	  (loop for fl in flow append
		    (loop for pre in (second fl)
		       when (eq item (car fl)) 
		       collect pre)))
	  ;if item is a transition
	  ((member item transitions)
	   (loop for fl in flow append
		(loop for pre in (third fl)
		   when (eq pre item) 
		   collect (car fl)))))))


(defmethod get-post ((pn p-net) item)
  (with-slots (places transitions flow) pn
          ;;if item is a place
    (cond ((member item places)
	  (loop for fl in flow append
		    (loop for post in (third fl)
		       when (eq item (car fl)) 
		       collect post)))
	  ;if item is a transition
	  ((member item transitions)
	   (loop for fl in flow append
		(loop for post in (second fl)
		   when (eq post item) 
		   collect (car fl)))))))


(defmacro alpha (timing trans)
  `(first (gethash ,trans ,timing)))

(defmacro beta (timing trans)
  `(second (gethash ,trans ,timing)))


; --- Under approximation

;; **************  NOTE  **************
;;
;; eche list 'or/'and or 'not can be sobstituted by the trio-utils' operator ||, &&, !!
;;

;; ORria and ANDria are written as (cons 'or (list ...)) and (cons 'and (list ..))

(defun formula-1-U (pn)
  (cons 'and
	(loop for place in (p-net-places pn) when (member place (p-net-initial-marking pn)) collect
	     (-> (black-tri (pred 'mu (p-net-name pn) place) )
		 (|| (&& (cons 'or (loop for tr in (get-pre pn place) collect
					(remove nil (&& (1-wiggle (pred 'tau (p-net-name pn) tr))
							(loop for trn in (get-pre pn place) 
							   when (not (eq trn tr)) append
							     (1-Nwiggle (pred 'tau (p-net-name pn) trn)))))))
			 (cons 'and (loop for tr in (get-post pn place) collect
					 (1-Nwiggle (pred 'tau (p-net-name pn) tr)))))
		     (box-inf-p 0 (!! (pred 'mu (p-net-name pn) place))))))))

					       
(defun formula-2-U (pn)
  (cons 'and
	(loop for place in (p-net-places pn) when (not (member place (p-net-initial-marking pn))) collect
	     (-> (black-tri (pred 'mu (p-net-name pn) place) )
		 (&& (cons 'or (loop for tr in (get-pre pn place) collect
				    (remove nil (&& (1-wiggle (pred 'tau (p-net-name pn) tr))
						    (loop for trn in (get-pre pn place) 
						       when (not (eq trn tr)) append
							 (1-Nwiggle (pred 'tau (p-net-name pn) trn)))))))
		     (cons 'and (loop for tr in (get-post pn place) collect
				     (1-Nwiggle (pred 'tau (p-net-name pn) tr)))))))))

						  
(defun formula-3-U (pn)
  (cons 'and
	(loop for place in (p-net-places pn) collect
	     (-> (black-tri (!! (pred 'mu (p-net-name pn) place)) )
		 (&& (cons 'or (loop for tr in (get-post pn place) collect
				    (remove nil (&& (1-wiggle (pred 'tau (p-net-name pn) tr))
						    (loop for trn in (get-post pn place) 
						       when (not (eq trn tr)) append
							 (1-Nwiggle (pred 'tau (p-net-name pn) trn)))))))
		     (cons 'and (loop for tr in (get-pre pn place) collect
				     (1-Nwiggle (pred 'tau (p-net-name pn) tr)))))))))


 

(defun formula-4-U (pn delta)
  (cons 'and
	(loop for tr in (p-net-transitions pn) collect
	     (-> (1-wiggle (pred 'tau (p-net-name pn) tr))
		 (cons 'and 
		       (loop for pl in (get-pre pn tr) collect
			    (|| (&& (pred 'mu (p-net-name pn) pl)
				    (pred 'eps (p-net-name pn) pl)
				    (box-p 1 (- (/ (alpha (p-net-timing pn) tr) delta) 2) (&& (pred 'mu (p-net-name pn) pl) (pred 'eps (p-net-name pn) pl))))
				(&& (pred 'mu (p-net-name pn) pl)
				    (!! (pred 'eps (p-net-name pn) pl))
				    (box-p 1 (- (/ (alpha (p-net-timing pn) tr) delta) 2) (&& (pred 'mu (p-net-name pn) pl) (!! (pred 'eps (p-net-name pn) pl))))))))))))

	     
  
(defun formula-5-U (pn delta)
  (cons 'and
	(loop for tr in (p-net-transitions pn) collect
	     (-> (box-p 0 (/ (beta (p-net-timing pn) tr) delta) 
			(&& (pred 'tau (p-net-name pn) tr) 
			    (cons 'and (loop for place in (get-pre pn tr) collect (pred 'mu (p-net-name pn) place)))))
		 (|| (cons 'or
			   (loop for place in (get-pre pn tr) collect
				(diamond 1 1 (!! (pred 'mu (p-net-name pn) place)))))
		     (cons 'or
			   (loop for place in (get-pre pn tr) collect
				(&& (-> (box-p 0 (/ (beta (p-net-timing pn) tr) delta) (pred 'eps (p-net-name pn) place))
					(diamond 1 1 (!! (pred 'eps (p-net-name pn) place))))
				    (-> (box-p 0 (/ (beta (p-net-timing pn) tr) delta) (!! (pred 'eps (p-net-name pn) place)))
					(diamond 1 1 (pred 'eps (p-net-name pn) place))))))
		     (diamond 1 1 (!! (pred 'tau (p-net-name pn) tr)))
			 ;(cons 'and (loop for place in (get-pre pn tr) collect (diamond 1 1 (!! (pred 'mu (p-net-name pn) place)))))
)))))


(defun formula-6-U (pn delta)
  (cons 'and
	(loop for tr in (p-net-transitions pn) collect
	     (-> (box-p 0 (/ (beta (p-net-timing pn) tr) delta) 
			(&& (!! (pred 'tau (p-net-name pn) tr)) 
			    (cons 'and (loop for place in (get-pre pn tr) collect (pred 'mu (p-net-name pn) place)))))
		 (|| (cons 'or
			   (loop for place in (get-pre pn tr) collect
				(diamond 1 1 (!! (pred 'mu (p-net-name pn) place)))))
		     (cons 'or
			   (loop for place in (get-pre pn tr) collect
				(&& (-> (box-p 0 (/ (beta (p-net-timing pn) tr) delta) (pred 'eps (p-net-name pn) place))
					(diamond 1 1 (!! (pred 'eps (p-net-name pn) place))))
				    (-> (box-p 0 (/ (beta (p-net-timing pn) tr) delta) (!! (pred 'eps (p-net-name pn) place)))
					(diamond 1 1 (pred 'eps (p-net-name pn) place))))))
		     (diamond 1 1 (pred 'tau (p-net-name pn) tr))
;			 (cons 'and (loop for place in (get-pre pn tr) collect (diamond 1 1 (!! (pred 'mu (p-net-name pn) place))))))
)))))


(defun formula-7-U (pn)
  (cons 'and
	(loop for tr in (p-net-transitions pn) collect
	     (-> (1-wiggle (pred 'tau (p-net-name pn) tr) )
		 (&& (cons 'and
			   (loop for place in (get-pre pn tr) collect
				(|| (black-tri (!! (pred 'mu (p-net-name pn) place)))
				    (1-wiggle (pred 'eps (p-net-name pn) place)))))
		     (cons 'and
			   (loop for place in (get-post pn tr) collect
				(|| (black-tri (pred 'mu (p-net-name pn) place))
				    (1-wiggle (pred 'eps (p-net-name pn) place))))))))))		   
	      

(defun formula-8-U (pn)
  (cons 'and
	(loop for place in (p-net-places pn) collect
	     (-> (1-wiggle (pred 'eps (p-net-name pn) place) )
		 (cons 'or 
		       (let* ((pre (get-pre pn place)) 
			      (post (get-post pn place)))
			 (loop for tin in pre append
			      (loop for tout in post collect
				   (&& (&& (1-wiggle (pred 'tau (p-net-name pn) tin))
					   (cons 'and (loop for ts in pre when (not (eq ts tin)) collect
							   (1-Nwiggle (pred 'tau (p-net-name pn) ts)))))
				       (&& (1-wiggle (pred 'tau (p-net-name pn) tout))
					   (cons 'and (loop for ts in post when (not (eq ts tout)) collect
							   (1-Nwiggle (pred 'tau (p-net-name pn) ts))))))))))))))


(defun formula-9-U (pn)
  (list 'and 
	(cons 'and
	      (loop for place in (p-net-places pn) collect 
		   (!! (pred 'mu (p-net-name pn) place))))
	(diamond 1 2 (cons 'and
			   (loop for place in (p-net-initial-marking pn) collect 
				(pred 'mu (p-net-name pn) place))))
	(cons 'and
	      (loop for place in (p-net-places pn) collect 
		   (pred 'eps (p-net-name pn) place)))
	(cons 'and
	      (loop for tr in (p-net-transitions pn) collect 
		   (pred 'tau (p-net-name pn) tr)))))
	



; --- Over approximation

(defun formula-1-O (pn)
  (cons 'and
	(loop for place in (p-net-places pn) when (member place (p-net-initial-marking pn)) collect
	     (-> (black-tri (pred 'mu (p-net-name pn) place) )
		 (|| (&& (cons 'or (loop for tr in (get-pre pn place) collect
					(remove nil (&& (3-wiggle (pred 'mu (p-net-name pn) place) (pred 'tau (p-net-name pn) tr))
							(loop for trn in (get-pre pn place) 
							   when (not (eq trn tr)) append
							     (3-Nwiggle (pred 'mu (p-net-name pn) place) (pred 'tau (p-net-name pn) trn)))))))
			 (cons 'and (loop for tr in (get-post pn place) collect
					 (3-Nwiggle (pred 'mu (p-net-name pn) place) (pred 'tau (p-net-name pn) tr)))))
		     (box-inf-p 0 (!! (pred 'mu (p-net-name pn) place))))))))

(defun formula-2-O (pn)
  (cons 'and
	(loop for place in (p-net-places pn) when (not (member place (p-net-initial-marking pn))) collect
	     (-> (black-tri (pred 'mu (p-net-name pn) place) )
		 (&& (cons 'or (loop for tr in (get-pre pn place) collect
				    (remove nil (&& (3-wiggle (pred 'mu (p-net-name pn) place) (pred 'tau (p-net-name pn) tr))
						    (loop for trn in (get-pre pn place) 
						       when (not (eq trn tr)) append
							 (3-Nwiggle (pred 'mu (p-net-name pn) place) (pred 'tau (p-net-name pn) trn)))))))
		     (cons 'and (loop for tr in (get-post pn place) collect
				     (3-Nwiggle (pred 'mu (p-net-name pn) place) (pred 'tau (p-net-name pn) tr)))))))))


(defun formula-3-O (pn)
  (cons 'and
	(loop for place in (p-net-places pn) collect
	     (-> (black-tri (!! (pred 'mu (p-net-name pn) place)))
		 (&& (cons 'or (loop for tr in (get-post pn place) collect
				    (remove nil (&& (3-wiggle (!! (pred 'mu (p-net-name pn) place)) (pred 'tau (p-net-name pn) tr))
						    (loop for trn in (get-post pn place) 
						       when (not (eq trn tr)) append
							 (3-Nwiggle (!! (pred 'mu (p-net-name pn) place)) (pred 'tau (p-net-name pn) trn)))))))
		     (cons 'and (loop for tr in (get-pre pn place) collect
				     (3-Nwiggle (!! (pred 'mu (p-net-name pn) place)) (pred 'tau (p-net-name pn) tr)))))))))

 


(defun formula-4-O (pn delta)
 (cons 'and
	(loop for tr in (p-net-transitions pn) collect
	     (-> (1-wiggle (pred 'tau (p-net-name pn) tr))
		 (cons 'and 
		       (loop for pl in (get-pre pn tr) collect
			    (|| (box-p 0 (+ (/ (alpha (p-net-timing pn) tr) delta) 1) (&& (pred 'mu (p-net-name pn) pl) (pred 'eps (p-net-name pn) pl)))
 				(box-p 0 (+ (/ (alpha (p-net-timing pn) tr) delta) 1) (&& (pred 'mu (p-net-name pn) pl) (!! (pred 'eps (p-net-name pn) pl)))))))))))
 


(defun formula-5-O (pn delta)
  (cons 'and
	(loop for tr in (p-net-transitions pn) collect
	     (-> (box-p 1 (- (/ (beta (p-net-timing pn) tr) delta) 1)
			(&& (pred 'tau (p-net-name pn) tr) 
			    (cons 'and (loop for place in (get-pre pn tr) collect (pred 'mu (p-net-name pn) place)))))
		 (|| (cons 'or
			   (loop for place in (get-pre pn tr) collect
				(|| (!! (pred 'mu (p-net-name pn) place)) (box 0 1 (!! (pred 'mu (p-net-name pn) place))))))
		     (cons 'or
			   (loop for place in (get-pre pn tr) collect
				(&& (-> (box-p 1 (- (/ (beta (p-net-timing pn) tr) delta) 1) (pred 'eps (p-net-name pn) place))
					(|| (!! (pred 'eps (p-net-name pn) place)) (box 0 1 (!! (pred 'eps (p-net-name pn) place)))))
				    (-> (box-p 1 (- (/ (beta (p-net-timing pn) tr) delta) 1) (!! (pred 'eps (p-net-name pn) place)))
					(|| (pred 'eps (p-net-name pn) place) (box 0 1 (pred 'eps (p-net-name pn) place)))))))
;; 		     (&& (box 0 1 (!! (pred 'tau (p-net-name pn) tr)))
;; 			 (cons 'and (loop for place in (get-pre pn tr) collect (box 0 1 (!! (pred 'mu (p-net-name pn) place))))))
		     (!! (pred 'tau (p-net-name pn) tr))
			 ;(cons 'and (loop for place in (get-pre pn tr) collect (!! (pred 'mu (p-net-name pn) place)))))
)))))
			 

(defun formula-6-O (pn delta)
  (cons 'and
	(loop for tr in (p-net-transitions pn) collect
	     (-> (box-p 1 (- (/ (beta (p-net-timing pn) tr) delta) 1)
			(&& (!! (pred 'tau (p-net-name pn) tr))
			    (cons 'and (loop for place in (get-pre pn tr) collect (pred 'mu (p-net-name pn) place)))))
		 (|| (cons 'or
			   (loop for place in (get-pre pn tr) collect
				(|| (!! (pred 'mu (p-net-name pn) place)) (box 0 1 (!! (pred 'mu (p-net-name pn) place))))))
		     (cons 'or
			   (loop for place in (get-pre pn tr) collect
				(&& (-> (box-p 1 (- (/ (beta (p-net-timing pn) tr) delta) 1) (pred 'eps (p-net-name pn) place))
					(|| (!! (pred 'eps (p-net-name pn) place)) (box 0 1 (!! (pred 'eps (p-net-name pn) place)))))
				    (-> (box-p 1 (- (/ (beta (p-net-timing pn) tr) delta) 1) (!! (pred 'eps (p-net-name pn) place)))
					(|| (pred 'eps (p-net-name pn) place) (box 0 1 (pred 'eps (p-net-name pn) place)))))))
;; 		     (&& (box 0 1 (pred 'tau (p-net-name pn) tr))
;; 			 (cons 'and (loop for place in (get-pre pn tr) collect (box 0 1 (!! (pred 'mu (p-net-name pn) place))))))
		     (pred 'tau (p-net-name pn) tr)
;; 			 (cons 'and (loop for place in (get-pre pn tr) collect (!! (pred 'mu (p-net-name pn) place))))
			 )))))
			 

(defun formula-7a-O (pn)
  (cons 'and
	(loop for tr in (p-net-transitions pn) collect
	     (-> (black-tri (pred 'tau (p-net-name pn) tr) )
		 (&& (cons 'and
			   (loop for place in (get-pre pn tr) collect
				(|| (&& (box-p 0 1 (pred 'mu (p-net-name pn) place))
					(box 0 2 (-> (pred 'tau (p-net-name pn) tr) (!! (pred 'mu (p-net-name pn) place)))))
				    (3-wiggle (pred 'tau (p-net-name pn) tr) (pred 'eps (p-net-name pn) place))
				    )))
		     (cons 'and
			   (loop for place in (get-post pn tr) collect
				(|| (&& (box-p 0 1 (!! (pred 'mu (p-net-name pn) place)))
					(box 0 2 (-> (pred 'tau (p-net-name pn) tr) (pred 'mu (p-net-name pn) place))))
				    (3-wiggle (pred 'tau (p-net-name pn) tr) (pred 'eps (p-net-name pn) place))
				    ))))))))


(defun formula-7b-O (pn)
  (cons 'and
	(loop for tr in (p-net-transitions pn) collect
	     (-> (black-tri (!! (pred 'tau (p-net-name pn) tr)))
		 (&& (cons 'and
			   (loop for place in (get-pre pn tr) collect
				(|| (&& (box-p 0 1 (pred 'mu (p-net-name pn) place))
					(box 0 2 (-> (!! (pred 'tau (p-net-name pn) tr)) (!! (pred 'mu (p-net-name pn) place)))))
				    (3-wiggle (!! (pred 'tau (p-net-name pn) tr)) (pred 'eps (p-net-name pn) place))
				    )))    
		     (cons 'and
			   (loop for place in (get-post pn tr) collect
				(|| (&& (box-p 0 1 (!! (pred 'mu (p-net-name pn) place)))
					(box 0 2 (-> (!! (pred 'tau (p-net-name pn) tr)) (pred 'mu (p-net-name pn) place))))
				    (3-wiggle (!! (pred 'tau (p-net-name pn) tr)) (pred 'eps (p-net-name pn) place))
				    ))))))))
				    


(defun formula-8a-O (pn)
  (cons 'and
	(loop for place in (p-net-places pn) collect
	     (-> (black-tri (pred 'eps (p-net-name pn) place) )
		 (cons 'or 
		       (let* ((pre (get-pre pn place)) 
			      (post (get-post pn place)))
			 (loop for tin in pre append
			      (loop for tout in post collect
				   (&& (&& (3-wiggle (pred 'eps (p-net-name pn) place) (pred 'tau (p-net-name pn) tin))
					   (cons 'and (loop for ts in pre when (not (eq ts tin)) collect
							   (3-Nwiggle (pred 'eps (p-net-name pn) place) (pred 'tau (p-net-name pn) ts)))))
				       (&& (3-wiggle (pred 'eps (p-net-name pn) place) (pred 'tau (p-net-name pn) tout))
					   (cons 'and (loop for ts in post when (not (eq ts tout)) collect
							   (3-Nwiggle (pred 'eps (p-net-name pn) place) (pred 'tau (p-net-name pn) ts))))))))))))))

(defun formula-8b-O (pn)
  (cons 'and
	(loop for place in (p-net-places pn) collect
	     (-> (black-tri (!! (pred 'eps (p-net-name pn) place)))
		 (cons 'or 
		       (let* ((pre (get-pre pn place)) 
			      (post (get-post pn place)))
			 (loop for tin in pre append
			      (loop for tout in post collect
				   (&& (&& (3-wiggle (!! (pred 'eps (p-net-name pn) place)) (pred 'tau (p-net-name pn) tin))
					   (cons 'and (loop for ts in pre when (not (eq ts tin)) collect
							   (3-Nwiggle (!! (pred 'eps (p-net-name pn) place)) (pred 'tau (p-net-name pn) ts)))))
				       (&& (3-wiggle (!! (pred 'eps (p-net-name pn) place)) (pred 'tau (p-net-name pn) tout))
					   (cons 'and (loop for ts in post when (not (eq ts tout)) collect
							   (3-Nwiggle (!! (pred 'eps (p-net-name pn) place)) (pred 'tau (p-net-name pn) ts))))))))))))))

(defun formula-9-O (pn)
  (list 'and 
	(cons 'and
	      (loop for place in (p-net-places pn) collect 
		   (!! (pred 'mu (p-net-name pn) place))))
	(diamond 1 1 (cons 'and
			   (loop for place in (p-net-initial-marking pn) collect 
				(pred 'mu (p-net-name pn) place))))
	(box 0 1 (&& (cons 'and
			   (loop for place in (p-net-places pn) collect 
				(pred 'eps (p-net-name pn) place)))
		     (cons 'and
			   (loop for tr in (p-net-transitions pn) collect 
				(pred 'tau (p-net-name pn) tr)))))))
		      	      

	      
; --- complete under-approximation formula

(defgeneric p-net-under-formula (pn delta))

(defmethod p-net-under-formula ((pn p-net) delta)
  (cons 'and	
	;(cons (basicize (formula-9-U pn))	      
	      (mapcar (lambda (f) (list 'alwf (basicize f))) 
		      (list 
;; 		            (formula-1-U pn)
;;      			    (formula-2-U pn)
;;  		            (formula-3-U pn)
       			    (formula-4-U pn delta)
      			    (formula-5-U pn delta)
      			    (formula-6-U pn delta)
		            (formula-7-U pn)
   			    (formula-8-U pn)
))))

(defun p-nets-under-formula (delta)
  (cons 'and
	(mapcar (lambda (pn) (p-net-under-formula pn delta))
		*pnet-set*)))


(defgeneric p-net-over-formula (pn delta))

(defmethod p-net-over-formula ((pn p-net) delta)
  (cons 'and	
	(cons (basicize (formula-9-O pn))   
 	      (mapcar (lambda (f) (list 'alwf (basicize f))) 
 		      (list (formula-1-O pn)
 			    (formula-2-O pn)
 			    (formula-3-O pn)
 			    (formula-4-O pn delta)
 			    (formula-5-O pn delta)
			    (formula-6-O pn delta)
 			    (formula-7a-O pn)
 			    (formula-7b-O pn)
			    (formula-8a-O pn)
			    (formula-8b-O pn)
			    )))))
(defun p-nets-over-formula (delta)
  (cons 'and
	(mapcar (lambda (pn) (p-net-over-formula pn delta))
		*pnet-set*)))





