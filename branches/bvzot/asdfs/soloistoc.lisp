(in-package :cl-user)

(defpackage :soloistOC
  (:use :common-lisp
	:trio-utils
	:solzot)
  (:export :-C-
	   :-D-
	   :-AVG-
	   :-M-
	   :counting
	   :pairwise
	   :*counter-constraints*
	   :bound
	   :infinite-count
	   :finite
	   :infinite))


(in-package :soloistOC)




;==================================================================================
;	for AE2ZOT plugin
;==================================================================================

;==============================
; C - mod
;==============================
;(-C- 5 = 0 ,(-P- p)  1)

(defmacro -C- (Kp comp n P K)
	`(counting-func ,Kp ',comp ,n ,P ,K)
)

(defun counting-func (Kp comp n P K)
	(let ((name (create-c-counter P)))
			(if (check-counter name)
			    (create-count Kp comp n P K)			   
                            (progn 	
			      (add-counter-constraint
			       (if *finite*
				   (build-c-constraint-finite name P K)
				   (build-c-constraint name P K)
			       )
			      )
			    (create-count Kp comp n P K)			    )
			)
	)
)


(defun build-c-constraint (name formula K)
	(define-dynamic-tvar name *int*)
	(if *finite-count*
	    `(and
	      (= ,name 0)
	      (alwf 	(impl
			 ,formula
			 (= (next ,name) (mod (+  ,name 1) ,(+ K 1)))
			 )
			)
	      (alwf 	(impl
			 (not ,formula)
			 (= (next ,name)  ,name)
			 )
			)
	      )
	     `(and
	      (= ,name 0)
	      (alwf 	(impl
			 ,formula
			 (= (next ,name) (+  ,name 1))
			 )
			)
	      (alwf 	(impl
			 (not ,formula)
			 (= (next ,name)  ,name)
			 )
			)
	      )
	)

)

(defun build-c-constraint-finite (name formula K)
	(define-dynamic-tvar name *int*)
	(if *finite-count*
	`(and
		(= ,name 0)
		(lasts_ie 	(impl
					,formula
					(= (next ,name) (mod (+  ,name 1) ,(+ K 1)))
				)
				,*time*
		)
		(lasts_ie 	(impl
					(not ,formula)
					(= (next ,name)  ,name)
				)
				,*time*
		)
	)
	`(and
		(= ,name 0)
		(lasts_ie 	(impl
					,formula
					(= (next ,name) (+  ,name 1))
				)
				,*time*
		)
		(lasts_ie 	(impl
					(not ,formula)
					(= (next ,name)  ,name)
				)
				,*time*
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
			 (y '() (cons `(past-sol (-C- ,h > ,n ,p ,K) ,(* m h)) y))
			)
			((= m 0) y)
		 ) 
		
		(past-sol (-C- ,(mod kp h) > ,n ,p ,K) ,(* (floor kp h) h))
	 )
)

(defmacro translateMaxLt (kp h n p K)
	`(&& 	,@(do* 	((m (floor kp h) (1- m))
			 (y '() (cons `(past-sol (-C- ,h < ,n ,p ,K) ,(* m h)) y))
			)
			((= m 0) y)
		 ) 
		
		(past-sol (-C- ,(mod kp h) < ,n ,p ,K) ,(* (floor kp h) h))
	 )
)


;=============================
; D - mod
;=============================
;(-E- x '(1 2) (-D- 5 > 0 (((-P- p x) (-P- q x)))  1))


(defmacro -D- (kp c n p K) 
	`(eval `(pairwise-func ,,Kp ',',c ,,n '((,,(first(first p)) ,,(second (first p)))) ,,K))
	
)

(defun WUntil (a b)
	`(or (until ,a ,b) (alwf ,a))
)

(defun WUntilF (a b c)
	`(or (until ,a ,b) (lasts_ie ,a ,c))
)

(defun pairwise-func (Kp comp n Ps K)
	(let*
		(
			(formula1 (first (nth 0  Ps)))		; traverse all n pairs here
			(formula2 (second (nth 0  Ps)))		; traverse all n pairs here
			(C (create-c formula1 formula2))
			(H (create-h formula1 formula2))
			(A (create-a formula1 formula2))
			(S (create-s formula1 formula2))
			(B (create-b formula1 formula2))
		)
		(if 	(check-counter C)
			(create-pairwise Kp comp n Ps K)       ;1-pair hack
			(progn
				(add-counter-constraint 
							(if *finite*
									(build-d-constraint-finite C H A S B formula1 formula2 K)
									(build-d-constraint C H A S B formula1 formula2 K)
							)
				)
				(create-pairwise Kp comp n Ps K)
			)
		)

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
		,(WUntil `(= (next ,b) ,b) formula2)
		(alwf 	(impl 
				        ,formula1
					(and
						(= (next ,C)  1)
						,(if *finite-count*
						     `(= (next ,S) (mod ,(create-delta-inc S) ,(+ K 1)))
						     `(= (next ,S) ,(create-delta-inc S))
						 )
						(= (next ,H)  ,H)
						(= (next ,A)  ,A)
					)
				)
				
		)
		(alwf 	(impl 
					,formula2
					(and
						(= (next ,C)  0)
						,(if *finite-count*
						     `(= (next ,H) (mod (+  ,H 1) ,(+ (floor K 2) 1)))
						     `(= (next ,H) (+  ,H 1))
						)
						(= (next ,A)  ,S)
						(= (next ,S)  ,S)
						(= ,B ,S)
						(next ,(WUntil `(= (next ,b) ,b) formula2))

					) 
			     	)
				
		)
		(alwf 	(impl 
				        (and (not ,formula1) (not ,formula2)) 
					(and
						(= (next ,C)  ,C)
						(= (next ,H)  ,H)
						(= (next ,A)  ,A)
						(impl
							(= ,C  1)
							,(if *finite-count*
							     `(= (next ,S) (mod ,(create-delta-inc S) ,(+ K 1)))
							     `(= (next ,S) ,(create-delta-inc S))
							 )
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
		,(WUntilF `(= (next ,b) ,b)  formula2 *time*)
		(lasts_ie 	(impl 
					,formula1
					(and
						(= (next ,C)  1)
						,(if *finite-count*
						     `(= (next ,S) (mod ,(create-delta-inc S) ,(+ K 1)))
						     `(= (next ,S) ,(create-delta-inc S))
						 )					    	
						(= (next ,H)  ,H)
						(= (next ,A)  ,A)
					)
				)
				,*time*
		)
		(lasts_ie 	(impl 
					,formula2
					(and
						(= (next ,C)  0)						
						,(if *finite-count*
						     `(= (next ,H) (mod (+  ,H 1) ,(+ (floor K 2) 1)))
						     `(= (next ,H) (+  ,H 1))
						)
						(= (next ,A)  ,S)
						(= (next ,S)  ,S)
						(= ,B ,S)
						(next ,(WUntilF `(= (next ,b) ,b) formula2 *time*))

					) 
			     	)
				,*time*
		)
		(lasts_ie 	(impl 
					(and (not ,formula1) (not ,formula2)) 
					(and
						(= (next ,C)  ,C)
						(= (next ,H)  ,H)
						(= (next ,A)  ,A)
						(impl
							(= ,C  1)
							,(if *finite-count*
							     `(= (next ,S) (mod ,(create-delta-inc S) ,(+ K 1)))
							     `(= (next ,S) ,(create-delta-inc S))
							 )
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

