; a lamp with a timer


(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)


;(setf sat-interface:*zot-debug* :indeed)

(defvar delta 2)


(defvar init 
  (&& (!! (|| (-P- on)(-P- off)(-P- L)))))

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
  (alw (&& 
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

(bezot:zot 20  (&& init the-lamp-de))
(quit)


;delta=2: 17 (bezot), 16 (eezot)
;delta=3: 38? (eezot)
(prin1 (completeness-loop
	(lambda (i)
	  (eezot:zot i 
		    (&& init
			 the-lamp-de)
		    :loop-free t))))
(quit)


;delta=2: 17 (bezot), 16 (eezot)
(prin1 (completeness-loop
	(lambda (i)
	  (eezot:zot i 
		    (&& init
			 the-lamp-de-flat)
		    :loop-free t))))
(quit)


