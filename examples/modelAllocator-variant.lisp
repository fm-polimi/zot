(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

(defvar Trel 4)
(defvar Treq 5)

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

;; Regole di transizione con riferimento ai macrostati


(defvar good-boys
  (list
    (-E- x tlr-domain (&& (tlr-is x) (!! (-E- y tlr-domain (&& (tlr-is y)(not (equal x y)))))))
    (-E- x apr-domain (&& (apr1-is x) (!! (-E- y apr-domain (&& (apr1-is y)(not (equal x y)))))))
    (-E- x apr-domain (&& (apr2-is x) (!! (-E- y apr-domain (&& (apr2-is y)(not (equal x y)))))))
    (-E- x resasgn-domain (&& (resasgn-is x) (!! (-E- y resasgn-domain (&& (resasgn-is y)(not (equal x y)))))))
    (-E- x gr-domain (&& (gr-is x) (!! (-E- y gr-domain (&& (gr-is y)(not (equal x y)))))))
    (-E- x req-domain (&& (req-is x) (!! (-E- y req-domain (&& (req-is y)(not (equal x y)))))))))


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


(defvar prop1
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
  
  

(bezot:zot
  50
  (&& init prop1)
  :transitions (append good-boys allocator)
  ;:loop-free t
  )

;(loop for k from 1 to 100 do
;      (unless (bezot:zot k init :transitions (append good-boys allocator) :loop-free t)
;	(format t "~%Found k = ~S~%" k)   
;	(return nil)))

