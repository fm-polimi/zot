(load "../mono.lisp")
(use-package :trio-utils)

(load "krc-constants1.lisp")


(load "Interlock_op_MONO_trans.lisp")


(loop for bound in '(30 60 90)
      do
      
     (format t "$ krc interlock alone op : bound=~s~%" bound)      
     (funcall the-zot
	      bound
	      (&& *interlock-init*
		  (yesterday (&& (!! 'EnterR)
				 (!! 'EnterI)
				 (!! 'ExitI))))

	      :transitions
	      *Interlock-op*))


