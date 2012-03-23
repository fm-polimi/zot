(defvar cont-dom (loop for i from 0 to delta collect i))
(define-item cont cont-dom)


(defvar p1-op
  (alw (!! (lasts_ei (-P- L_op) (1+ delta)))))


(defvar p2-op
  (->
   (som (lasts_ei (-P- L_op) (1+ delta)))
   (som (&& (-P- on_op)
	    (withinf_ei (-P- on_op) delta)))))


(defvar init-op
  (yesterday (&& (!! (|| (-P- on_op)(-P- off_op)(-P- L_op)))
		 (cont= 0))))

(defvar the-lamp-op
  (list

   (!! (&& (-P- on_op) (-P- off_op)))
   
   (<-> (-P- L_op) 
	(-E- x cont-dom
	     (&& (> x 0) (cont= x))))
   
   (and-case (x (loop for i from 1 to delta collect i))
	     ((-P- on_op) 
	      (next (cont= delta)))
	     
	     ((-P- off_op)
	      (next (cont= 0)))
	     
	     ((&& (cont= 0)
		  (!! (-P- on_op)))
	      (next (cont= 0)))
	     
	     ((&& (cont= x)
		  (> x 0)
		  (!! (-P- on_op))
		  (!! (-P- off_op)))
	      (next (cont= (1- x)))))))
