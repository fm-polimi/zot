(load "../bi.lisp")
(use-package :trio-utils)


(defvar NUM_PROCS 3)
(defvar T_RELEASE 3)
(defvar T_REQUEST 3)

(load "alloc-de-ax.lisp")
(load "alloc-prop.lisp")


(loop for bound in '(15) do

      (format t "$ de : History generation : bound=~s~%" bound)
      (assert (funcall the-zot bound
		       (&& (yesterday init) the-system)))

      (format t "$ de : SimpleFairness : bound=~s~%" bound)
      (assert (funcall the-zot bound
		       (&& (yesterday init) the-system
			   (!! SimpleFairness))))

      (format t "$ de : ConditionalFairness : bound=~s~%" bound)
      (assert (not (funcall the-zot bound
			    (&& (yesterday init) the-system
				(!! ConditionalFairness)))))

      (format t "$ de : prec : bound=~s~%" bound)
      (assert (not (funcall the-zot bound
			    (&& (yesterday init) the-system
				(!!  prec)))))

      (format t "$ de : suspendFairness : bound=~s~%" bound)
      (assert (not (funcall the-zot bound
			    (&& (yesterday init) the-system
				(!! suspendFairness )))))

      )
