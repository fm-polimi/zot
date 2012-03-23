
(defconstant *state* '(wait set critical))
(defconstant *x-dom* (cons 0 *procs*))
(defconstant *time-interval* (loop for t0 from 1 to *delay* collect t0))

(define-item the-x *x-dom*)
(define-array count *procs* (loop for t0 from 0 to (1+ *delay*) collect t0))
(define-array set-flag *procs* '(True False))
(define-array proc *procs* *state*)



(defconstant *init*
  (&&
   (the-x= 0)
   (-A- i *procs*
	(proc= i 'wait))))



(defconstant *wait->set*
  (and-case (i *procs*)
	    ((proc= i 'wait) (&& (count= i 0)
				 (set-flag= i 'False)))

	    ((proc= i 'wait)
	     (!! (the-x= i)))

	    ((&& (proc= i 'wait)
		 (!! (the-x= 0)))
	     (next (proc= i 'wait)))

	    ((&& (proc= i 'wait)
		 (the-x= 0))
	     (next (|| (proc= i 'wait)
		       (&& (proc= i 'set)
			   (count= i 1)))))))

(defconstant *counter-variation*
  (and-case (i *procs* c *time-interval*)
	    ((count= i c) (proc= i 'set))

	    ((&& (count= i c)(< c *delay*))
	     (next (count= i (1+ c))))

	    ((count= i *delay*) 
	     (next (&& (count= i 0)
		       (|| (proc= i 'critical)
			   (proc= i 'wait)))))))

(defconstant *x-variation-invariant*
  (<-> 
   (!! (the-x= 0))
   (-E- i *procs* (proc= i 'set))))



(defconstant *x-variation*
  (and-case (i *procs*)
	    ((count= i (length *procs*))
	     (set-flag= i 'True))


	    ((&& (the-x= 0)
		 (next (the-x= i)))
	     (next (set-flag= i 'True)))

	    ((&& (set-flag= i 'True)
		 (the-x= i)
		 (-E- j *procs*
		      (&& (not (eql i j))
			  (proc= j 'set)
			  (set-flag= j 'False))))
	     (next (!! (the-x= i))))

	    ((&& (!! (the-x= i))
		 (next (the-x= i)))
	     (&& (set-flag= i 'False)
		 (next (set-flag= i 'True))))



	    ((&& (set-flag= i 'False)
		 (next (set-flag= i 'True)))
	     (&& (!! (the-x= i))
		 (next (the-x= i))))

	    ((&& (set-flag= i 'True)
		 (next (set-flag= i 'True)))
	     (|| (the-x= i)
		 (next (!! (the-x= i)))))

	    ((set-flag= i 'True)
	     (next (|| (set-flag= i 'True)
		       (&& (set-flag= i 'False)
			   (!! (proc= i 'set))))))

	    ((set-flag= i 'True)
	     (proc= i 'set))))


(defconstant *critical-part*
  (and-case (i *procs*)
	    ((&& (proc= i 'set)
		 (next (proc= i 'critical)))
	     (&& (the-x= i)
		 (next (the-x= 0))))

	    ((&& (proc= i 'set)
		 (the-x= i)
		 (count= i *delay*))
	     (next (proc= i 'critical)))
	    
	    ((proc= i 'critical)
	     (next (proc= i 'wait)))))


(defconstant *sys*
  (list *wait->set*
	*counter-variation*
	*x-variation*
	*x-variation-invariant*
	*critical-part*
	))
	   
(defconstant *fair*
  (-A- p *procs*
       (somf (proc= p 'critical))))


(defconstant *property1*
  (-A- p *procs*
       (->
	(proc= p 'critical)
	(!! (-E- q *procs*
		 (&& (not (equal p q))
		     (proc= q 'critical)))))))
