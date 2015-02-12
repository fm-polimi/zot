; Mutex example -- variant with 3 processes
; -- new or-case syntax example
; 
; MPradella, 2007


(asdf:operate 'asdf:load-op 'ezot)
(use-package  :trio-utils)

(defvar state-d '(N T C))
(defvar turn-d  '(1 2 3))


(define-array state turn-d state-d)
(define-item  turn  turn-d)


(defvar decl
  (append
    (declare-array state turn-d state-d)
    (declare-item  turn  turn-d)))
	

(defvar init
  (&& (-A- x turn-d (state= x 'N))
      (turn= 1)))


(defvar trans
  (list

   (-A- p turn-d 
	(or-case (x state-d)
		 ((state= p 'N)		
		  (next (state= p 'T)))
		 
		 ((&& (state= p 'T)
		      (|| (-A- p1 turn-d (-> (not (equal p p1))
					     (state= p1 'N)))
		       (turn= p)))	
		  (next (state= p 'C)))
		 
		 ((state= p 'C)
		  (next (state= p 'N)))
		 
		 (else   	  
		  (&& (state= p x)
		      (next (state= p x))))))

   (or-case (x turn-d)	; -- schedule --

	     ((&& (state= 1 'N) (state= 2 'T) (state= 3 'N)) 
	      (next (turn= 2)))
	     ((&& (state= 1 'T) (state= 1 'N) (state= 3 'N)) 
	      (next (turn= 1)))
	     ((&& (state= 1 'N) (state= 1 'N) (state= 3 'T)) 
	      (next (turn= 3)))

   
			; --- random choice policy ---
	     ((&& (state= 1 'T)(state= 2 'T))	
	      (next (|| (turn= 1)(turn= 2))))
	     ((&& (state= 1 'T)(state= 3 'T))	
	      (next (|| (turn= 1)(turn= 3))))
	     ((&& (state= 2 'T)(state= 3 'T))	
	      (next (|| (turn= 2)(turn= 3))))

	     (else  
	      (&& (turn= x) (next (turn= x)))))))



(defvar spec-0 
    (alw
      (&& 
	(-> (turn= 1) (somf (|| (turn= 2)(turn= 3)))) 
	(-> (turn= 2) (somf (|| (turn= 1)(turn= 3)))) 
	(-> (turn= 3) (somf (|| (turn= 1)(turn= 2)))))))




(ezot:zot 30
	  (yesterday init)
	  :transitions trans
	  :declarations decl
	  :loop-free t
	  )


; --- Prove spec-0 ---
(ezot:zot 30 
	  (&& (yesterday init)
	      (!! spec-0))
	  :transitions trans
	  :declarations decl
	  )
