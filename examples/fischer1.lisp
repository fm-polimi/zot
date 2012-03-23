; Fischer's protocol
; a first, simple Zot version
; MPradella, MMVII


; note su completezza: 
; (processi, delay) = (2,3): bound = 40, MiniSat:    2829s, 95.14MB 
;  minisat (64bit):     3164s 162MB; 
;  MiraXT con 2 core su pradella:  1436.36s
;  MiraXT con 4 core su serverone: 1724.01s
;  MiraXT con 3 core su serverone: 1461.97s
;  MiraXT con 2 core su serverone: 1574.33s

; (processi, delay) = (2,4): bound = 49, MiniSat(2): 7355s, 438MB 



(asdf:operate 'asdf:load-op 'meezot)
(use-package :trio-utils)

;(setq sat-interface:*zot-solver* :zchaff)

(defconstant *procs* '(1 2))
(defconstant *state* '(wait set critical))
(defconstant *x-dom* (cons 0 *procs*))
(defconstant *delay* 3)

(defconstant *time-interval* (loop for t0 from 1 to *delay* collect t0))

(define-item the-x *x-dom*)
(define-array proc *procs* *state*)


(defconstant *declarations*
  (nconc (loop for x in *procs* append 
	      (loop for y in *state* collect (-P- proc x y)))
	 (loop for v in *x-dom* collect (-P- the-x v))))


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

(defconstant *almost-fair*
  (-A- p *procs*
       (somf (proc= p 'critical))))

(defconstant *property1*
  (-A- p *procs*
       (->
	(proc= p 'critical)
	(!! (-E- q *procs*
		 (&& (not (equal p q))
		     (proc= q 'critical)))))))



(format t "~%Found: ~S~%"
	(loop for bound from 2 do
	     (let ((res 
		    (meezot:zot 
		     bound
		     (&& 
		      *init*
		      (alw (&&
			    *back-change-impossible*
			    *wait-if-not-zero*
			    *set-x-0*
			    *set-x-1* 
			    *set-x-2*
			    *set-x-3*
			    *to-critical-1*
			    *to-critical-2*
			    *test-failed*
					;*fair* ; optional
			    ))
					;(som (!! *property1*))
		      )
		     :loop-free t)))
	       (unless res
		 (return bound)))))
  
(quit)

; ahi! problemi coll'algoritmo -- senza vincoli di fairness
; soddisfa con storie cicliche nelle quali non succede nulla
; e trova il bound troppo presto, quindi bisogna far avanzare :start

; cmq anche con lo start, il de al va no.


; trova 37 (2262s minisat)
(prin1 (completeness-loop
	(lambda (i)
	  (eezot:zot i
		     (&& 
		      (yesterday *init*)
		      (alw (&&
			    *back-change-impossible*
			    *wait-if-not-zero*
			    *set-x-0*
			    *set-x-1* 
			    *set-x-2*
			    *set-x-3*
			    *to-critical-1*
			    *to-critical-2*
			    *test-failed*
					;*almost-fair* ; optional
			    ))
					;(som (!! *property1*))
		      )
		     :loop-free t)
	  ) :start 4 ))

(quit)


;(setq BEZOT::*ZOT-DEBUG* t)
#|
(bezot:zot 
 15
 (&& 
  *init*
  (alw (&&
	*back-change-impossible*
	*wait-if-not-zero*
	*set-x-0*
	*set-x-1*
	*set-x-2*
	*set-x-3*
	*to-critical-1*
	*to-critical-2*
	*test-failed*
	;*fair*		; optional
	)))
 ;:loop-free t
 :declarations *declarations*)
(quit)
|#

(format t "~%Found: ~S~%"
	(loop for bound from 2 do
	     (let ((res 
		    (bezot:zot 
		     bound
		     (&& 
		      *init*
		      (alw (&&
			    *back-change-impossible*
			    *wait-if-not-zero*
			    *set-x-0*
			    *set-x-1* 
			    *set-x-2*
			    *set-x-3*
			    *to-critical-1*
			    *to-critical-2*
			    *test-failed*
					;*fair* ; optional
			    ))
					;(som (!! *property1*))
		      )
		     :loop-free t)))
	       (unless res
		 (return bound)))))
  
  

