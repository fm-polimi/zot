; simple examples for completeness
; mpradella MMVIII


(asdf:operate 'asdf:load-op 'eezot)
(use-package :trio-utils)

(setf sat-interface:*zot-debug* :indeed)


(defvar delta 3)

(defvar s1-de
  ;(yesterday 
   (alw (-> 
		    (-P- A)
		    (withinf_ei (-P- A) delta))));)
  



; ------------------------------------------
(loop for i from 2
   unless (eezot:zot i 
		    (&& 'A s1-de)
		    :loop-free t)
   do 
     (prin1 i)
     (return t))
(quit)

; delta: 5,  6,  7, 10,
; bound: 9, 10, 11, 14,
(prin1 (completeness-loop
	(lambda (i) (eezot:zot i 
			       (&& (-P- A) ; init @ 1
				   s1-de)
			       :loop-free t
		    ))))

(quit)

; simple test
(eezot:zot 10
	   (&& (-P- A) ; init @ 1
	       s1-de)
	   )
(quit)



(loop for i from 3
   unless (eezot:zot i 
		    (&& (-P- A) ; init @ 1
			s1-de)
		    :loop-free t
		    )
   do 
     (prin1 i)
     (return t))
(quit)


(loop for i from 2
   unless (eezot:zot i 
		    (&& (-P- A) ; init @ 1
			s1-de
			(alw (!! '**LOOP**)))
		    :loop-free t)
   do 
     (prin1 i)
     (return t))
(quit)

; 2 only prop
; 9 all inclusive
(loop for i from 2
   unless (eezot:zot i 
		    s1-de
		    :loop-free t)
   do 
     (prin1 i)
     (return t))
(quit)