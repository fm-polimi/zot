; Kernel railroad crossing problem  -Interlocking operational version
; assumes a monoinfinite time domain




; red predicate, the opposite of green - just to increase readability of traces
(defconstant io00 (<-> (-P- red) (!! (-P- green) ) ) )  


; at start time (monoinfinite) light is green
;; (defconstant io01 (-> (!! (yesterday t ) ) 
;;                       (-P- green) )   
;;   ) 


(defconstant *interlock-init* (yesterday (&& (-P- green)
					     (!! (-P- red)))))


(defconstant io0 (-> (&& (-P- green) (-P- EnterR)  ) 
                     (next (-P- red) ) ) )

(defconstant io1 (-> (&& (-P- green) (!! (-P- EnterR) ) ) 
                     (next (-P- green) ) ) )

(defconstant io2 (-> (&& (-P- red) (-P- ExitI) (!! (-P- EnterR)) )  
                     (next (-P- green) ) ) )

(defconstant io3 (-> (&& (-P- red) (-P- ExitI) (-P- EnterR) )  
                     (next (-P- red) ) ) )

(defconstant io4 (-> (&& (-P- red)  (!! (-P- ExitI) ) ) 
                     (next (-P- red) ) ) ) 

(defconstant *Interlock-op* (list io00 io0 io1 io2 io3 io4 ) ) 





