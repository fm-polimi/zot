(load "../bi.lisp")
(use-package :trio-utils)


(defvar NUM_PROCS 3)
(defvar T_RELEASE 3)
(defvar T_REQUEST 3)

(load "alloc-op-ax.lisp")
(load "alloc-prop.lisp")


(loop for bound in '(15) do

      (format t "$ op : History generation : bound=~s~%" bound)
      (assert (funcall the-zot bound
		       (yesterday init)
		       :transitions the-system))

      (format t "$ op : SimpleFairness : bound=~s~%" bound)
      (assert (funcall the-zot bound
		       (&&
			 (yesterday init)
			 (!! SimpleFairness))
		       :transitions the-system))

      (format t "$ op : ConditionalFairness : bound=~s~%" bound)
      (assert (not (funcall the-zot bound
			    (&&
			      (yesterday init)
			      (!! ConditionalFairness))
			    :transitions the-system)))

      (format t "$ op : prec : bound=~s~%" bound)
      (assert (not (funcall the-zot bound
			    (&&
			      (yesterday init)
			      (!! prec))
			    :transitions the-system)))

      (format t "$ op : suspendFairness : bound=~s~%" bound)
      (assert (not (funcall the-zot bound
			    (&&
			      (yesterday init)
			      (!! suspendFairness))
			    :transitions the-system)))

      )
