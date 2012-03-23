(load "../mono.lisp")

(use-package :trio-utils)

(load "io-op-ax.lisp")

(defvar *delay* 10)

(defvar init-de
  (&& (!! (-P- in-d))
      (!! (-P- out-d))
      (-A- x (loop for x from 1 to (1- *delay*) collect x)
	   (!!(futr (-P- out-d) x)))))


(defvar trio-spec
  (alw 
   (<-> (-P- in-d) (futr (-P- out-d) *delay*))))


(defvar bridge
  (alw (&&
    (<-> (-P- in-s) (-P- in-d))
    (<-> (-P- out-s)(-P- out-d)))))


(loop for bound in '(20) do

      (format t "$ : Refinement : bound=~s~%" bound)
      (assert (not (funcall the-zot bound
			    (&&
			      bridge
			      (!! trio-spec)
			      (yesterday init)
			      (yesterday init-de)
			      )
			    :transitions state-trans-spec
			    )))

      )
