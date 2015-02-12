; Kernel railroad crossing problem  Controller 
; operational model
; assumes a monoinfinite time domain



; PastER(i), for 1<i<dm-gamma, means that an EnterR event occurred i t.u. ago 
; axioms defining PastER predicate 
(defconstant co1  	(<->	(-P- EnterR) (next (-P- PastER 1 ) ) )  ) 

(defconstant PERDom (loop for i from 1 to (- dm gamma)  collect i) ) 

(defconstant PERDom-1 (loop for i from 1 to (- (- dm gamma) 1) collect i) )

(defconstant co2  (-A- x PERDom-1 (<-> (-P- PastER x)
                                       (next (-P- PastER (+ x 1)) ) ) ) ) 
; initial value for PastER predicate: 
; at the first time instant it is false for every possible value
;(defconstant co3 (-> (!! (yesterday t ) ) 
;                     (-A- x PERDom (!! (-P- PastER x) ) ) ) )

; go=down iff a train entered R dm-gamma t.u. ago
(defconstant co4  	(<->	(go= 'down)  (-P- PastER (- dm gamma) ) ) )  

; go=up when the train exits region I
(defconstant co5  	(<->	(go= 'up) (-P- ExitI) ) )  



(defconstant *Controller-op* (list co1 co2 ; co3 
				 co4 co5 ) )


(defconstant *Controller-op-init* (yesterday (-A- x PERDom (!! (-P- PastER x) ))))



