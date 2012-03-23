; Mutex example -- variant with 3 processes
; -- new or-case syntax example
; 
; MPradella, 2007


(asdf:operate 'asdf:load-op 'ezot)
(use-package  :trio-utils)

(defvar state-d '(N T C))
(defvar turn-d   '(1 2 3))


(define-variable state1 state-d)
(define-variable state2 state-d)
(define-variable state3 state-d)
(define-variable turn turn-d)


(defvar init
  (&& (state1-is 'N)
      (state2-is 'N)
      (state3-is 'N)
      (turn-is 1)))

(defvar behave
  (alwf
   (&& 
    (-E- x state-d (state1-is x))
    (-E- x state-d (state2-is x))
    (-E- x state-d (state3-is x))
    (-E- x turn-d  (turn-is x)))))
    

(defvar trans
  (list

   (or-case (x state-d)	 ; -- P1 --
	     ((state1-is 'N)		
	      (next (state1-is 'T)))

	     ((&& (state1-is 'T)
		  (|| (&& (state2-is 'N)(state3-is 'N))
		   (turn-is 1)))	
	      (next (state1-is 'C)))

	     ((state1-is 'C)		
	      (next (state1-is 'N)))

	     (else   	  
	      (&& (state1-is x)
		  (next (state1-is x)))))

   (or-case (x state-d)	 	; -- P2 --
	     ((state2-is 'N)		
	      (next (state2-is 'T)))

	     ((&& (state2-is 'T)
		  (|| (&& (state1-is 'N)(state3-is 'N))
		   (turn-is 2)))	
	      (next (state2-is 'C)))

	     ((state2-is 'C)		
	      (next (state2-is 'N)))

	     (else        
	      (&& (state2-is x)
		  (next (state2-is x)))))

   (or-case (x state-d)		; -- P3 --
	     ((state3-is 'N)		
	      (next (state3-is 'T)))

	     ((&& (state3-is 'T)
		  (|| (&& (state2-is 'N)(state1-is 'N))
		   (turn-is 3)))
	      (next (state3-is 'C)))
	     
	     ((state3-is 'C)		
	      (next (state3-is 'N)))

	     (else  	  
	      (&& (state3-is x)
		  (next (state3-is x)))))


   (or-case (x turn-d)	; -- schedule --

	     ((&& (state1-is 'N) (state2-is 'T) (state3-is 'N)) 
	      (next (turn-is 2)))
	     ((&& (state1-is 'T) (state1-is 'N) (state3-is 'N)) 
	      (next (turn-is 1)))
	     ((&& (state1-is 'N) (state1-is 'N) (state3-is 'T)) 
	      (next (turn-is 3)))

   
			; --- random choice policy ---
	     ((&& (state1-is 'T)(state2-is 'T))	
	      (next (|| (turn-is 1)(turn-is 2))))
	     ((&& (state1-is 'T)(state3-is 'T))	
	      (next (|| (turn-is 1)(turn-is 3))))
	     ((&& (state2-is 'T)(state3-is 'T))	
	      (next (|| (turn-is 2)(turn-is 3))))

	     (else  
	      (&& (turn-is x) (next (turn-is x)))))))



(defvar spec-0 
    (alw
      (&& 
	(-> (turn-is 1) (somf (|| (turn-is 2)(turn-is 3)))) 
	(-> (turn-is 2) (somf (|| (turn-is 1)(turn-is 3)))) 
	(-> (turn-is 3) (somf (|| (turn-is 1)(turn-is 2)))))))



; --- Completeness --- (the bound is ok if UNSAT)
(ezot:zot 30 
	  (yesterday (&& init behave))
	  :transitions trans
	  :loop-free t
	  )


; --- Prove spec-0 ---
(ezot:zot 30 
	  (&& (yesterday (&& init behave))
	      (!! spec-0))
	  :transitions trans
	  )
