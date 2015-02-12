; a lamp with a timer


(asdf:operate 'asdf:load-op 'eezot)
(use-package :trio-utils)


;(setf sat-interface:*zot-debug* :indeed)

(defvar delta 3)
(defvar cont-dom (loop for i from 0 to delta collect i))
(define-item cont cont-dom)



(defvar init 
  (&& (!! (|| (-P- on)(-P- off)(-P- L)))
      (cont= 0)))

(defvar the-lamp-op
  (list
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
	      (next (cont= (1- x)))))))



(eezot:zot 15 (&& init
		  (alwf (somf (cont= 1))))
		  :transitions the-lamp-op)
(quit)

;delta=2: 9 (sia eezot che bezot)
;delta=3: 10 (eezot) 
(prin1 (completeness-loop
	(lambda (i)
	  (eezot:zot i 
		     init
		     :loop-free t
		     :transitions the-lamp-op))))
(quit)

;delta=2: 9 (sia eezot che bezot)
(prin1 (completeness-loop
	(lambda (i)
	  (eezot:zot i 
		     (&& init (alw (cons 'and the-lamp-op)))
		     :loop-free t))))
(quit)

