; simple examples for completeness
; mpradella MMVIII


(asdf:operate 'asdf:load-op 'eezot)
(use-package :trio-utils)

(setf sat-interface:*zot-debug* :indeed)


(defvar delta 6)

(defvar s1-de
 (yesterday (alwf (<-> 
	(-P- A)
	(&& (lasts_ee (!! (-P- A)) delta)
	    (futr (-P- A) delta))))))



; con "nuovo" algo:
; delta: 2 3 4 5  6
; ------------------
; op:    4 5 6 7  8
; de:    5 7 9 11 13


(loop for i from 2
   unless (eezot:zot i 
		    (&& (-P- A) s1-de)
		    :loop-free t)
   do 
     (prin1 i)
     (return t))
(quit)

; ------------------------------------------
(prin1 (completeness-loop
	(lambda (i) (eezot:zot i 
			       (&& (-P- A) ; init @ 1
				   s1-de)
			       :loop-free t
		    ))))

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