; a lamp with a timer


(asdf:operate 'asdf:load-op 'ezot)
(use-package :trio-utils)


(defconstant delta 5)
(defconstant cont-dom (loop for i from 0 to delta collect i))
(define-item cont cont-dom)



(defconstant init 
  (yesterday (&& (!! (|| (-P- on)(-P- off)(-P- L)))
		 (cont= 0))))

(defconstant the-lamp-de
  (alwf (&& 
	 (<->
	  (-P- L)
	  (|| (yesterday (-P- on))
	      (-E- x (loop for i from 2 to delta collect i)
		   (&& (past (-P- on) x)
		       (!! (withinP_ee (-P- off) x))))))
	 (!! (&& (-P- on) (-P- off))))))



(defconstant the-lamp-op
  (alwf (&&

	 (!! (&& (-P- on) (-P- off)))
	 
	 (<-> (-P- L) 
	      (-E- x cont-dom
		   (&& (> x 0) (cont= x))))
	 
	 (and-case (x (loop for i from 1 to delta collect i))
		   ((-P- on) 
		    (next (cont= delta)))
		   
		   ((-P- off)
		    (next (cont= 0)))
		   
		   ((&& (cont= 0)
			(!! (-P- on)))
		    (next (cont= 0)))
		   
		   ((&& (cont= x)
			(> x 0)
			(!! (-P- on))
			(!! (-P- off)))
		    (next (cont= (1- x))))))))


(ezot:zot ; simple history
 15
 (&& 
  init
  (yesterday the-lamp-op))
 )

(quit)

#|
; completeness: for delta=5, found k=15

(loop for i from 2
   unless (ezot:zot i 
		    (&& init
			(yesterday the-lamp-op))
		    :loop-free t)
   do 
     (prin1 i)
     (return t))
(quit)
|#       

; refinement, ok
(ezot:zot
 15
 (&& 
  init
  (!! (yesterday the-lamp-de))
 
  (yesterday the-lamp-op))
 ;:transitions
 )

