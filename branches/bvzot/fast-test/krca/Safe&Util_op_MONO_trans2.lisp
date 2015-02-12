; Kernel railroad crossing problem   
; safety and utility with monoinfinite time domain
; controller and interlock components in the operational version

(load "../mono.lisp")
(use-package :trio-utils)

(load "krc-constants2.lisp")
(load "go-item.lisp")

(load "TrainTrack_MONO.lisp")
(load "Interlock_op_MONO_trans.lisp")
(load "Controller_op_MONO_trans.lisp")
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


  
;; (meezot:zot
;;  90
;;  (yesterday (!! 
;;   (-> (alwf (&& *TrainTrack* *Controller-op* *Bar* *Interlock-op*  ) )
;;       (&& safety utility) ) 
;;   ))
;;  )

(loop for bound in '(30 60 90)
      do
      
      (format t "$ krc : history op : bound=~s~%" bound)
      (funcall the-zot 
	       bound
	       (&&
		(somp (alwp (!! (-P- EnterR))))
		*interlock-init*
		*Controller-op-init*
		(alw *TrainTrack*)
		(alw *Bar*)
		)

		:transitions 
		(append *Interlock-op* *Controller-op*)
		)


      (format t "$ krc : safe op : bound=~s~%" bound)
      (funcall the-zot 
	       bound
	       (&&
		(somp (alwp (!! (-P- EnterR))))
		*interlock-init*
		*Controller-op-init*
		(alw *TrainTrack*)
		(alw *Bar*)
		
		(!! safety))

		:transitions 
		(append *Interlock-op* *Controller-op*)
		)



      (format t "$ krc : utility op : bound=~s~%" bound)
      (funcall the-zot 
	       bound	       (&&
		(somp (alwp (!! (-P- EnterR))))
		*interlock-init*
		*Controller-op-init*
		(alw *TrainTrack*)
		(alw *Bar*)
		
		(!! utility))

		:transitions 
		(append *Interlock-op* *Controller-op*)
		)

     )
