; a lamp with a timer

(load "../bi.lisp")
(use-package :trio-utils)


(defvar delta 15)
(load "timed-lamp-de-ax.lisp")
(load "timed-lamp-op-ax.lisp")

;;; -------------- refinement+equivalence --------------------

(defvar refinement
  (alw (&&
	(<-> (-P- on_de) (-P- on_op))
	(<-> (-P- off_de)(-P- off_op))
	(<-> (-P- L_de)  (-P- L_op)))))


(defvar bridge
  (alw
   (&&
    (<-> (cont= 0)
	 (|| (lasted_ei (!! (-P- on_de)) delta)
	     (&&
	      (!! (-P- off_de))
	      (since (!! (-P- on_de)) (-P- off_de)))))
    (-A- x (loop for i from 1 to delta collect i)
	 (<-> (cont= x)
	      (&& 
	       (past (-P- on_de) (+ delta 1 (- x)))
	       (!! (-P- off_de))
	       (since (!! (-P- off_de))
		      (-P- on_de))))))))



(loop for bound in '(30 60 90) do


     (format t "$ refinement~%")

     (funcall the-zot
	      bound
	      (&& 
	       init-op init-de
	       refinement
	       (!! the-lamp-de)
	       )
	      :transitions
	      the-lamp-op
	      :negate-transitions nil
	      )


     (format t "$ equivalence~%")
     (funcall the-zot
	      bound
	      (&& 
	       init-op init-de
	       refinement
	       bridge
	       the-lamp-de
	       )
	      :transitions
	      the-lamp-op
	      :negate-transitions t
	      ))

