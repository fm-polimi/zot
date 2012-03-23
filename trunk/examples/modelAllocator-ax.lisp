
(defvar apr-domain (loop for i from 0 to Treq collect i))
(defvar resAsgn-domain (loop for i from 0 to 2 collect i))
(defvar tlr-domain (loop for i from 0 to Trel collect i))
(defvar gr-domain (loop for i from 0 to 2 collect i))
(defvar req-domain (loop for i from 0 to 2 collect i))


(define-variable apr1 apr-domain)
(define-variable apr2 apr-domain)
(define-variable resAsgn resAsgn-domain)
(define-variable tlr tlr-domain)
(define-variable gr gr-domain)
(define-variable req req-domain)


(defvar *procs* '(1 2))
(defvar *t-rel* Trel)
(defvar *t-req* (loop for x from 1 to Treq collect x))

;; bridge axioms

(defvar bridge
  (alw (&&
	 (<-> (-P- apr 1) (-E- x apr-domain (&& (apr1-is x) (> x 0))))
	 (<-> (-P- apr 2) (-E- x apr-domain (&& (apr2-is x) (> x 0))))
	 (<-> (-P- avail) (resAsgn-is 0)) 
	 (<-> (-P- lrapr 1) (-E- x apr-domain (-E- y apr-domain
						   (&& (apr1-is x) (apr2-is y) (> x y)))))
	 (<-> (-P- lrapr 2) (-E- x apr-domain (-E- y apr-domain
						   (&& (apr1-is y) (apr2-is x) (> x y))))))))

(defvar bridge-2 
  (alw
    (&&
      (-A- x *t-req*
	   (<-> (apr1-is x)
		(&& (past (req-is 1) (1+ (- Treq x)))
		    (lasted_ii (!! (gr-is 1)) (1+ (- Treq x))))))
      (<-> (apr1-is 0)
	   (|| (lasted_ie (!! (req-is 1)) Treq)
	       (!! (since (!! (gr-is 1)) (req-is 1)))))
      (<-> (apr2-is 0)
	   (|| (lasted_ie (!! (req-is 2)) Treq)
	       (!! (since (!! (gr-is 2)) (req-is 2)))))
      (<-> (resAsgn-is 1)
	   (!! (since (-P- rel) (gr-is 1))))
      (<-> (resAsgn-is 2)
	   (!! (since (-P- rel) (gr-is 2))))
      (<-> (-P- avail) (resAsgn-is 0)) 
      (-A- x (loop for x from 0 to Trel collect x)
	   (<-> (tlr-is x)
		(&& (past (|| (gr-is 1)(gr-is 2)) (- Trel x))
		    (next (lasted (!! (-P- rel)) (1+ (- Trel x)))))))
      (<-> (tlr-is 0)
	   (|| (lasted_ii (&& (!! (gr-is 1))(!! (gr-is 2))) Trel)
	       (!! (since (!! (-P- rel)) (|| (gr-is 1)(gr-is 2)))))))))




;; Purely logic version




(defvar ax1 (-> 
	      (-E- a *procs* (gr-is a))
	       (&& (!! (-P- rel))
		  (WithinF (-P- rel) *t-rel*))))


(defvar ax2 (-> (-P- rel)
		(yesterday (since (!! (-P- rel))
				  (-E- a *procs* (gr-is a))))))


(defvar ax3 (!! (-E- a *procs*
		     (-E- b *procs*
			  (&& (not (eql a b))
			      (req-is a)
			      (req-is b))))))


(defvar ax4 (-A- a *procs*
		 (<-> (-P- apr a)
		      (yesterday (since-b 0 (- (apply #'max *t-req*) 2) 
					  (!! (gr-is a)) (req-is a))))))

(defvar ax5 (-A- a *procs*
		 (<-> (-P- lrapr a)
		      (-E- ta *t-req*
			   (&& (-P- apr a)
			       (lasttime (req-is a) ta)
			       (-A- b *procs*
				    (-A- tb *t-req*
					 (->
					   (&&
					     (not (eql a b))
					     (-P- apr b)
					     (lasttime (req-is b) tb))
					   (< tb ta)))))))))

(defvar ax6 (-A- a *procs*
		 (-> 
		   (|| (-P- apr a)
		       (gr-is a)
		       (yesterday (since (!! (-P- rel)) (gr-is a))))
		   (!! (req-is a)))))

(defvar ax7 (-A- a *procs*
		 (<-> (gr-is a)
		      (&& (-P- avail) (-P- lrapr a)))))


(defvar noncon (-A- a *procs*
		 (-> (gr-is a)
		     (!! (-E- b *procs* 
			      (&& 
				(not (eql a b))
				(gr-is b)))))))

(defvar ax8 (<->
	      (-P- avail)
	      (||
		(yesterday (since (!! (-E- a *procs* (gr-is a)))
				  (-P- rel)))
		(alwp (!! (-E- a *procs* (gr-is a)))))))


(defvar the-trio-system (alw (&& 
			  ax1 
			  ax2 
			  ax3 
			  ax4 
			  ax5 
			  ax6 
			  ax7
			  ax8
			  noncon)))



;; Regole di transizione con riferimento ai macrostati


(defvar good-boys
  (list
    (-E- x tlr-domain     (tlr-is x))
    (-E- x apr-domain     (apr1-is x))
    (-E- x apr-domain     (apr2-is x))
    (-E- x resasgn-domain (resasgn-is x))
    (-E- x gr-domain      (gr-is x))
    (-E- x req-domain     (req-is x))))


(defvar init
  (yesterday 
    (&&
      (apr1-is 0)
      (apr2-is 0)
      (resAsgn-is 0)
      (tlr-is 0)
      (gr-is 0)
      (req-is 0)
      (!! 'rel))))


;; MS0 (risorsa libera)
;; (APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 0)(!! 'rel)
;; (APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 1)(!! 'rel)
;; (APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 2)(!! 'rel)


(defvar allocator

  (list

(->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 0)(!! 'rel))
   (next (||
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 0)(!! 'rel))
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 1)(!! 'rel))  
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 2)(!! 'rel))  
         )
   )
)


(->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 1)(!! 'rel) )
   (next (||
          (&&(APR1-is Treq)(APR2-is 0)(resAsgn-is 1)(TLR-is Trel)(gr-is 1)(req-is 0)(!! 'rel) )   ;;MS1
          (&&(APR1-is Treq)(APR2-is 0)(resAsgn-is 1)(TLR-is Trel)(gr-is 1)(req-is 2)(!! 'rel))   ;;MS1
         )
   )
)


(->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 2)(!! 'rel) )
   (next (||
          (&&(APR1-is 0)(APR2-is Treq)(resAsgn-is 2)(TLR-is Trel)(gr-is 2)(req-is 0)(!! 'rel))   ;;MS2
          (&&(APR1-is 0)(APR2-is Treq)(resAsgn-is 2)(TLR-is Trel)(gr-is 2)(req-is 1)(!! 'rel))   ;;MS2
         )
   )
)



;; MS1 (risorsa assegnata a p1 e non gia` richiesta da p2)


(-A- a apr-domain
(->(&& (> a 0)(APR1-is a)(APR2-is 0)(resAsgn-is 1)(TLR-is Trel)(gr-is 1)(req-is 0)(!! 'rel))
   (next (||
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 1) (TLR-is (- Trel 1))  (gr-is 0)(req-is 0)(!! 'rel))
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 1) (TLR-is (- Trel 1)) (gr-is 0)(req-is 2)(!! 'rel))
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 1) (TLR-is (- Trel 1)) (gr-is 0)(req-is 0)   'rel)
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 1) (TLR-is (- Trel 1))  (gr-is 0)(req-is 2)  'rel)
         )
   )
))

(-A- a apr-domain
(->(&& (> a 0)(APR1-is a)(APR2-is 0)(resAsgn-is 1)(TLR-is Trel)(gr-is 1)(req-is 2)(!! 'rel) )
   (next (||
          (&&(APR1-is 0)(APR2-is Treq)(resAsgn-is 1) (TLR-is (- Trel 1)) (gr-is 0)(req-is 0)(!! 'rel))
          (&&(APR1-is 0)(APR2-is Treq)(resAsgn-is 1) (TLR-is (- Trel 1)) (gr-is 0)(req-is 0)  'rel)
         )
   )
))


(-A- x tlr-domain 
 (->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 1)(&& (TLR-is x)(> x 1) )(gr-is 0)(req-is 0)(!! 'rel) )
    (next (||
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 1)(TLR-is (- x 1) )(gr-is 0)(req-is 0)(!! 'rel))
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 1)(TLR-is (- x 1) )(gr-is 0)(req-is 2)(!! 'rel))
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 1)(TLR-is (- x 1) )(gr-is 0)(req-is 0)  'rel)
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 1)(TLR-is (- x 1) )(gr-is 0)(req-is 2)  'rel)
          )
    )
 )
)


(-A- x tlr-domain 
 (->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 1)(&& (TLR-is x)(> x 1) )(gr-is 0)(req-is 2)(!! 'rel) )
    (next (||
           (&&(APR1-is 0)(APR2-is Treq)(resAsgn-is 1)(TLR-is (- x 1) )(gr-is 0)(req-is 0)(!! 'rel))
           (&&(APR1-is 0)(APR2-is Treq)(resAsgn-is 1)(TLR-is (- x 1) )(gr-is 0)(req-is 0)  'rel)
          )
    ) 
 )
)


(-A- x tlr-domain 
 (->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 1)(&& (TLR-is x)(> x 1) )(gr-is 0)(req-is 0)  'rel )
    (next (||
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 0)(!! 'rel))   ;;MS0
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 1)(!! 'rel))   ;;MS0
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 2)(!! 'rel))   ;;MS0
          )
    )
 )
)

(-A- z tlr-domain
(->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 1)(> z 1)(TLR-is z)(gr-is 0)(req-is 2)  'rel )
   (next (||
          (&&(APR1-is 0)(APR2-is Treq)(resAsgn-is 2)(TLR-is Trel)(gr-is 2)(req-is 0)(!! 'rel))   ;;MS2
          (&&(APR1-is 0)(APR2-is Treq)(resAsgn-is 2)(TLR-is Trel)(gr-is 2)(req-is 1)(!! 'rel))   ;;MS2
         )
   )
))


(->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 1)(TLR-is 1)(gr-is 0)(req-is 0)(!! 'rel) )
   (next (||
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 1)(TLR-is 0)(gr-is 0)(req-is 0)  'rel)
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 1)(TLR-is 0)(gr-is 0)(req-is 2)  'rel)
         )
   )
)


(->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 1)(TLR-is 1)(gr-is 0)(req-is 2)(!! 'rel) )
   (next (||
          (&&(APR1-is 0)(APR2-is Treq)(resAsgn-is 1)(TLR-is 0)(gr-is 0)(req-is 0)  'rel)
         )
   )
)


(->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 1)(TLR-is 1)(gr-is 0)(req-is 0)  'rel )
   (next (||
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 0)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 1)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 2)(!! 'rel))   ;;MS0
         )
   )
)


(->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 1)(TLR-is 1)(gr-is 0)(req-is 2)  'rel )
   (next (||
          (&&(APR1-is 0)(APR2-is Treq)(resAsgn-is 2)(TLR-is Trel)(gr-is 2)(req-is 0)(!! 'rel))   ;;MS2
          (&&(APR1-is 0)(APR2-is Treq)(resAsgn-is 2)(TLR-is Trel)(gr-is 2)(req-is 1)(!! 'rel))   ;;MS2
         )
   )
)


(->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 1)(TLR-is 0)(gr-is 0)(req-is 0)  'rel )
   (next (||
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 0)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 1)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 2)(!! 'rel))   ;;MS0
         )
   )
)


(->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 1)(TLR-is 0)(gr-is 0)(req-is 2)  'rel )
   (next (||
          (&&(APR1-is 0)(APR2-is Treq)(resAsgn-is 2)(TLR-is Trel)(gr-is 2)(req-is 0)(!! 'rel))   ;;MS2
          (&&(APR1-is 0)(APR2-is Treq)(resAsgn-is 2)(TLR-is Trel)(gr-is 2)(req-is 1)(!! 'rel))   ;;MS2
         )
   )
)



;; MS3 (risorsa assegnata a p1 e gia` richiesta da p2)

(-A- y apr-domain 
 (-A- x tlr-domain 
  (->(&& (APR1-is 0)(&& (APR2-is y)(> y 1) )(resAsgn-is 1)(TLR-is x)(> x 1)(gr-is 0)(req-is 0)(!! 'rel) )
     (next (||
            (&&(APR1-is 0)(APR2-is  (- y 1) )(resAsgn-is 1)(TLR-is (- x 1) )(gr-is 0)(req-is 0)(!! 'rel))
            (&&(APR1-is 0)(APR2-is  (- y 1) )(resAsgn-is 1)(TLR-is (- x 1) )(gr-is 0)(req-is 0)  'rel)
             )
     )
  )
 )
)


(-A- z tlr-domain
(-A- y apr-domain 
 (->(&& (APR1-is 0)(APR2-is y)(> y 1)(resAsgn-is 1)(> z 1)(TLR-is z)(gr-is 0)(req-is 0)  'rel )
    (next (||
           (&&(APR1-is 0)(APR2-is  (- y 1) )(resAsgn-is 2)(TLR-is Trel)(gr-is 2)(req-is 0)(!! 'rel))   ;;MS2
           (&&(APR1-is 0)(APR2-is  (- y 1) )(resAsgn-is 2)(TLR-is Trel)(gr-is 2)(req-is 1)(!! 'rel))   ;;MS2
          )
    )
 )
))


(-A- x tlr-domain 
 (->(&& (APR1-is 0)(APR2-is 1)(resAsgn-is 1)(&& (TLR-is x)(> x 1) )(gr-is 0)(req-is 0)(!! 'rel) )
    (next (||
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 1)(TLR-is (- x 1) )(gr-is 0)(req-is 0)(!! 'rel))   ;;MS1
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 1)(TLR-is (- x 1) )(gr-is 0)(req-is 0)  'rel)   ;;MS1
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 1)(TLR-is (- x 1) )(gr-is 0)(req-is 2)(!! 'rel))   ;;MS1
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 1)(TLR-is (- x 1) )(gr-is 0)(req-is 2)  'rel)   ;;MS1
          )
    )
 )
)


(-A- z tlr-domain
(->(&& (APR1-is 0)(APR2-is 1)(resAsgn-is 1)(> z 1)(TLR-is z)(gr-is 0)(req-is 0)  'rel )
   (next (||
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 0)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 1)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 2)(!! 'rel))   ;;MS0
         )
   )
))


(-A- y apr-domain 
 (->(&& (APR1-is 0)(APR2-is y)(> y 1)(resAsgn-is 1)(TLR-is 1)(gr-is 0)(req-is 0)(!! 'rel) )
    (next (||
           (&&(APR1-is 0)(APR1-is  (- y 1) )(resAsgn-is 1)(TLR-is 0)(gr-is 0)(req-is 0)  'rel)
          )
    )
 )
)


(-A- y apr-domain 
 (->(&& (APR1-is 0)(APR2-is y)(> y 1)(resAsgn-is 1)(TLR-is 1)(gr-is 0)(req-is 0)  'rel )
    (next (||
           (&&(APR1-is 0)(APR2-is  (- y 1) )(resAsgn-is 2)(TLR-is Trel)(gr-is 2)(req-is 0)(!! 'rel))   ;;MS2
           (&&(APR1-is 0)(APR2-is  (- y 1) )(resAsgn-is 2)(TLR-is Trel)(gr-is 2)(req-is 1)(!! 'rel))   ;;MS2
          )
    )
 )
)


(->(&& (APR1-is 0)(APR2-is 1)(resAsgn-is 1)(TLR-is 1)(gr-is 0)(req-is 0)(!! 'rel) )
   (next (||
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 1)(TLR-is 0)(gr-is 0)(req-is 0) 'rel)   ;;MS1
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 1)(TLR-is 0)(gr-is 0)(req-is 2) 'rel)   ;;MS1
         )
   )
)
   

(->(&& (APR1-is 0)(APR2-is 1)(resAsgn-is 1)(TLR-is 1)(gr-is 0)(req-is 0)  'rel )
   (next (||
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 0)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 1)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 2)(!! 'rel))   ;;MS0
         )
   )
)


(-A- y apr-domain 
 (->(&& (APR1-is 0)(&& (APR2-is y)(> y 1) )(resAsgn-is 1)(TLR-is 0)(gr-is 0)(req-is 0)  'rel )
    (next (||
           (&&(APR1-is 0)(APR2-is  (- y 1) )(resAsgn-is 2)(TLR-is Trel)(gr-is 2)(req-is 0)(!! 'rel))   ;;MS2
           (&&(APR1-is 0)(APR2-is  (- y 1) )(resAsgn-is 2)(TLR-is Trel)(gr-is 2)(req-is 1)(!! 'rel))   ;;MS2
          )
    )
 )
)


(->(&& (APR1-is 0)(APR2-is 1)(resAsgn-is 1)(TLR-is 0)(gr-is 0)(req-is 0)  'rel )
   (next (||
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 0)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 1)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 2)(!! 'rel))   ;;MS0
         )
   )
)




;; MS2 (analogo di MS1, risorsa assegnata a p2 e non gia` richiesta da p1)

(-A- a apr-domain
(->(&& (APR1-is 0) (> a 0)(APR2-is a) (resAsgn-is 2)(TLR-is Trel)(gr-is 2)(req-is 0)(!! 'rel))
   (next (||
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is (- Trel 1))  (gr-is 0)(req-is 0)(!! 'rel))
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 2) (TLR-is (- Trel 1)) (gr-is 0)(req-is 1)(!! 'rel))
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 2) (TLR-is (- Trel 1)) (gr-is 0)(req-is 0)  'rel)
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 2) (TLR-is (- Trel 1)) (gr-is 0)(req-is 1)  'rel)
         )
   )
))


(-A- a apr-domain
(->(&& (APR1-is 0)(> a 0)(APR2-is a)(resAsgn-is 2)(TLR-is Trel)(gr-is 2)(req-is 1)(!! 'rel) )
   (next (||
          (&&(APR1-is Treq)(APR2-is 0)(resAsgn-is 2) (TLR-is (- Trel 1))  (gr-is 0)(req-is 0)(!! 'rel))
          (&&(APR1-is Treq)(APR2-is 0)(resAsgn-is 2) (TLR-is (- Trel 1))  (gr-is 0)(req-is 0)  'rel)
         )
   )
))


(-A- x tlr-domain 
 (->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 2) (TLR-is x)(> x 1) (gr-is 0)(req-is 0)(!! 'rel) )
    (next (||
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is (- x 1) )(gr-is 0)(req-is 0)(!! 'rel))
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is (- x 1) )(gr-is 0)(req-is 1)(!! 'rel))
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is (- x 1) )(gr-is 0)(req-is 0)  'rel)
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is (- x 1) )(gr-is 0)(req-is 1)  'rel)
          )
    )
 )
)


(-A- x tlr-domain 
 (->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 2)(&& (TLR-is x)(> x 1) )(gr-is 0)(req-is 1)(!! 'rel) )
    (next (||
           (&&(APR1-is Treq)(APR2-is 0)(resAsgn-is 2)(TLR-is (- x 1) )(gr-is 0)(req-is 0)(!! 'rel))
           (&&(APR1-is Treq)(APR2-is 0)(resAsgn-is 2)(TLR-is (- x 1) )(gr-is 0)(req-is 0)  'rel)
          )
    ) 
 )
)


(-A- x tlr-domain 
 (->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 2)(&& (TLR-is x)(> x 1) )(gr-is 0)(req-is 0)  'rel )
    (next (||
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 0)(!! 'rel))   ;;MS0
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 1)(!! 'rel))   ;;MS0
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 2)(!! 'rel))   ;;MS0
          )
    )
 )
)

(-A- z tlr-domain 
(->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is z)(> z 1)(gr-is 0)(req-is 1)  'rel )
   (next (||
          (&&(APR1-is Treq)(APR2-is 0)(resAsgn-is 1)(TLR-is Trel)(gr-is 1)(req-is 0)(!! 'rel))   ;;MS1
          (&&(APR1-is Treq)(APR2-is 0)(resAsgn-is 1)(TLR-is Trel)(gr-is 1)(req-is 2)(!! 'rel))   ;;MS1
         )
   )
))


(->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is 1)(gr-is 0)(req-is 0)(!! 'rel) )
   (next (||
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is 0)(gr-is 0)(req-is 0)  'rel)
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is 0)(gr-is 0)(req-is 1)  'rel)
         )
   )
)
  

(->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is 1)(gr-is 0)(req-is 1)(!! 'rel) )
   (next (||
          (&&(APR1-is Treq)(APR2-is 0)(resAsgn-is 2)(TLR-is 0)(gr-is 0)(req-is 0)  'rel)
         )
   )
)


(->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is 1)(gr-is 0)(req-is 0)  'rel )
   (next (||
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 0)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 1)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 2)(!! 'rel))   ;;MS0
         )
   )
)


(->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is 1)(gr-is 0)(req-is 1)  'rel )
   (next (||
          (&&(APR1-is Treq)(APR2-is 0)(resAsgn-is 1)(TLR-is Trel)(gr-is 1)(req-is 0)(!! 'rel))   ;;MS1
          (&&(APR1-is Treq)(APR2-is 0)(resAsgn-is 1)(TLR-is Trel)(gr-is 1)(req-is 2)(!! 'rel))   ;;MS1
         )
   )
)


(->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is 0)(gr-is 0)(req-is 0)  'rel )
   (next (||
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 0)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 1)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 2)(!! 'rel))   ;;MS0
         )
   )
)


(->(&& (APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is 0)(gr-is 0)(req-is 1)  'rel )
   (next (||
          (&&(APR1-is Treq)(APR2-is 0)(resAsgn-is 1)(TLR-is Trel)(gr-is 1)(req-is 0)(!! 'rel))   ;;MS1
          (&&(APR1-is Treq)(APR2-is 0)(resAsgn-is 1)(TLR-is Trel)(gr-is 1)(req-is 2)(!! 'rel))   ;;MS1
         )
   )
)



;; MS4 (analogo di MS3, risorsa assegnata a p2 e gia` richiesta da p1)


(-A- y apr-domain 
 (-A- x tlr-domain 
  (->(&& (&& (APR1-is y)(> y 1) ) (APR2-is 0) (resAsgn-is 2)(&& (TLR-is x)(> x 1) )(gr-is 0)(req-is 0)(!! 'rel) )
     (next (||
            (&&(APR1-is  (- y 1) ) (APR2-is 0) (resAsgn-is 2)(TLR-is (- x 1) )(gr-is 0)(req-is 0)(!! 'rel))   
            (&&(APR1-is  (- y 1) ) (APR2-is 0) (resAsgn-is 2)(TLR-is (- x 1) )(gr-is 0)(req-is 0)  'rel)   
             )
     )
  )
 )
)


(-A- z tlr-domain
(-A- y apr-domain 
 (->(&& (&& (APR1-is y)(> y 1) ) (APR2-is 0) (resAsgn-is 2)(> z 1)(TLR-is z)(gr-is 0)(req-is 0)  'rel )
    (next (||
           (&& (APR1-is (- y 1)) (APR2-is 0) (resAsgn-is 1)(TLR-is Trel)(gr-is 1)(req-is 0)(!! 'rel))   ;;MS1
           (&& (APR1-is (- y 1)) (APR2-is 0) (resAsgn-is 1)(TLR-is Trel)(gr-is 1)(req-is 2)(!! 'rel))   ;;MS1
          )
    )
 )
))


(-A- x tlr-domain 
 (->(&& (APR1-is 1)(APR2-is 0)(resAsgn-is 2)(&& (TLR-is x)(> x 1) )(gr-is 0)(req-is 0)(!! 'rel) )
    (next (||
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is (- x 1) )(gr-is 0)(req-is 0)(!! 'rel))   ;;MS2
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is (- x 1) )(gr-is 0)(req-is 0)  'rel)   ;;MS2
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is (- x 1) )(gr-is 0)(req-is 1)(!! 'rel))   ;;MS2
           (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is (- x 1) )(gr-is 0)(req-is 1)  'rel)   ;;MS2
          )
    )
 )
)


(-A- z tlr-domain
(->(&& (APR1-is 1)(APR2-is 0)(resAsgn-is 2)(> z 1)(TLR-is z)(gr-is 0)(req-is 0)  'rel )
   (next (||
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 0)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 1)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 2)(!! 'rel))   ;;MS0
         )
   )
))


(-A- y apr-domain 
 (->(&& (APR1-is y)(> y 1)(APR2-is 0) (resAsgn-is 2)(TLR-is 1)(gr-is 0)(req-is 0)(!! 'rel) )
    (next (||
           (&& (APR1-is  (- y 1) ) (APR2-is 0) (resAsgn-is 2)(TLR-is 0)(gr-is 0)(req-is 0)  'rel)
          )
    )
 )
)


(-A- x apr-domain 
 (->(&& (APR1-is x)(> x 1)(APR2-is 0) (resAsgn-is 2)(TLR-is 1)(gr-is 0)(req-is 0)  'rel )
    (next (||
           (&& (APR1-is  (- x 1) ) (APR2-is 0) (resAsgn-is 1)(TLR-is Trel)(gr-is 1)(req-is 0)(!! 'rel))   ;;MS1
           (&& (APR1-is  (- x 1) ) (APR2-is 0) (resAsgn-is 1)(TLR-is Trel)(gr-is 1)(req-is 2)(!! 'rel))   ;;MS1
          )
    )
 )
)


(->(&& (APR1-is 1)(APR2-is 0)(resAsgn-is 2)(TLR-is 1)(gr-is 0)(req-is 0)(!! 'rel) )
   (next (||
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is 0)(gr-is 0)(req-is 0)  'rel)   ;;MS2
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 2)(TLR-is 0)(gr-is 0)(req-is 1)  'rel)   ;;MS2
         )
   )
)

   
(->(&& (APR1-is 1)(APR2-is 0)(resAsgn-is 2)(TLR-is 1)(gr-is 0)(req-is 0)  'rel )
   (next (||
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 0)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 1)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 2)(!! 'rel))   ;;MS0
         )
   )
)


(-A- y apr-domain 
 (->(&& (APR1-is y)(> y 1)(APR2-is 0) (resAsgn-is 2)(TLR-is 0)(gr-is 0)(req-is 0)  'rel )
    (next (||
           (&& (APR1-is (- y 1) ) (APR2-is 0) (resAsgn-is 1)(TLR-is Trel)(gr-is 1)(req-is 0)(!! 'rel))   ;;MS1
           (&& (APR1-is (- y 1) ) (APR2-is 0) (resAsgn-is 1)(TLR-is Trel)(gr-is 1)(req-is 2)(!! 'rel))   ;;MS1
          )
    )
 )
)
   

(->(&& (APR1-is 1)(APR2-is 0)(resAsgn-is 2)(TLR-is 0)(gr-is 0)(req-is 0)  'rel )
   (next (||
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 0)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 1)(!! 'rel))   ;;MS0
          (&&(APR1-is 0)(APR2-is 0)(resAsgn-is 0)(TLR-is 0)(gr-is 0)(req-is 2)(!! 'rel))   ;;MS0
         )
   )
)))


(defvar prop-all-macro-states
  (alw (&&
	 (somf (resAsgn-is 0))
	 (somf (&& (resAsgn-is 1)(APR2-is 0))) 
	 (somf (-E- x apr-domain (&& (resAsgn-is 1)(APR2-is x)(> x 1)))) 
	 (somf (&& (resAsgn-is 2)(APR1-is 0))) 
	 (somf (-E- x apr-domain (&& (resAsgn-is 2)(APR1-is x)(> x 1)))) 
	 (somp (resAsgn-is 0))
	 (somp (&& (resAsgn-is 1)(APR2-is 0))) 
	 (somp (-E- x apr-domain (&& (resAsgn-is 1)(APR2-is x)(> x 1)))) 
	 (somp (&& (resAsgn-is 2)(APR1-is 0))) 
	 (somp (-E- x apr-domain (&& (resAsgn-is 2)(APR1-is x)(> x 1)))) )))
  


(defvar prop1 (-A- a '(1 2)
		   (-> 
		     (&& (req-is a)
			 (lasts (!! (gr-is a)) Treq))
		     (futr (req-is a) Treq))))

(defvar prop2 (-A- a '(1 2)
		   (->
		     (req-is a)
		     (somf (gr-is a)))))

(defvar property (-> (alw prop1) 
		     (alw prop2)))

(defvar property2
  (alw (-> 'rel (somp (-E- a '(1 2) (gr-is a))))))


; Conditional fairness:
; spec & rot & insist -> fair

(defvar ex-req (som (-E- a '(1 2) (req-is a))))

(defvar rot (-A- a '(1 2)
		 (-> (req-is a)
		     (-A- b '(1 2) 
			  (-> (not (eql a b))
			      (yesterday (since (!! (req-is a))
						(&& 
						  (req-is b)
						  (withinf (gr-is b) 
							   Treq)))))))))

(defvar insist 
  (-A- a '(1 2)
       (-> (&& (req-is a)
	       (lasts (!! (gr-is a)) Treq))
	   (somf_e (req-is a)))))

(defvar fair 
  (-A- a '(1 2)
       (alw (-> (req-is a)
		(somf_e (gr-is a))))))

