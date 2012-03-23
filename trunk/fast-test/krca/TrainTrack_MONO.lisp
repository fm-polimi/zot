; Kernel railroad crossing problem  -Train&Track 
; descriptive model with relationship predicate


(defconstant tdDom (loop for i from dm to dMAX collect i) )
(defconstant thDom (loop for i from hm to hMAX collect i) )

; the trains enters region R only when the semaphore is green
(defconstant a0 (->  (-P- EnterR) (-P- green) ))  

; axioms defining relationship predicate ER_EI
  
; occurrence axiom for ER_EI
(defconstant a1  (-A- t1 tdDom (-> (-P- ER_EI t1) 
                                   (&& (-P- EnterR)
                                       (futr (-P- EnterI) t1) ) ) ) )
; cause axiom for ER_EI  
(defconstant a2  (-> (-P- EnterR)
                     (-E- t1 tdDom (-P- ER_EI t1) ) ))

; effect axiom for ER_EI  
(defconstant a3  (-> (-P- EnterI)
                     (-E- t1 tdDom (past (-P- ER_EI t1) t1) ) ) )

  
; unique effect axiom for ER_EI  
(defconstant a4  (-A- t1 tdDom 
                      (-A- t2 tdDom (-> (&& (-P- ER_EI t1)
                                            (-P- ER_EI t2))
                                        (equal t1 t2) ))))

; unique cause axiom for ER_EI  
  (defconstant a5  (-A- t1 tdDom 
                        (-A- t2 tdDom (-> (&& (past (-P- ER_EI t1) t1)
                                              (past (-P- ER_EI t2) t2) )
                                          (equal t1 t2) ))))
  
; similar axioms for the EI_ExI relationship predicate 
; occurrence axiom for EI_ExI
(defconstant a6  (-A- t1 thDom (-> (-P- EI_ExI t1) 
                                   (&& (-P- EnterI)
                                       (futr (-P- ExitI) t1) ) ) ) )
; cause axiom for EI_ExI  
(defconstant a7  (-> (-P- EnterI)
                     (-E- t1 thDom (-P- EI_ExI t1) ) ))

; effect axiom for EI_ExI  
(defconstant a8  (-> (-P- ExitI)
                     (-E- t1 thDom (past (-P- EI_ExI t1) t1) ) ) )
  
; unique effect axiom for EI_ExI  
(defconstant a9  (-A- t1 thDom 
                      (-A- t2 thDom (-> (&& (-P- EI_ExI t1)
                                            (-P- EI_ExI t2))
                                        (equal t1 t2) ))))

; unique cause axiom for ER_EI  
(defconstant a10  (-A- t1 thDom 
                      (-A- t2 thDom (-> (&& (past (-P- EI_ExI t1) t1)
                                            (past (-P- EI_ExI t2) t2) )
                                        (equal t1 t2) ))))
  
; the train is InI iff no ExitI occurred since the last EnterI
(defconstant a11  (<-> (-P- InI)
                       (since_ii (!! (-P- ExitI) ) (-P- EnterI) ) ) )  


(defconstant *TrainTrack* (&& a0 a1 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 ) ) 



