; Kernel railroad crossing problem  
; Interlocking descriptive version with no assumption that there is a first train
; NB for the interlocking to work it is assumed that trains do not enter region R 
; if the signaling light is red 


; (defun prev (A) (yesterday A))



; red predicate, the opposite of green - just to increase readability of traces
(defconstant id0 (<-> (-P- red) (!! (-P- green) ) ) )  


; light is red iff there was no ExitI (with no simultaneous EnterR) since the last EnterR 
; (this includes the case when there was no EnterR in the past)
(defconstant id1 (<-> (-P- red) (yesterday (since_ii (!! (&& (-P- ExitI) (!! (-P- EnterR))) )
                                                     (-P- EnterR) ) ) ) )   

(defconstant *Interlock* (&& id0 id1  ) ) 



