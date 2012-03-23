; Mutex example -- variant with 3 processes

(asdf:operate 'asdf:load-op 'ezot)
(use-package :trio-utils)

(defvar state-d '(N T C))
(defvar turn-d   '(1 2 3))


(define-variable state1 state-d)
(define-variable state2 state-d)
(define-variable state3 state-d)
(define-variable turn turn-d)


(defvar init
  (yesterday (&& (|| (state1-is 'N)(state1-is 'T))
		 (|| (state2-is 'N)(state2-is 'T))
		 (|| (state3-is 'N)(state3-is 'T))
		 (|| (turn-is 1)(turn-is 2)))))

(defvar trans
  (list

   (case-clause ; -- P1 --
     (state1-is 'N)		(next (state1-is 'T))

     (&& (state1-is 'T)
	 (|| (&& (state2-is 'N)(state3-is 'N))
	     (turn-is 1)))	(next (state1-is 'C))

     (state1-is 'C)		(next (state1-is 'N))

     :else-clause   (-A- x state-d 
			 (-> (state1-is x)
			     (next (state1-is x)))))

   (case-clause ; -- P2 --
     (state2-is 'N)		(next (state2-is 'T))

     (&& (state2-is 'T)
	 (|| (&& (state1-is 'N)(state3-is 'N))
	     (turn-is 2)))	(next (state2-is 'C))

     (state2-is 'C)		(next (state2-is 'N))

     :else-clause   (-A- x state-d 
			 (-> (state2-is x)
			     (next (state2-is x)))))

   (case-clause ; -- P3 --
     (state3-is 'N)		(next (state3-is 'T))

     (&& (state3-is 'T)
	 (|| (&& (state2-is 'N)(state1-is 'N))
	     (turn-is 3)))	(next (state3-is 'C))

     (state3-is 'C)		(next (state3-is 'N))

     :else-clause   (-A- x state-d 
			 (-> (state3-is x)
			     (next (state3-is x)))))


   (case-clause ; -- schedule --

    (&& (state1-is 'N) (state2-is 'T) (state3-is 'N)) (next (turn-is 2))
    (&& (state1-is 'T) (state1-is 'N) (state3-is 'N)) (next (turn-is 1))
    (&& (state1-is 'N) (state1-is 'N) (state3-is 'T)) (next (turn-is 3))

   
    ; --- random choice policy ---
    (&& (state1-is 'T)(state2-is 'T))	(next (|| (turn-is 1)(turn-is 2)))
    (&& (state1-is 'T)(state3-is 'T))	(next (|| (turn-is 1)(turn-is 3)))
    (&& (state2-is 'T)(state3-is 'T))	(next (|| (turn-is 2)(turn-is 3)))

    :else-clause  (-A- x turn-d (-> (turn-is x) 
				     (next (turn-is x)))))))


(defvar spec1
  (alwf (-A- x '(1 2 3) 
	     (-> (turn-is x)
		 (somf (-E- y '(1 2 3) (&& (not (equal x y)) (turn-is y))))))))

(defvar spec2
  (alwp (-A- x '(1 2 3) 
	     (-> (turn-is x)
		 (somp (-E- y '(1 2 3) (&& (not (equal x y)) (turn-is y))))))))


(defvar init-0
  (yesterday (&& (state1-is 'N)
		 (state2-is 'N)
		 (state3-is 'N)
		 (turn-is 1))))

(defvar spec-0 
    (alwf 
      (&& 
	(-> (turn-is 1) (somf (|| (turn-is 2)(turn-is 3)))) 
	(-> (turn-is 2) (somf (|| (turn-is 1)(turn-is 3)))) 
	(-> (turn-is 3) (somf (|| (turn-is 1)(turn-is 2)))))))


(ezot:zot 
  5
  ;(&& init (!! spec1) (!! spec2))
  (&& init-0  spec-0)
  ;init
  :transitions trans
  ;:loop-free t
  )

; random policy + 35: complete 75"
; random policy + 30: complete 41.7"
; idem senza (&& spec1 spec2): 42.4"
  

;(loop for k from 1 to 50 do
;      (unless (ezot:zot k init :transitions trans :loop-free t)
;	(format t "~%Found k = ~S~%" k)   
;	(return nil)))
;
; con incremento e spec. trova k = 29 in 1m38s (BeZot), senza spec. 1m24s
; con incremento e spec. trova k = 29 in 1m39s (eZot), senza spec. 1m33s

