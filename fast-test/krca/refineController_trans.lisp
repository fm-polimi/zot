; Kernel railroad crossing problem  
; refinement of the Controller subsystem
; monoinfinite time domain

(load "../mono.lisp")
(use-package :trio-utils)


(load "krc-constants1.lisp")

(load "go-item.lisp")

(load "Controller_de.lisp")
(load "Controller_op_MONO_trans.lisp")

 


; meaning of the PastER predicate
(defconstant co6 (-A- x PERDom (<-> (-P- PastER x)
                                    (past (-P- EnterR) x )) ) )   

(loop for bound in '(15)
      do

      (format t "$ krc : refine controller : bound=~s~%" bound)
      (assert (not (funcall the-zot 
			    bound

			    ;;(!! (-> (alw  *Controller-op*) (alw *Controller*) ) )

			    (&& 
			      *Controller-op-init*
			      (!! (alw *Controller*)))

			    :transitions
			    *Controller-op*

			    )))

      )

