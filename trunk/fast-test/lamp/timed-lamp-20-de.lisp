; a lamp with a timer

(load "../bi.lisp")
(use-package :trio-utils)


(defvar delta 20)
(load "timed-lamp-de-ax.lisp")


(loop for bound in '(30 60 90) do

	    (format t "$ de p1 : delta:~s bound=~s~%" delta bound)
	    (funcall the-zot
		     bound
		     (&& 
		       init-de
		       (!! p1-de)
		       the-lamp-de
		       )
		     )

	    (format t "$ de p2 : delta:~s bound=~s~%" delta bound)
	    (funcall the-zot
		     bound
		     (&& 
		       init-de
		       (!! p2-de)
		       the-lamp-de
		       )
		     )

	    )