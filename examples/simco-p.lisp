; simple examples for completeness
; mpradella MMVIII


(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

; (setf sat-interface:*zot-debug* :indeed)


(defvar delta 4)

(defvar s1-de
  (alwf (<-> 
	(-P- A)
	(&& (lasted_ee (!! (-P- A)) delta)
	    (past (-P- A) delta)))))




; ------------------------------------------

; occhio: con eezot non converge (effetto bordo?)

(prin1 (completeness-loop
	(lambda (i) (bezot:zot i 
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