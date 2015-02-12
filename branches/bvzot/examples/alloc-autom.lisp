(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

(defvar bool '(1 0))

(defvar apr-domain (loop for i from 0 to 3 collect i))
(defvar resAsgn-domain (loop for i from 0 to 2 collect i))
(defvar tlr-domain (loop for i from 0 to 2 collect i))
(defvar gr-domain (loop for i from 0 to 2 collect i))
(defvar req-domain (loop for i from 0 to 2 collect i))


(define-variable apr1 apr-domain)
(define-variable apr2 apr-domain)
(define-variable resAsgn resAsgn-domain)
(define-variable tlr tlr-domain)
(define-variable gr gr-domain)
(define-variable req req-domain)
(define-variable rel bool)


(defvar prop1 (-A- a req-domain
		   (-> 
		     (&& (-P- req a)
			 (lasts (!! (-P- gr a)) 2))
		     (futr (-P- rq a) 2))))

(defvar prop2 (-A- a req-domain
		   (->
		     (-P- req a)
		     (somf (-P- gr a)))))

(defvar property (-> (alw prop1) 
		     (alw prop2)))


(defvar st1 (&& (apr1-is 0) (apr2-is 0) (resAsgn-is 0) (tlr-is 0) (gr-is 0) (req-is 0) (rel-is 0)))

(defvar st2 (&& (apr1-is 0) (apr2-is 0) (resAsgn-is 0) (tlr-is 0) (gr-is 0) (req-is 1) (rel-is 0)))

(defvar st3 (&& (apr1-is 0) (apr2-is 0) (resAsgn-is 0) (tlr-is 0) (gr-is 0) (req-is 2) (rel-is 0)))

(defvar st4 (&& (apr1-is 3) (apr2-is 0) (resAsgn-is 1) (tlr-is 2) (gr-is 1) (req-is 0) (rel-is 0)))

(defvar st5 (&& (apr1-is 3) (apr2-is 0) (resAsgn-is 1) (tlr-is 2) (gr-is 1) (req-is 2) (rel-is 0)))

(defvar st6 (&& (apr1-is 0) (apr2-is 3) (resAsgn-is 2) (tlr-is 2) (gr-is 2) (req-is 0) (rel-is 0)))

(defvar st7 (&& (apr1-is 0) (apr2-is 3) (resAsgn-is 2) (tlr-is 2) (gr-is 2) (req-is 1) (rel-is 0)))

(defvar st8 (&& (apr1-is 0) (apr2-is 0) (resAsgn-is 1) (tlr-is 1) (gr-is 0) (req-is 0) (rel-is 0)))

(defvar st9 (&& (apr1-is 0) (apr2-is 0) (resAsgn-is 1) (tlr-is 1) (gr-is 0) (req-is 2) (rel-is 0)))

(defvar st10 (&& (apr1-is 0) (apr2-is 0) (resAsgn-is 1) (tlr-is 1) (gr-is 0) (req-is 0) (rel-is 1)))

(defvar st11 (&& (apr1-is 0) (apr2-is 0) (resAsgn-is 1) (tlr-is 1) (gr-is 0) (req-is 2) (rel-is 1)))

(defvar st12 (&& (apr1-is 0) (apr2-is 0) (resAsgn-is 2) (tlr-is 1) (gr-is 0) (req-is 0) (rel-is 0)))

(defvar st13 (&& (apr1-is 0) (apr2-is 0) (resAsgn-is 2) (tlr-is 1) (gr-is 0) (req-is 1) (rel-is 0)))

(defvar st14 (&& (apr1-is 0) (apr2-is 0) (resAsgn-is 2) (tlr-is 1) (gr-is 0) (req-is 0) (rel-is 1)))

(defvar st15 (&& (apr1-is 0) (apr2-is 0) (resAsgn-is 2) (tlr-is 1) (gr-is 0) (req-is 1) (rel-is 1)))

(defvar st16 (&& (apr1-is 0) (apr2-is 0) (resAsgn-is 1) (tlr-is 0) (gr-is 0) (req-is 0) (rel-is 1)))

(defvar st17 (&& (apr1-is 0) (apr2-is 0) (resAsgn-is 1) (tlr-is 0) (gr-is 0) (req-is 2) (rel-is 1)))

(defvar st18 (&& (apr1-is 0) (apr2-is 0) (resAsgn-is 2) (tlr-is 0) (gr-is 0) (req-is 0) (rel-is 1)))

(defvar st19 (&& (apr1-is 0) (apr2-is 0) (resAsgn-is 2) (tlr-is 0) (gr-is 0) (req-is 1) (rel-is 1)))

(defvar st20 (&& (apr1-is 0) (apr2-is 3) (resAsgn-is 1) (tlr-is 1) (gr-is 0) (req-is 0) (rel-is 1)))

(defvar st21 (&& (apr1-is 0) (apr2-is 3) (resAsgn-is 1) (tlr-is 1) (gr-is 0) (req-is 0) (rel-is 0)))

(defvar st22 (&& (apr1-is 3) (apr2-is 0) (resAsgn-is 2) (tlr-is 1) (gr-is 0) (req-is 0) (rel-is 1)))

(defvar st23 (&& (apr1-is 3) (apr2-is 0) (resAsgn-is 2) (tlr-is 1) (gr-is 0) (req-is 0) (rel-is 0)))

(defvar st24 (&& (apr1-is 0) (apr2-is 2) (resAsgn-is 2) (tlr-is 2) (gr-is 2) (req-is 0) (rel-is 0)))

(defvar st25 (&& (apr1-is 0) (apr2-is 2) (resAsgn-is 2) (tlr-is 2) (gr-is 2) (req-is 1) (rel-is 0)))

(defvar st26 (&& (apr1-is 2) (apr2-is 0) (resAsgn-is 1) (tlr-is 2) (gr-is 1) (req-is 0) (rel-is 0)))

(defvar st27 (&& (apr1-is 2) (apr2-is 0) (resAsgn-is 1) (tlr-is 2) (gr-is 1) (req-is 2) (rel-is 0)))

(defvar st28 (&& (apr1-is 0) (apr2-is 2) (resAsgn-is 1) (tlr-is 0) (gr-is 0) (req-is 0) (rel-is 1)))

(defvar st29 (&& (apr1-is 2) (apr2-is 0) (resAsgn-is 2) (tlr-is 0) (gr-is 0) (req-is 0) (rel-is 1)))

(defvar st30 (&& (apr1-is 0) (apr2-is 3) (resAsgn-is 1) (tlr-is 0) (gr-is 0) (req-is 0) (rel-is 1)))

(defvar st31 (&& (apr1-is 3) (apr2-is 0) (resAsgn-is 2) (tlr-is 0) (gr-is 0) (req-is 0) (rel-is 1)))

(defvar st32 (&& (apr1-is 0) (apr2-is 1) (resAsgn-is 2) (tlr-is 2) (gr-is 2) (req-is 0) (rel-is 0)))

(defvar st33 (&& (apr1-is 0) (apr2-is 1) (resAsgn-is 2) (tlr-is 2) (gr-is 2) (req-is 1) (rel-is 0)))

(defvar st34 (&& (apr1-is 1) (apr2-is 0) (resAsgn-is 1) (tlr-is 2) (gr-is 1) (req-is 0) (rel-is 0)))

(defvar st35 (&& (apr1-is 1) (apr2-is 0) (resAsgn-is 1) (tlr-is 2) (gr-is 1) (req-is 2) (rel-is 0)))


(defvar trans
  (list
    (case-clause
      st1 (|| (next st1) (next st2) (next st3))

      st2 (|| (next st4) (next st5))

      st3 (|| (next st6) (next st7))

      st4 (|| (next st8) (next st9) (next st10) (next st11))

      st5 (|| (next st20) (next st21))

      st6 (|| (next st12) (next st13) (next st14) (next st15))

      st7 (|| (next st22) (next st23))

      st8 (|| (next st16) (next st17))

      st9  (next st30)

      st10 (|| (next st1) (next st2) (next st3))

      st11 (|| (next st6) (next st7))

      st12 (|| (next st18) (next st19))

      st13 (next st31) 

      st14 (|| (next st1) (next st2) (next st3))

      st15 (|| (next st4) (next st5))

      st16 (|| (next st1) (next st2) (next st3))

      st17 (|| (next st6) (next st7))

      st18 (|| (next st1) (next st2) (next st3))

      st19 (|| (next st4) (next st5))

      st20 (|| (next st24) (next st25))

      st21 (next st28)

      st22 (|| (next st26) (next st27))

      st23 (next st29) 

      st24 (|| (next st12) (next st13) (next st14) (next st15))

      st25 (|| (next st22) (next st23))

      st26 (|| (next st8) (next st9) (next st10) (next st11))

      st27 (|| (next st20) (next st21))

      st28 (|| (next st32) (next st33))

      st29 (|| (next st34) (next st35))

      st30 (|| (next st24) (next st25))

      st31 (|| (next st26) (next st27))

      st32 (|| (next st12) (next st13) (next st14) (next st15))

      st33 (|| (next st22) (next st23))

      st34 (|| (next st8) (next st9) (next st10) (next st11))

      st35 (|| (next st20) (next st21)))))

(defvar init
  (yesterday st1))

(defvar hce
  (alw (|| st1 st2 st3 st4 st5 st6 st7 st8 st9 st10
	   st11 st12 st13 st14 st15 st16 st17 st18 st19 st20
	   st21 st22 st23 st24 st25 st26 st27 st28 st29 st30
	   st31 st32 st33 st34 st35)))



(defvar buchi (&&
		(alwf (somf (-E- x '(1 2) (-P- req x))))
		(alwp (somp (-E- x '(1 2) (-P- req x))))))



(bezot:zot 
  30  ;(&& init buchi (!! property)) ; unsat in 17"
  (&& init buchi hce)
  :transitions trans
  :loop-free t) ; 30, buchi+hce: usat in 1320s
