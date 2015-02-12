(asdf:operate 'asdf:load-op 'soloist)
(asdf:operate 'asdf:load-op 'ae2zot)

(use-package :trio-utils)
(use-package :soloist)

;finite words of length 10
(finite)
(bound 10)

(defvar prop 
	(-C- 5 = 1 (-P- p ) 5)
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
		(lasts_ie (-> (!! (-P- e)) (&& (!! (-P- p))  (!! (-P- q))) ) 10)
 	)
)

(progn
	
	(ae2zot::zot  11 (&& (!! (futr prop 8)) spec *counter-constraints*) :no-loop :t)
	;(print	(&& (!! (futr prop 8)) spec *counter-constraints*))

)

