(in-package :cl-user)

(defpackage :soloist 
  (:use :common-lisp
	:trio-utils)
  (:export :-C-
	   :-D-
	   :counting
	   :pairwise
	   :*counter-constraints*
	   :bound
	   :finite
	   :infinite))


(in-package :soloist)


;counter countraints
(defvar *counter-constraints* t)

;finite or infinite flag
(defvar *finite* nil)

;time bound for the formulas (only for finite words)
(defvar *time* 0)

(defun finite ()
	(setq *finite* t)
)

(defun infinite ()
	(setq *finite* nil)
)

(defun bound (time)
	(setq *time* time)
)


(defun add-counter-constraint (constraint)
	(if *counter-constraints*
		(setf *counter-constraints* `(and ,*counter-constraints* ,constraint))
		(setf *counter-constraints* constraint)))

(defun check-counter (c)
	(gethash c *arith-items*))


(defun define-dynamic-tvar (varname &rest domain) 
  (setf (gethash (intern (symbol-name varname)) *arith-items*) 
	(list 'timed domain)))

(defun if-then-else (A B C)
	"Converts the if-then-else exp to logical formula"
	`(or (and ,A ,B) (and (not ,A) ,C)))


(defun nameconcat (&rest args)
  (with-input-from-string (z (reduce (lambda (x y)
				       (concatenate 'string x y)) 
				     (mapcar (lambda (x)
					       (cond 
						 ((or (numberp x)(symbolp x))
						  (format nil "~S" x))
						 (t x)))
					     args)))
    (read z)))


;==================================================================================
;	for AE2ZOT plugin
;==================================================================================

;==============================
; C - mod
;==============================
;(-C- 5 = 0 ,(-P- p)  1)

(defmacro -C- (Kp comp n P K)
	`(counting ,Kp ',comp ,n ,P ,K)
)



(defun WCount (K Kp x y n op)
	"converts the W operator to logical formula"
	(if-then-else 
		`(>=  (-  (next ,x) (past  ,y ,(- Kp 1))) 0)			

		`(,op (-  (next ,x) (past  ,y ,(- Kp 1))) ,n)

		`(,op (+ (-  (next ,x) (past  ,y ,(- Kp 1))) ,(+ K 1)) ,n)))


(defun W1Count (K Kp x n op)
	"W operator variant where x=y"
	(WCount K Kp x x n op))


(defun build-c-constraint (name formula K)
	(define-dynamic-tvar name *int*)
	`(and
		(= ,name 0)
		(alwf 	(impl
				(and ,(pred "e") ,formula)
				(= (next ,name) (mod (+  ,name 1) ,(+ K 1)))
			)
		)
		(alwf 	(impl
				(or (not ,(pred "e")) (not ,formula))
				(= (next ,name)  ,name)
			)
		)
	)
)



(defun build-c-constraint-finite (name formula K)
	(define-dynamic-tvar name *int*)
	`(and
		(= ,name 0)
		(lasts_ie 	(impl
					(and ,(pred "e") ,formula)
					(= (next ,name) (mod (+  ,name 1) ,(+ K 1)))
				)
				,*time*
		)
		(lasts_ie 	(impl
					(or (not ,(pred "e")) (not ,formula))
					(= (next ,name)  ,name)
				)
				,*time*
		)
	)
)



(defun counting (Kp comp n P K)
	(let ((name (nameconcat "C" "_" P)))
			(if (check-counter name)
				(W1Count K Kp name n comp)
				(progn 	
					(add-counter-constraint (if *finite*
									(build-c-constraint-finite name P K)
									(build-c-constraint name P K)
								)
					)
					(W1Count K Kp name n comp)
				)
			)
	)

)

;=============================
; V - mod
;=============================
;(-E- x '(1 2) (-AVG- 5 2 > 0 (-P- p x) 5)) - since -V- is taken


(defmacro -AVG- (Kp h c n p K) 
	`(-C- ,(* (floor Kp h) h) ,c ,(* (floor Kp h) n) ,p ,K)
	
)

	

;=============================
; M - mod
;=============================
;(-E- x '(1 2) (-M- 5 2 > 0 (-P- p x) 5))

(defmacro -M- (kp h c n p K) 
	(case c
		((=)  `(&& (translateMaxGt ,kp ,h ,(- n 1) ,p ,K) (!! (translateMaxGt ,kp ,h ,n ,p ,K))))
		((!=) `(!! (&& (translateMaxGt ,kp ,h ,(- n 1) ,p ,K) (!! (translateMaxGt ,kp ,h ,n ,p ,K)))))
		((>) `(translateMaxGt ,kp ,h ,n ,p ,K))
		((>=) `(translateMaxGt ,kp ,h ,(- n 1) ,p ,K))
		((<) `(translateMaxLt ,kp ,h ,n ,p ,K))
		((<=) `(translateMaxLt ,kp ,h ,(+ n 1) ,p ,K))
	)
	
)

(defmacro translateMaxGt (kp h n p K)
	`(|| 	,@(do* 	((m (floor kp h) (1- m))
			 (y '() (cons `(past (-C- ,h > ,n ,p ,K) ,(* m h)) y))
			)
			((= m 0) y)
		 ) 
		
		(past (-C- ,(mod kp h) > ,n ,p ,K) ,(* (floor kp h) h))
	 )
)

(defmacro translateMaxLt (kp h n p K)
	`(&& 	,@(do* 	((m (floor kp h) (1- m))
			 (y '() (cons `(past (-C- ,h < ,n ,p ,K) ,(* m h)) y))
			)
			((= m 0) y)
		 ) 
		
		(past (-C- ,(mod kp h) < ,n ,p ,K) ,(* (floor kp h) h))
	 )
)


