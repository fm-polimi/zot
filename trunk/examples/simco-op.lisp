; simple examples for completeness
; mpradella MMVIII


(asdf:operate 'asdf:load-op 'eezot)
(use-package :trio-utils)

;(setf sat-interface:*zot-debug* :indeed)


(defvar delta 6)
(defvar cnt-d  (loop for i from 0 to (1- delta) collect i))
(defvar cnt-d1 (loop for i from 0 to (- delta 2) collect i))
(define-item cnt cnt-d)


(defvar s1-op
  (list

   (<-> 
    (-P- A)
    (cnt= 0))

   (-> (cnt= (1- delta)) 
       (next (cnt= 0)))

   (and-case (x cnt-d1)
	     ((cnt= x)
	      (next (cnt= (1+ x)))))
   
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

(loop 
   with flag = nil
   with var = nil
   for i from 3
   do (setf var (eezot:zot i 
			   (&& (-P- A)) ; init @ 1
			   :loop-free t
			   :transitions s1-op))
     when var 
     do (setf flag t)
     when (and flag (not var))
   do 
     (prin1 i)
     (return t))
(quit)





