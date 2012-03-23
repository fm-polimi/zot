; Kernel railroad crossing problem  
; safety and utility with monoinfinite time domain
; all components in the descriptive version

(load "../mono.lisp")
(use-package :trio-utils)

(load "krc-constants1.lisp")
(load "go-item.lisp")

(load "TrainTrack_MONO.lisp")
(load "Interlock_de.lisp")
(load "Controller_de.lisp")
(load "Bar_de.lisp")


(defconstant Dpre  (+  (- dMax dm) gamma  1) )

(defconstant Dpost  (+  gamma 1 ) )




; safety: the bar is down when the train is InI
(defconstant safety  (alw  (-> (-P- InI)
                               (bar= 'closed) ) ) )

                               
; utility: the bar is up when the train will not be InI for Dpre t.u. 
; and it has not been InI for Dpost t.u.
(defconstant utility  (alw  (-> (&& (lasts_ii (!! (-P- InI) ) Dpre )
                                    (lasted_ii (!! (-P- InI) ) Dpost) )
                                (bar= 'open) ) ) )




(loop for bound in '(15)
      do

      (format t "$ krc : history de : bound=~s~%" bound)      
      (assert (funcall the-zot 
		       bound
		       (&&
			 (somp (alwp (!! (-P- EnterR))))
			 (alw (&& *Controller* *Interlock* *Bar*  *TrainTrack* ) ))
		       ))

      (format t "$ krc : safe de : bound=~s~%" bound)
      (assert (not (funcall the-zot 
			    bound     
			    (&&
			      (somp (alwp (!! (-P- EnterR))))
			      (alw (&& *Controller* *Interlock* *Bar*  *TrainTrack* ) )
			      (!! safety))
			    )))

      (format t "$ krc : utility de : bound=~s~%" bound)
      (assert (not (funcall the-zot 
			    bound     
			    (&&
			      (somp (alwp (!! (-P- EnterR))))
			      (alw (&& *Controller* *Interlock* *Bar*  *TrainTrack* ) )
			      (!! utility))
			    )))

      )
