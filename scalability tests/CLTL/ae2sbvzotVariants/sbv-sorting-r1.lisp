(asdf:operate 'asdf:load-op 'ae2sbvzot)
(use-package :trio-utils)

(define-tvar av1 *real*)
(define-tvar av2 *real*)
(define-tvar av3 *real*)
(define-tvar av4 *real*)
(define-tvar av5 *real*)
(define-tvar bv1 *real*)
(define-tvar bv2 *real*)
(define-tvar bv3 *real*)
(define-tvar bv4 *real*)
(define-tvar bv5 *real*)
(define-tvar S *real*)

(defvar init1
  (alwf (&& ([>=] (-V- av1) 0)
	     ([>=] (-V- av2) 0)
	     ([>=] (-V- av3) 0)
	     ([>=] (-V- av4) 0)
	     ([>=] (-V- av5) 0)
	     ([>=] (-V- bv1) 0)
	     ([>=] (-V- bv2) 0)
	     ([>=] (-V- bv3) 0)
	     ([>=] (-V- bv4) 0)
	     ([>=] (-V- bv5) 0))))

(defvar init2
  (&& ([=] (-V- av1) (-V- bv1))
       ([=] (-V- av2) (-V- bv2))
       ([=] (-V- av3) (-V- bv3))
       ([=] (-V- av4) (-V- bv4))
       ([=] (-V- av5) (-V- bv5))))

(defvar init3
  (&& (!! ([=] (-V- av1) (-V- av2)))
      ([=] (-V- av1) 0.5)
      (!! ([=] (-V- av1) (-V- av3)))
      (!! ([=] (-V- av1) (-V- av4)))
      (!! ([=] (-V- av1) (-V- av5)))
      (!! ([=] (-V- av2) (-V- av3)))
      (!! ([=] (-V- av2) (-V- av4)))
      (!! ([=] (-V- av2) (-V- av5)))
      (!! ([=] (-V- av2) (-V- av3)))
      (!! ([=] (-V- av3) (-V- av4)))
      (!! ([=] (-V- av3) (-V- av5)))
      (!! ([=] (-V- av4) (-V- av5)))))

(defvar b-const
      (alwf (&& ([=] (next (-V- bv1)) (-V- bv1))
		([=] (next (-V- bv2)) (-V- bv2))
		([=] (next (-V- bv3)) (-V- bv3))
		([=] (next (-V- bv4)) (-V- bv4))
		([=] (next (-V- bv5)) (-V- bv5)))))

(defvar S-def1
  (alwf (|| ([=] (-V- S) 0)
	 ([=] (-V- S) 1)
	 ([=] (-V- S) 2)
	 ([=] (-V- S) 3)
	 ([=] (-V- S) 4))))

(defvar S-def1
  (alwf (&& ([>=] (-V- S) 0)
	    ([<=] (-V- S) 4.0))))

(defvar S-def2
  (alwf (&& (-> ([=] (-V- S) 1) ([>] (-V- av1) (-V- av2)))
	    (-> ([=] (-V- S) 2) ([>] (-V- av2) (-V- av3)))
	    (-> ([=] (-V- S) 3) ([>] (-V- av3) (-V- av4)))
	    (-> ([=] (-V- S) 4) ([>] (-V- av4) (-V- av5))))))

(defvar S-def3
  (alwf (-> (|| ([>] (-V- av1) (-V- av2))
		([>] (-V- av2) (-V- av3))
		([>] (-V- av3) (-V- av4))
		([>] (-V- av4) (-V- av5)))
	    ([>] (-V- S) 0))))

(defvar switch
  (alwf (&& (-> ([=] (-V- S) 1) (&& ([=] (next (-V- av1)) (-V- av2))
				    ([=] (next (-V- av2)) (-V- av1))
				    ([=] (next (-V- av3)) (-V- av3))
				    ([=] (next (-V- av4)) (-V- av4))
				    ([=] (next (-V- av5)) (-V- av5))))
	     (-> ([=] (-V- S) 2) (&& ([=] (next (-V- av2)) (-V- av3))
				     ([=] (next (-V- av3)) (-V- av2))
				     ([=] (next (-V- av1)) (-V- av1))
				     ([=] (next (-V- av4)) (-V- av4))
				     ([=] (next (-V- av5)) (-V- av5))))
	     (-> ([=] (-V- S) 3) (&& ([=] (next (-V- av3)) (-V- av4))
				     ([=] (next (-V- av4)) (-V- av3))
				     ([=] (next (-V- av1)) (-V- av1))
				     ([=] (next (-V- av2)) (-V- av2))
				     ([=] (next (-V- av5)) (-V- av5))))
	     (-> ([=] (-V- S) 4) (&& ([=] (next (-V- av4)) (-V- av5))
				     ([=] (next (-V- av5)) (-V- av4))
				     ([=] (next (-V- av1)) (-V- av1))
				     ([=] (next (-V- av2)) (-V- av2))
				     ([=] (next (-V- av3)) (-V- av3)))))))


