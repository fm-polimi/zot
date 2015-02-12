; Fischer's protocol
; MPradella, MMVIII

(load "../mono.lisp")
(use-package :trio-utils)



(defvar *procs* '(1 2 3))
(defvar *delay* 4)


(defvar *state* '(wait set critical))
(defvar *x-dom* (cons 0 *procs*))
(defvar *delay+1* (1+ *delay*))

(defvar *time-interval* (loop for t0 from 1 to *delay+1* collect t0))

(define-item  the-x-op *x-dom*)
(define-array count *procs* (loop for t0 from 0 to (1+ *delay+1*) collect t0))
(define-array set-flag *procs* '(True False))
(define-array proc-op *procs* *state*)

(define-item the-x *x-dom*)
(define-array proc *procs* *state*)

; ------- DESCRIPTIVE --------

(defvar *init*
  (&&
   (the-x= 0)
   (-A- i *procs*
	(proc= i 'wait))))



(defvar *back-change-impossible*
  (-A- i *procs*
       (-A- t0 *time-interval*
	    (-> 
	     (&& (the-x= i)
		 (futr (the-x= i) t0))
	     (|| (-E- t1 *time-interval* 
		      (&& (< t1 t0)
			  (futr (the-x= 0) t1)))
		 (lasts_ii (the-x= i) t0))))))

(defvar *wait-if-not-zero*
  (-A- i *procs*
       (-> (&& 
	    (proc= i 'wait)
	    (!! (the-x= 0)))
	   (next (proc= i 'wait)))))

(defvar *set-x-0*
  (<-> (-E- i *procs* (proc= i 'set))
       (!! (the-x= 0))))

(defvar *set-x-1*
  (-> 
   (the-x= 0)
   (-A- i *procs* 
	(-> 
	 (proc= i 'wait)
	 (||
	  (next (proc= i 'wait))
	  (withinf_ei (&& (proc= i 'set)
			  (the-x= i))
		      (length *procs*)))))))

(defvar *set-x-2*
  (-A- i *procs* 
       (-> (&& 
	    (yesterday (proc= i 'wait))
	    (proc= i 'set))
	   (lasts_ii (&& (!! (the-x= 0))
			 (proc= i 'set)) *delay*))))

(defvar *set-x-3*
  (-A- i *procs*
       (-> (the-x= i)
	   (proc= i 'set))))

(defvar *to-critical-1*
  (-A- i *procs*
       (->
	(&&
	 (lasted_ii (proc= i 'set) *delay*)
	 (the-x= i))
	(next (&& (proc= i 'critical)
		  (the-x= 0)
		  (next (proc= i 'wait)))))))

(defvar *to-critical-2*
  (-A- i *procs*
       (->
	(proc= i 'critical) 
	(&& (yesterday (lasted_ii (proc= i 'set) *delay*))
	    (yesterday (the-x= i))))))


(defvar *test-failed*
  (-A- i *procs*
       (->
	(&&
	 (lasted_ii (proc= i 'set) *delay*)
	 (!! (the-x= i)))
	(next (proc= i 'wait)))))


(defvar *no-stuttering* ; BZOT
  (-A- i *procs*
       (-> (&& (the-x= i)(next (the-x= i)))
	   (until (the-x= i) (the-x= 0)))))


(defvar *sys-des*
  (alwf (&&
	 *back-change-impossible*
	 *wait-if-not-zero*
	 *set-x-0*
	 *set-x-1*
	 *set-x-2*
	 *set-x-3*
	 *to-critical-1*
	 *to-critical-2*
	 *test-failed*
	 *no-stuttering*
	 )))

; ------- OPERATIONAL --------

(defvar *init-op*
  (&&
   (the-x= 0)
   (-A- i *procs*
	(&&
	 (proc= i 'wait)
	 (count= i 0)
	 (set-flag= i 'False)))))

(defvar *wait->set*
  (and-case (i *procs*)
	    ((proc-op= i 'wait) (&& (count= i 0)
				 (set-flag= i 'False)))

	    ((proc-op= i 'wait)
	     (!! (the-x-op= i)))

	    ((&& (proc-op= i 'wait)
		 (!! (the-x-op= 0)))
	     (next (proc-op= i 'wait)))

	    ((&& (proc-op= i 'wait)
		 (the-x-op= 0))
	     (next (|| (proc-op= i 'wait)
		       (&& (proc-op= i 'set)
			   (count= i 1)))))))

(defvar *counter-variation*
  (and-case (i *procs* c *time-interval*)
	    ((count= i c) (proc-op= i 'set))

	    ((&& (count= i c)(< c *delay+1*))
	     (next (count= i (1+ c))))

	    ((count= i *delay+1*) 
	     (next (&& (count= i 0)
		       (|| (proc-op= i 'critical)
			   (proc-op= i 'wait)))))))


(defvar *x-variation-invariant*
  (<-> 
   (!! (the-x-op= 0))
   (-E- i *procs* (proc-op= i 'set))))



(defvar *x-variation*
  (and-case (i *procs*)
	    ((count= i (length *procs*))
	     (set-flag= i 'True))


	    ((&& (the-x-op= 0)
		 (next (the-x-op= i)))
	     (next (set-flag= i 'True)))

	    ((&& (set-flag= i 'True)
		 (the-x-op= i)
		 (-E- j *procs*
		      (&& (not (eql i j))
			  (proc-op= j 'set)
			  (set-flag= j 'False))))
	     (next (!! (the-x-op= i))))

	    ((&& (!! (the-x-op= i))
		 (next (the-x-op= i)))
	     (&& (set-flag= i 'False)
		 (next (set-flag= i 'True))))


	    ((&& (set-flag= i 'False)
		 (next (set-flag= i 'True)))
	     (&& (!! (the-x-op= i))
		 (next (the-x-op= i))))

	    ((&& (set-flag= i 'True)
		 (next (set-flag= i 'True)))
	     (|| (the-x-op= i)
		 (next (!! (the-x-op= i)))))

	    ((set-flag= i 'True)
	     (next (|| (set-flag= i 'True)
		       (&& (set-flag= i 'False)
			   (!! (proc-op= i 'set))))))

	    ((set-flag= i 'True)
	     (proc-op= i 'set))))


(defvar *critical-part*
  (and-case (i *procs*)
	    ((&& (proc-op= i 'set)
		 (next (proc-op= i 'critical)))
	     (&& (the-x-op= i)
		 (next (the-x-op= 0))))

	    ((&& (proc-op= i 'set)
		 (the-x-op= i)
		 (count= i *delay+1*))
	     (next (proc-op= i 'critical)))
	    
	    ((proc-op= i 'critical)
	     (next (proc-op= i 'wait)))))


(defvar *sys-op*
  (list
   *wait->set*
   *counter-variation*
   *x-variation*
   *x-variation-invariant*
   *critical-part*))


; -------- BRIDGE --------

(defvar *refinement-bridge*
  (alwf
   (&&
    (-A- i *x-dom* (<-> (the-x= i)
			(the-x-op= i)))
    (-A- i *procs*
	 (-A- j *state*
	      (<-> (proc= i j)
		   (proc-op= i j)))))))

(defvar *op-bridge*
  (alwf
   (&& 
    (-A- i *procs*	; set-flag constraints
	 (&&
	  (<-> 
	   (&&
	    (set-flag= i 'False)
	    (next (set-flag= i 'True)))
	   (&& (!! (the-x-op= i))
	       (next (the-x-op= i))))
	  (->
	   (!! (proc-op= i 'set))
	   (set-flag= i 'False))
	  (->
	   (set-flag= i 'True)
	   (proc-op= i 'set))
	  (->
	   (&& (set-flag= i 'True)
	       (next (proc-op= i 'set)))
	   (next (set-flag= i 'True)))))
	   
    (-A- i *procs*	; counter constraints
	 (&&
	  (-A- j (loop for t0 from 1 to (1+ *delay+1*) collect t0)
	       (-> 
		(count= i j)
		(&& (yesterday (count= i (1- j)))
		    (proc-op= i 'set))))
	  (-> (proc-op= i 'set)
	      (!! (count= i 0))))))))


; --- proof (== both UNSAT) ---  


; --- OP => DESCR ---
; Note: this is easy (refinement)

(loop for bound in '(30 60 90) 
   do
     
     (format t "$ refinement : bound=~S~%" bound)
     (funcall the-zot 
      bound
      (yesterday (&& *init-op*
		     *init*
		     (!! *sys-des*)
		     *refinement-bridge*
		     ))
      :transitions *sys-op*)
     )


; --- DESCR => OP ---
; This is a tad harder, since we have to bind
; the introduced counters and variables
; (see *op-bridge*)
; 
; (loop for bound in '(30 60 90) 
;    do
;      (format t "$ 3-5 equivalence : bound=~S~%" bound)
;      (funcall the-zot 
; 	      bound
; 	      (yesterday (&& *init-op*
; 			     *init*
; 			     *sys-des*
; 			     *refinement-bridge*
; 			     *op-bridge*))
; 	      :transitions *sys-op*
; 	      :negate-transitions t)
; 
;      )
;      
; 
