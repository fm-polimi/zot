; a lamp with a timer


(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)


(defconstant delta 5)



(defconstant init 
  (yesterday (&& (!! (|| (-P- on)(-P- off)(-P- L))))))

(defconstant the-lamp-de
  (alw (&& 
	 (<->
	  (-P- L)
	  (|| (yesterday (-P- on))
	      (-E- x (loop for i from 2 to delta collect i)
		   (&& (past (-P- on) x)
		       (!! (withinP_ee (-P- off) x))))))
	 (!! (&& (-P- on) (-P- off))))))



(bezot:zot
 10
 (&& 
  init  the-lamp-de (alwf (somf (lasts 'on 3))) (alwp (somp 'on))))
 

