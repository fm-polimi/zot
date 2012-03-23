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
