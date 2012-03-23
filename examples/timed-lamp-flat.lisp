; a lamp with a timer


(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)


;(setf sat-interface:*zot-debug* :indeed)

(defvar delta 2)
(defvar cont-dom (loop for i from 0 to delta collect i))
;(define-item cont cont-dom)



(defvar init 
  (yesterday (&& (!! (|| (-P- on)(-P- off)(-P- L))))))
		 ;(cont= 0))))

(defvar the-lamp-de
  (alw (&& 
	 (<->
	  (-P- L)
	  (|| (yesterday (-P- on))
	      (-E- x (loop for i from 2 to delta collect i)
		   (&& (past (-P- on) x)
		       (!! (withinP_ee (-P- off) x))))))
	 (!! (&& (-P- on) (-P- off))))))


(defvar the-lamp-de-flat
  (alwf (&& 
	 (<->
	  (-P- L)
	  (|| (-P- f_0) (-P- f_1)))
	 (!! (&& (-P- on) (-P- off)))

	 (<-> (-P- f_0) (yesterday (-P- on)))
	 (<-> (-P- f_1) 
	      (-E- x (loop for i from 2 to delta collect i)
		   (&& (-P- f_2 x) (!! (-P- f_3 x)))))
	 
	 (-A- x (loop for i from 2 to delta collect i)
	      (<-> (-P- f_2 x) (past (-P- on) x)))
	 
	 (-A- x (loop for i from 2 to delta collect i)
	      (<-> (-P- f_3 x) (withinP_ee (-P- off) x))))))
	 



;; (defvar the-lamp-op
;;   (alwf (&&

;; 	 (!! (&& (-P- on) (-P- off)))
	 
;; 	 (<-> (-P- L) 
;; 	      (-E- x cont-dom
;; 		   (&& (> x 0) (cont= x))))
	 
;; 	 (and-case (x (loop for i from 1 to delta collect i))
;; 		   ((-P- on) 
;; 		    (next (cont= delta)))
		   
;; 		   ((-P- off)
;; 		    (next (cont= 0)))
		   
;; 		   ((&& (cont= 0)
;; 			(!! (-P- on)))
;; 		    (next (cont= 0)))
		   
;; 		   ((&& (cont= x)
;; 			(> x 0)
;; 			(!! (-P- on))
;; 			(!! (-P- off)))
;; 		    (next (cont= (1- x))))))))



(prin1 (completeness-loop
	(lambda (i)
	  (bezot:zot i 
		    (&& init
			 the-lamp-de)
		    :loop-free t))))
(quit)

; op: 12
(prin1 (completeness-loop
	(lambda (i)
	  (eezot:zot i 
		     init
		     :loop-free t
		     :transitions (cdadr the-lamp-op)))))
	  


; Completeness OP-transitions: for delta=5, found 
; solo (kripke-prop *PROPS*):      11
; (kripke-prop *PROPS*) + bounded: 15
; tutte!:                          15
(loop for i from 2
   unless (eezot:zot i 
		    init
		    :loop-free t
		    :transitions (cdadr the-lamp-op))
   do 
     (prin1 i)
     (return t))
(quit)


; completeness DE: for delta=5, found
; solo (kripke-prop *PROPS*):      36? (ucciso dopo 16h45')
; (kripke-prop *PROPS*) + bounded: 
; tutte!:                          


(loop for i from 2
   unless (eezot:zot i 
		    (&& init
			(yesterday the-lamp-de))
		    :loop-free t)
   do 
     (prin1 i)
     (return t))
(quit)







; completeness DE-flat: for delta=5, found
; solo (kripke-prop *PROPS*):      77...
; (kripke-prop *PROPS*) + bounded: 
; tutte!:                          

(loop for i from 2
   unless (ezot:zot i 
		    (&& init
			(yesterday the-lamp-de-flat))
		    :loop-free t)
   do 
     (prin1 i)
     (return t))
(quit)







; completeness OP: for delta=5, found
; solo (kripke-prop *PROPS*):      10
; (kripke-prop *PROPS*) + bounded: 15
; tutte!:                          15

(loop for i from 2
   unless (ezot:zot i 
		    (&& init
			(yesterday the-lamp-op))
		    :loop-free t)
   do 
     (prin1 i)
     (return t))
(quit)
      

; refinement, ok
(ezot:zot
 15
 (&& 
  init
  (!! (yesterday the-lamp-de))
 
  (yesterday the-lamp-op))
 ;:transitions
 )

