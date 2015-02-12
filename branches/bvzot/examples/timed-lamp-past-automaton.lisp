;lamp with past automaton
(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

(defconstant *init-lamp* 
	(!! (|| (-P- on) 
		(-P- on1) 
		(-P- on2) 
		(-P- on3) 
		(-P- on4) 
		(-P- off) (-P- off1) (-P- off2) (-P- off3) (-P- L))
	    )
  )
 
(defconstant *lamp-past-op*
  (list
    (<->	(|| 	(-P- on)
			(&& 	(-P- on1)  (!! (-P- off))) 
			(&&	(-P- on2) (!! (|| (-P- off) (-P- off1))))
			(&&	(-P- on3) (!! (|| (-P- off) (-P- off1) (-P- off2))))
			(&&	(-P- on4) (!! (|| (-P- off) (-P- off1) (-P- off2) (-P- off3)))))
		(next (-P- L)))
    (<->	(-P- on)  
		(next (-P- on1) ))
    (<-> 	(-P- on1)  
		(next (-P- on2)))
    (<-> 	(-P- on2) 
		(next (-P- on3)))
    (<-> 	(-P- on3) 
		(next (-P- on4)))
    (<->	(-P- off) 
		(next (-P- off1)))
    (<->	(-P- off1) 
		(next (-P- off2)))
    (<->	(-P- off2) 
		(next (-P- off3)))
    (!! 	(&& (-P- on) (-P- off) 
		    )
		)
    )
  )


(prin1 (completeness-loop
	(lambda (i)
	  (bezot:zot i 
		    *init-lamp*
		    :transitions *lamp-past-op*
		    :loop-free t))))
(quit)



; fermato dopo 44 senza successo...	   

(loop for i from 2
   unless (eezot:zot i 
		    (&& *init-lamp*
			(list 'alw(cons 'and *lamp-past-op*)))
		    :loop-free t)
   do 
     (prin1 i)
     (return t))
(quit)
	   
; fermato dopo 52 senza successo...

(loop for i from 2
   unless (eezot:zot i 
		    *init-lamp*
		    :transitions *lamp-past-op*
		    :loop-free t)
   do 
     (prin1 i)
     (return t))
(quit)