;=============================
; D - mod
;=============================
;(-E- x '(1 2) (-D- 5 > 0 (((-P- p x) (-P- q x)))  1))


(defmacro -D- (kp c n p K) 
	`(eval `(pairwise ,,Kp ',',c ,,n '((,,(first(first p)) ,,(second (first p)))) ,,K))
	
)



(defun WUntil (a b)
	`(or (until ,a ,b) (alwf ,a))
)

(defun WUntilF (a b c)
	`(or (until ,a ,b) (lasts_ie ,a ,c))
)

(defun build-case (p q r s K1 K2 Kp n op treshold)
	(if-then-else 	`(>= (- (next ,p) (past ,q ,(- Kp 1))) 0)
			(if-then-else 	`(>= (- (next ,r) (past ,s ,(- Kp 1))) 0)
					`(,op
						
						(- (next ,p) (past ,q ,(- Kp 1)))
							
						(*
							,treshold
							(- (- (next ,r) (past ,s ,(- Kp 1))) ,n)
						)
					 )
					`(,op
						(- (next ,p) (past ,q ,(- Kp 1)))
						(*
							,treshold
							(+ (- (- (next ,r) (past ,s ,(- Kp 1))) ,n) ,(+ K2 1))
						)
					 )
			)
			(if-then-else 	`(>= (- (next ,r) (past ,s ,(- Kp 1))) 0)
					`(,op
						(+ (- (next ,p) (past ,q ,(- Kp 1))) ,(+ K1 1))
						(*
							,treshold
							(- (- (next ,r) (past ,s ,(- Kp 1))) ,n)
						)
					 )
					`(,op
						(+ (- (next ,p) (past ,q ,(- Kp 1))) ,(+ K1 1))
						(*
							,treshold
							(+ (- (- (next ,r) (past ,s ,(- Kp 1))) ,n) ,(+ K2 1))
						)
					 )
			)
	)
)

(defun build-d-formula (K Kp C H A S B comp treshold)
	
		(if-then-else `(= (past ,C ,(- Kp 1))  1)
				(if-then-else `(= (next ,C)  1)
					(build-case A B H H K (floor K 2) Kp 1 comp treshold)	
					(build-case S B H H K (floor K 2) Kp 1 comp treshold)
				)
					(build-case A A H H K (floor K 2) Kp 0 comp treshold)
		)
	
)

(defun build-d-constraint (C H A S B formula1 formula2 K)
	(define-dynamic-tvar C *int*)
	(define-dynamic-tvar H *int*)
	(define-dynamic-tvar A *int*)
	(define-dynamic-tvar S *int*)
	(define-dynamic-tvar B *int*)
	`(and
		(= ,C 0)
		(= ,H 0)
		(= ,A 0)
		(= ,S 0)
		,(WUntil `(= (next ,b) ,b) `(and ,(pred "e") ,formula2))
		(alwf 	(impl 
					(and ,(pred "e") ,formula1)
					(and
						(= (next ,C)  1)

						;(impl (= ,S ,K) (= (next ,S) 0))			; for reals
						;(impl (not (= ,S ,K)) (= (next ,S) (+  ,S 1)))		; for reals

						(= (next ,S) (mod (+  ,S 1) ,(+ K 1)))
 	
						(= (next ,H)  ,H)
						(= (next ,A)  ,A)
					)
				)
				
		)
		(alwf 	(impl 
					(and ,(pred "e") ,formula2)
					(and
						(= (next ,C)  0)

						;(impl (= ,H ,(floor K 2)) (= (next ,H) 0))			; for reals
						;(impl (not (= ,H ,(floor K 2))) (= (next ,H) (+  ,H 1)))	; for reals
						
						(= (next ,H) (mod (+  ,H 1) ,(+ (floor K 2) 1)))

						(= (next ,A)  ,S)
						(= (next ,S)  ,S)
						(= ,B ,S)
						(next ,(WUntil `(= (next ,b) ,b) `(and ,(pred "e") ,formula2)))

					) 
			     	)
				
		)
		(alwf 	(impl 
					(or (not ,(pred "e")) (and (not ,formula1) (not ,formula2))) 
					(and
						(= (next ,C)  ,C)
						(= (next ,H)  ,H)
						(= (next ,A)  ,A)

						;(impl			; for reals
						;	(and
						;		(= ,C  1)
						;		(= ,S ,K)
						;	)
						;	(= (next ,S) 0)
						;)
						;(impl
						;	(and
						;		(= ,C  1)
						;		(not (= ,S ,K))
						;	)
						;	(= (next ,S) (+  ,S 1))
						;)
						(impl
							(= ,C  1)
							(= (next ,S) (mod (+  ,S 1) ,(+ K 1)))
						)

						(impl
							(= ,C  0)
							(= (next ,S) ,S)
						)
					)
			     	)
				
		)

	 )

)



(defun build-d-constraint-finite (C H A S B formula1 formula2 K)
	(define-dynamic-tvar C *int*)
	(define-dynamic-tvar H *int*)
	(define-dynamic-tvar A *int*)
	(define-dynamic-tvar S *int*)
	(define-dynamic-tvar B *int*)
	`(and
		(= ,C 0)
		(= ,H 0)
		(= ,A 0)
		(= ,S 0)
		,(WUntilF `(= (next ,b) ,b) `(and ,(pred "e") ,formula2) *time*)
		(lasts_ie 	(impl 
					(and ,(pred "e") ,formula1)
					(and
						(= (next ,C)  1)

						;(impl (= ,S ,K) (= (next ,S) 0))			; for reals
						;(impl (not (= ,S ,K)) (= (next ,S) (+  ,S 1)))		; for reals

						(= (next ,S) (mod (+  ,S 1) ,(+ K 1)))
 	
						(= (next ,H)  ,H)
						(= (next ,A)  ,A)
					)
				)
				,*time*
		)
		(lasts_ie 	(impl 
					(and ,(pred "e") ,formula2)
					(and
						(= (next ,C)  0)

						;(impl (= ,H ,(floor K 2)) (= (next ,H) 0))			; for reals
						;(impl (not (= ,H ,(floor K 2))) (= (next ,H) (+  ,H 1)))	; for reals
						
						(= (next ,H) (mod (+  ,H 1) ,(+ (floor K 2) 1)))

						(= (next ,A)  ,S)
						(= (next ,S)  ,S)
						(= ,B ,S)
						(next ,(WUntilF `(= (next ,b) ,b) `(and ,(pred "e") ,formula2) *time*))

					) 
			     	)
				,*time*
		)
		(lasts_ie 	(impl 
					(or (not ,(pred "e")) (and (not ,formula1) (not ,formula2))) 
					(and
						(= (next ,C)  ,C)
						(= (next ,H)  ,H)
						(= (next ,A)  ,A)

						;(impl			; for reals
						;	(and
						;		(= ,C  1)
						;		(= ,S ,K)
						;	)
						;	(= (next ,S) 0)
						;)
						;(impl
						;	(and
						;		(= ,C  1)
						;		(not (= ,S ,K))
						;	)
						;	(= (next ,S) (+  ,S 1))
						;)
						(impl
							(= ,C  1)
							(= (next ,S) (mod (+  ,S 1) ,(+ K 1)))
						)

						(impl
							(= ,C  0)
							(= (next ,S) ,S)
						)
					)
			     	)
				,*time*
		)

	 )

)


(defun pairwise (Kp comp n Ps K)
	(let*
		(
			(formula1 (first (nth 0  Ps)))		; traverse all n pairs here
			(formula2 (second (nth 0  Ps)))		; traverse all n pairs here
			(C (nameconcat "C" "_" formula1 formula2))
			(H (nameconcat "H" "_" formula1 formula2))
			(A (nameconcat "A" "_" formula1 formula2))
			(S (nameconcat "S" "_" formula1 formula2))
			(B (nameconcat "B" "_" formula1 formula2))
		)
		(if 	(check-counter C)
			(build-d-formula K Kp C H A S B comp n)
			(progn
				(add-counter-constraint 
							(if *finite*
									(build-d-constraint-finite C H A S B formula1 formula2 K)
									(build-d-constraint C H A S B formula1 formula2 K)
							)
				)
				(build-d-formula K Kp C H A S B comp n)
			)
		)

	)
)

