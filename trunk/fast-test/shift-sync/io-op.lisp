(load "../mono.lisp")
(use-package :trio-utils)

  
(load "io-op-ax.lisp")


(defvar constr
  (alwf (somf (-P- in-s))))


(loop for bound in '(20) do

      (format t "$ op : History generation : bound=~s~%" bound)
      (assert (funcall the-zot 
	bound
	(&& 
	  (yesterday init)
	  constr
	  )
	:transitions state-trans-spec
	)
      ))
