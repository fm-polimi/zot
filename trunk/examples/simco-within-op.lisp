; simple examples for completeness
; mpradella MMVIII


(asdf:operate 'asdf:load-op 'eezot)
(use-package :trio-utils)

;(setf sat-interface:*zot-debug* :indeed)


(defvar delta 3)


(defvar cnt-d  (loop for i from 0 to (1- delta) collect i))
(defvar cnt-d1 (loop for i from 0 to (- delta 2) collect i))
(define-item cnt cnt-d)


(defvar s1-op
  (list
   (-> (-P- A)
       (cnt= 0))
   
   (-> (cnt= (1- delta)) 
       (next (-P- A)))
   
   (and-case (x cnt-d1)
	     ((cnt= x)
	      (next (|| (-P- A) 
			(cnt= (1+ x))))))
   
   ))

; ------------------------------------------
(loop for i from 2
   unless (eezot:zot i 
		    (-P- A) ; init @ 1
		    :loop-free t
		    :transitions s1-op)
   do 
     (prin1 i)
     (return t))
(quit)


; delta:  5,  6, 
; bound:  8,  9
(prin1 (completeness-loop
	(lambda (i) (eezot:zot i 
			       (&& (-P- A) ; init @ 1
				   (cons 'alw (list (cons 'and  s1-op))))
			       :loop-free t)
		    )))

(quit)

; delta: 5, 6, 7, 10,
; bound: 7, 8, 9, 12,
(prin1 (completeness-loop
	(lambda (i) (eezot:zot i 
			       (&& (cnt= 0) (-P- A)) ; init @ 1
			       :loop-free t
			       :transitions s1-op)
		    )))

(quit)


; simple test
(eezot:zot 10
	   (&& (-P- A)) ; init @ 1
	   :transitions s1-op)
(quit)



(loop for i from 2
   unless (eezot:zot i 
		    (&& (-P- A) ; init @ 1
			(cons 'alw (list (cons 'and (cdr s1-op)))))
		    :loop-free t
		    :transitions s1-op)
   do 
     (prin1 i)
     (return t))
(quit)


