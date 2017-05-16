(asdf:oos 'asdf:load-op 'meezot)
(use-package :trio-utils)

; ;; <krca2>
; ; (load "krc-constants2.lisp") ;krca2
; ;Time constants
; (defconstant   dMax 22)
; (defconstant   dm 16) ; 
; (defconstant   hMax 14)
; (defconstant   hm 8)
; (defconstant   gamma 4)
; ; domain of possible commands to the bar
; (defconstant go-dom '(up down notin))
; ;; </krca2>


;; <krca3>
; (load "krc-constants3.lisp") ;krca3
;Time constants
(defconstant   dMax 30)
(defconstant   dm 20) ; 
(defconstant   hMax 19)
(defconstant   hm 11)
(defconstant   gamma 7)
; domain of possible commands to the bar
(defconstant go-dom '(up down notin))
;; </krca3>


; (load "go-item.lisp")
; item representing the go command to the bar 
(define-item go go-dom)

; (load "TrainTrack_MONO.lisp")
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


; (load "Interlock_de.lisp")
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



; (load "Controller_de.lisp")
; Kernel railroad crossing problem  Controller 
; descriptive model

;controller axioms
(defconstant c1     (<->    (go= 'down) 
                                (past   (-P- EnterR) (- dm gamma))))

(defconstant c2 (<->    (go= 'up)
                        (-P- ExitI)))

(defconstant *Controller* (&& c1 c2))

; (load "Bar_de.lisp")
; Kernel railroad crossing problem  Bar
; descriptive model

(defconstant bar-dom '(open closed mup mdown) )
(define-item bar bar-dom)





(defun uptonow (A)  (past A 1))
(defun until_w (A B) (|| (until A B) (Alwf A)))

;bar movement axioms
(defconstant m1  (-> (&&  (upToNow (bar= 'closed) );  when go_up is received, the bar starts moving immediately
                         (go= 'up))
                    (&&        (lasts_ie (bar= 'mup) gamma)
                               (futr   (Until_w (bar= 'open) (go= 'down))
                                       gamma) )))

(defconstant m2  (-> (&& (upToNow (bar=  'open) ) ;when go_down is received, that bar starts immediately
                        (go= 'down))
                    (&&        (lasts_ie (bar= 'mdown) gamma)
                               (futr    (Until_w (bar= 'closed) (go= 'up));
                                        gamma) )))


(defconstant m3  (-> (alwp_i (!! (go= 'down)))
                    (bar= 'open)))

(defconstant *Bar* (&& m1 m2 m3))



(defconstant Dpre  (+  (- dMax dm) gamma  1) )

(defconstant Dpost  (+  gamma 1 ) )




; safety: the bar is down when the train is InI
; (defconstant safety  (alwf  (-> (-P- InI)
;                                (bar= 'closed) ) ) )

                               
; utility: the bar is up when the train will not be InI for Dpre t.u. 
; and it has not been InI for Dpost t.u.
(defconstant utility  (alwf  (-> (&& (lasts_ii (!! (-P- InI) ) Dpre )
                                    (lasted_ii (!! (-P- InI) ) Dpost) )
                                (bar= 'open) ) ) )

(format t "~%Found: ~S~%"
  (loop for bound from 1 to 90 do
       (let ((res 
        (meezot:zot 
         bound
          (yesterday (&&
            ; (somf (bar= 'closed));;only for SAT
          (alwf (&&
          *Controller* 
          *Interlock*
          *Bar*
          *TrainTrack*
            (!! (alwf  (-> (-P- InI) (bar= 'closed) ))) ;;safety ###p1###
            ; (!! utility) ;; ###p2###
          )))
 )
         )))
         (if res
     (return bound))
(format t "~%Checked Bound: ~S~%" bound)
         )))