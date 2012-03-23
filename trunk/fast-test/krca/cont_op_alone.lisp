(load "../mono.lisp")
(use-package :trio-utils)

(load "krc-constants1.lisp")


(load "go-item.lisp")
(load "Controller_op_MONO_trans.lisp")



(loop for bound in '(30 60 90)
      do
      
     (format t "$ krc controller alone op : bound=~s~%" bound)      
     (funcall the-zot
	      bound
	      (&& *Controller-op-init*
		  (yesterday (&& (!! (-P- EnterR))
				 (!! (-P- ExitI))
				 (go= 'notin))))
	      :transitions
	      *Controller-op*))