(defvar no-switch
  (alwf (-> ([=] (-V- S) 0)
	    (&& ([=] (next (-V- av1)) (-V- av1))
		 ([=] (next (-V- av2)) (-V- av2))
		 ([=] (next (-V- av3)) (-V- av3))
		 ([=] (next (-V- av4)) (-V- av4))
		 ([=] (next (-V- av5)) (-V- av5))))))

(defvar prop_wf
  (withinf (&& ([<=] (-V- av1) (-V- av2))
	    ([<=] (-V- av2) (-V- av3))
	    ([<=] (-V- av3) (-V- av4))
	    ([<=] (-V- av4) (-V- av5))
	    (|| ([=] (-V- av1) (-V- bv1))
	        ([=] (-V- av1) (-V- bv2))
	        ([=] (-V- av1) (-V- bv3))
	        ([=] (-V- av1) (-V- bv4))
	        ([=] (-V- av1) (-V- bv5)))
	    (|| ([=] (-V- av2) (-V- bv1))
	        ([=] (-V- av2) (-V- bv2))
	        ([=] (-V- av2) (-V- bv3))
	        ([=] (-V- av2) (-V- bv4))
	        ([=] (-V- av2) (-V- bv5)))
	    (|| ([=] (-V- av3) (-V- bv1))
	        ([=] (-V- av3) (-V- bv2))
	        ([=] (-V- av3) (-V- bv3))
	        ([=] (-V- av3) (-V- bv4))
	        ([=] (-V- av3) (-V- bv5)))
	    (|| ([=] (-V- av4) (-V- bv1))
	        ([=] (-V- av4) (-V- bv2))
	        ([=] (-V- av4) (-V- bv3))
	        ([=] (-V- av4) (-V- bv4))
	        ([=] (-V- av4) (-V- bv5)))
	    (|| ([=] (-V- av5) (-V- bv1))
	        ([=] (-V- av5) (-V- bv2))
	        ([=] (-V- av5) (-V- bv3))
	        ([=] (-V- av5) (-V- bv4))
	        ([=] (-V- av5) (-V- bv5)))) 8))


(defvar prop_som
  (somf (&& ([<=] (-V- av1) (-V- av2))
	    ([<=] (-V- av2) (-V- av3))
	    ([<=] (-V- av3) (-V- av4))
	    ([<=] (-V- av4) (-V- av5))
	    (|| ([=] (-V- av1) (-V- bv1))
	        ([=] (-V- av1) (-V- bv2))
	        ([=] (-V- av1) (-V- bv3))
	        ([=] (-V- av1) (-V- bv4))
	        ([=] (-V- av1) (-V- bv5)))
	    (|| ([=] (-V- av2) (-V- bv1))
	        ([=] (-V- av2) (-V- bv2))
	        ([=] (-V- av2) (-V- bv3))
	        ([=] (-V- av2) (-V- bv4))
	        ([=] (-V- av2) (-V- bv5)))
	    (|| ([=] (-V- av3) (-V- bv1))
	        ([=] (-V- av3) (-V- bv2))
	        ([=] (-V- av3) (-V- bv3))
	        ([=] (-V- av3) (-V- bv4))
	        ([=] (-V- av3) (-V- bv5)))
	    (|| ([=] (-V- av4) (-V- bv1))
	        ([=] (-V- av4) (-V- bv2))
	        ([=] (-V- av4) (-V- bv3))
	        ([=] (-V- av4) (-V- bv4))
	        ([=] (-V- av4) (-V- bv5)))
	    (|| ([=] (-V- av5) (-V- bv1))
	        ([=] (-V- av5) (-V- bv2))
	        ([=] (-V- av5) (-V- bv3))
	        ([=] (-V- av5) (-V- bv4))
	        ([=] (-V- av5) (-V- bv5))))))




(defvar syst
  (yesterday
   (&&   
    init1
    init2
    init3
    b-const
    S-def1
    S-def2
    S-def3
    switch
    no-switch
    )))

(ae2sbvzot:zot 30
      (&&   
	    syst
	    ;;(!! prop_wf)
	    ;;(!! prop_som)
	    )
      :logic :QF_UFLRA
      )

