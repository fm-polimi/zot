; Mutex example -- taken and adapted from NuSMV

(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

(defvar state-d '(N T C))
(defvar turn-d   '(1 2))


(define-variable state1 state-d)
(define-variable state2 state-d)
(define-variable turn turn-d)


(defvar init
  (yesterday (&& (|| (state1-is 'N)(state1-is 'T))
		 (|| (state2-is 'N)(state2-is 'T))
		 (|| (turn-is 1)(turn-is 2)))))

(defvar trans
  (list
   (case-clause
     (state1-is 'N)		(next (state1-is 'T))

     (&& (state1-is 'T)
	 (|| (state2-is 'N)
	     (turn-is 1)))	(next (state1-is 'C))

     (state1-is 'C)		(next (state1-is 'N))

     :else-clause   (-A- x state-d 
			 (-> (state1-is x)
			     (next (state1-is x)))))

   (case-clause
     (state2-is 'N)		(next (state2-is 'T))

     (&& (state2-is 'T)
	 (|| (state1-is 'N)
	     (turn-is 2)))	(next (state2-is 'C))

     (state2-is 'C)		(next (state2-is 'N))

     :else-clause   (-A- x state-d 
			 (-> (state2-is x)
			     (next (state2-is x)))))


   (case-clause
    (&& (state1-is 'N) (state2-is 'T)) (next (turn-is 2))
    (&& (state2-is 'N) (state1-is 'T)) (next (turn-is 1))
    :else-clause  (-A- x turn-d (-> (turn-is x) 
				     (next (turn-is x)))))))


(defvar spec1
  (alwf (-> (turn-is 1)
	    (somf (turn-is 2)))))

(defvar spec2
  (alwp (-> (turn-is 2)
	    (somp (turn-is 1)))))

(defvar init-0
  (yesterday (&& (state1-is 'T)
		 (state2-is 'N)
		 (turn-is 1))))

(bezot:zot 
  10
  (&& init-0 (&& spec1 spec2))
  ;init
  :transitions trans
  ;:loop-free t
  )


; (loop for k from 1 to 50 do
;      (unless (bezot:zot k init-0 :transitions trans :loop-free t)
;	(format t "~%Found k = ~S~%" k)   
;	(return nil))) 

