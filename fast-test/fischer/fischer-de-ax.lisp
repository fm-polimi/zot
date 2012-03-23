; Fischer's protocol
; Trio version - axiom part
; MPradella, MMVII

(defconstant *state* '(wait set critical))
(defconstant *x-dom* (cons 0 *procs*))


(defconstant *time-interval* (loop for t0 from 1 to *delay* collect t0))

(define-item the-x *x-dom*)
(define-array proc *procs* *state*)


(defconstant *init*
  (&&
   (the-x= 0)
   (-A- i *procs*
	(proc= i 'wait))))


(defconstant *back-change-impossible*
  (-A- i *procs*
       (-A- t0 *time-interval*
	    (-> 
	     (&& (the-x= i)
		 (futr (the-x= i) t0))
	     (|| (-E- t1 *time-interval* 
		      (&& (< t1 t0)
			  (futr (the-x= 0) t1)))
		 (lasts_ii (the-x= i) t0))))))

(defconstant *wait-if-not-zero*
  (-A- i *procs*
       (-> (&& 
	    (proc= i 'wait)
	    (!! (the-x= 0)))
	   (next (proc= i 'wait)))))


(defconstant *set-x-0*
  (<-> (-E- i *procs* (proc= i 'set))
       (!! (the-x= 0))))

(defconstant *set-x-1*
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



(defconstant *set-x-2*
  (-A- i *procs* 
       (-> (&& 
	    (yesterday (proc= i 'wait))
	    (proc= i 'set))
	   (lasts_ii (&& (!! (the-x= 0))
			 (proc= i 'set)) *delay*))))

(defconstant *set-x-3*
  (-A- i *procs*
       (-> (the-x= i)
	   (proc= i 'set))))

(defconstant *to-critical-1*
  (-A- i *procs*
       (->
	(&&
	 (lasted_ii (proc= i 'set) *delay*)
	 (the-x= i))
	(next (&& (proc= i 'critical)
		  (the-x= 0)
		  (next (proc= i 'wait)))))))

(defconstant *to-critical-2*
  (-A- i *procs*
       (->
	(proc= i 'critical) 
	(&& (yesterday (lasted_ii (proc= i 'set) *delay*))
	    (yesterday (the-x= i))))))


(defconstant *test-failed*
  (-A- i *procs*
       (->
	(&&
	 (lasted_ii (proc= i 'set) *delay*)
	 (!! (the-x= i)))
	(next (proc= i 'wait)))))


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


(defconstant *no-stuttering* ; BZOT
  (-A- i *procs*
       (-> (&& (the-x= i)(next (the-x= i)))
	   (until (the-x= i) (the-x= 0)))))


(defconstant *sys*
  (yesterday 
   (&&
    *init*
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
	   )))))
