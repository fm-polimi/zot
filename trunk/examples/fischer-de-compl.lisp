; Fischer's protocol
; MPradella, MMVIII

; |*procs*| = 2, delay=3: k=18

(asdf:operate 'asdf:load-op 'ezot)
(use-package :trio-utils)

(setq sat-interface:*zot-solver* :zchaff)


(defconstant *procs* '(1 2))
(defconstant *state* '(wait set critical))
(defconstant *x-dom* (cons 0 *procs*))

(defconstant *delay* 4)
(defconstant *delay+1* (1+ *delay*))

(defconstant *time-interval* (loop for t0 from 1 to *delay+1* collect t0))

(define-array count *procs* (loop for t0 from 0 to (1+ *delay+1*) collect t0))
(define-array set-flag *procs* '(True False))

(define-item the-x *x-dom*)
(define-array proc *procs* *state*)

; ------- DESCRIPTIVE --------

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

(defconstant *sys-des*
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
	 )))


(defconstant *op-bridge*
  (alwf
   (&& 
    (-A- i *procs*	; set-flag constraints
	 (&&
	  (<-> 
	   (&&
	    (set-flag= i 'False)
	    (next (set-flag= i 'True)))
	   (&& (!! (the-x= i))
	       (next (the-x= i))))
	  (->
	   (!! (proc= i 'set))
	   (set-flag= i 'False))
	  (->
	   (set-flag= i 'True)
	   (proc= i 'set))
	  (->
	   (&& (set-flag= i 'True)
	       (next (proc= i 'set)))
	   (next (set-flag= i 'True)))))
	   
    (-A- i *procs*	; counter constraints
	 (&&
	  (-A- j (loop for t0 from 1 to (1+ *delay+1*) collect t0)
	       (-> 
		(count= i j)
		(&& (yesterday (count= i (1- j)))
		    (proc= i 'set))))
	  (-> (proc= i 'set)
	      (!! (count= i 0))))))))





(format t "~%Found: ~S~%"
	(loop for bound from 2 do
	     (let ((res 
		    (ezot:zot 
		     bound
		     (yesterday (&& *init*
				    *sys-des*
				    *op-bridge*))
		     :loop-free t
		     )))
	       (unless res
		 (return bound)))))