; Kernel railroad crossing problem  Controller 
; descriptive model

;controller axioms
(defconstant c1  	(<->	(go= 'down) 
                                (past   (-P- EnterR) (- dm gamma))))

(defconstant c2	(<->	(go= 'up)
                        (-P- ExitI)))

(defconstant *Controller* (&& c1 c2))




