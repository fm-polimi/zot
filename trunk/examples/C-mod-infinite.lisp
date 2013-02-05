(asdf:operate 'asdf:load-op 'soloist)
(asdf:operate 'asdf:load-op 'ae2zot)

(use-package :trio-utils)
(use-package :soloist)

;infinite words
(infinite)

(defvar prop 
	(-C- 5 = 1 (-P- p )  5)
)

(defvar spec 
	(&& 
		(futr (!! (-P- e)) 0)				;1
		(futr (!! (-P- e)) 1)				;2
		(futr (&& (-P- e) (-P- p) (!! (-P- q))) 2)	;3
		(futr (!! (-P- e)) 3)				;4
		(futr (&& (-P- e) (-P- q) (!! (-P- p))) 4)	;5
		(futr (&& (-P- e) (-P- p) (!! (-P- q))) 5)	;6
		(futr (!! (-P- e)) 6)				;7
		(futr (!! (-P- e)) 7)				;8
		(futr (&& (-P- e) (-P- q) (!! (-P- p))) 8)	;9
		(futr (!! (-P- e)) 9)				;10
		(alwf (-> (!! (-P- e)) (&& (!! (-P- p))  (!! (-P- q))) ))
 	)
)

(progn
	;it is important to leave some unspecified time instants (hist length = 10 vs solver bound = 12)
	;for zot to be able to "close up" the omega word, otherwise it will always be unsat
	
	(ae2zot::zot  12 (&& (!! (futr prop 8)) spec *counter-constraints*))
	;(print	(&& (!! (futr prop 8)) spec *counter-constraints*))

)

