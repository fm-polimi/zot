; a lamp with a timer

(load "../bi.lisp")
(use-package :trio-utils)


(defvar delta 10)
(load "timed-lamp-de-ax.lisp")
(load "timed-lamp-op-ax.lisp")


(loop for bound in '(20) do

	    (format t "$ op p1 : delta:~s bound=~s~%" delta bound)
	    (assert (funcall the-zot
		     bound
		     (&& 
		       init-op
		       (!! p1-op)
		       )
		     :transitions
		     the-lamp-op
		     :negate-transitions nil
		     ))

	    (format t "$ op p2 : delta:~s bound=~s~%" delta bound)
	    (assert (not (funcall the-zot
		     bound
		     (&& 
		       init-op
		       (!! p2-op)
		       )
		     :transitions
		     the-lamp-op
		     :negate-transitions nil
		     )))


	    )
