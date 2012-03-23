; krc example -- taken and adapted from Trio2Promela

(asdf:operate 'asdf:load-op 'bezot)
(use-package  :trio-utils)
(defvar TME 120)

(defvar train-dom (loop for i from 0 to 3 collect i))
(defvar go-dom (loop for i from 0 to 2 collect i))
(define-variable bar train-dom)
(define-variable go go-dom)

;Time constants from krc2.trio  
(defconstant   mu 30)
(defconstant   dMax 12)
(defconstant   dm 10) ; 
(defconstant   hMax 9)
(defconstant   hm 7)
(defconstant   gamma 6)
(defconstant   open 0)
(defconstant   closed 1)
(defconstant   mup 2)
(defconstant   mdown 3)
(defconstant   up 1)
(defconstant   down 2)
(defconstant   notin 0)


(defun uptonow (A)  (past A 1))
(defun until_w (A B) (|| (until A B) (Alwf A)))
(defun Alwp_i (A) (&& A (AlwP A)))
(defun AlwF_i (A) (&& A (AlwF A)))



;axioms  
(defvar excl 
  (&& 
 ;  (-E- x train-dom (train-is x))
   (-E- x train-dom (bar-is x))
   (-E- x go-dom (go-is x))
  ; (-E- x go-dom (in-is x))
  ))

(defvar k1  (-> (-P- EnterR) (lasts (!! (-P- EnterR)) mu ) ))

(defvar k2  (-> (-P- EnterI) (lasts (!!  (-P- EnterI)) mu)) ) 

(defvar k3  (-> (-P- ExitI) (lasts (!! (-P- ExitI)) mu)) )


(defvar k4  (-> (-P- EnterR) 
		(futr 	(withinf_ii (-P- EnterI) (- dMax dm)) 
			dm)))
(defvar k5  (-> (-P- EnterI) 
		(futr 	(withinf_ii (-P- ExitI) (- hMax hm))
			hm))) 

(defvar k6  (-> (-P- EnterI) 
		(past (withinp_ii (-P- EnterR) (- dMax dm)) 
			dm)))
(princ k6)

(defvar k7  (-> (-P- ExitI )
		(past 	(withinp_ii (-P- EnterI) (- hMax hm)) 
			hm)))

;(defvar k8  (&& (> dM dm) (> dm 0) (> hM hm) (> hm 0)  (> mu (+ dM hM)) (> dm gamma )))

(defvar s1  (<-> 	  (-P- InR)  
			(&& 	(withinp_ii   (-P- EnterR) dMax) 
				(since (!!   (-P- EnterI))   (-P- EnterR))) ))

(defvar s2  (<->  	(-P- InI) 
			(&& 	(withinp_ii (-P- EnterI) hMax) 
				(Since (!!  (-P- ExitI))   (-P- EnterR)))))

(defvar m1  (-> (&& 	(upToNow (bar-is closed) ); senza presente!   
			(go-is up))
 		(&& 	(lasts_ie (bar-is mup) gamma) 
			(futr 	(Until_w (bar-is open) (go-is down)) 
				gamma) )))

(defvar m2  (-> (&& 	(upToNow (bar-is  open) ) ;senza presente! 
			(go-is down)) 
		(&& 	(lasts_ie (bar-is mdown) gamma) 
			(futr 	 (Until_w (bar-is closed) (go-is up)); 
				gamma) )))


(defvar m3  (-> (AlwP_i (!! (go-is down))) 
		(bar-is open)))
(defvar c1  	(<->	(go-is down) 
			(past   (-P- EnterR) (- dm gamma))))

(defvar c2	(<->	(go-is up)
			 (-P- ExitI)))

(defvar the-system 	(&& (somf (-P- EnterI)) 
			     (alw (&& 	
			(somf (-P- EnterI))	; 
			     	excl 
			    	k1 
			   	k2 
				k3 
				k4 
				k5 
				k6 
				k7  
				s1 	
				s2 
	m1 
	m2 
				m3 
				c1
				c2
 				))

			)	) 


(defvar negliveness  (SomF_i (bar-is open) ))
 


(defvar negsafety (Somf	(&& (-P- InI) (not (bar-is closed)) )))

(defvar utility (SomF_i	(&& 	(Lasted_ii 	(!!	(-P- InI)) 
						(+ (- dMax dm) gamma gamma) ) 
				(past 	(!! (bar-is open)) 
					(+ (- dMax dm) gamma) ))))

(bezot:zot
  TME
  (&& negsafety 
   the-system) 
  )






