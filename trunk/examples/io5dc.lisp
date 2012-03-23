(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

(defvar trio-spec
  (alw 
       (<-> (-P- in-d) (futr (-P- out-d) 5))
      )) 
       
;(defvar state-trans-spec
;  (alw (&&
;             (-> (-P- in-s) (next (-P- to4)))
;             (-> (!!(-P- in-s))  (next (!!(-P- to4))))
;             (-> (-P- to4) (next (-P- to3)))
;             (-> (!!(-P- to4))  (next (!!(-P- to3))))
;             (-> (-P- to3) (next (-P- to2)))
;             (-> (!!(-P- to3))  (next (!!(-P- to2))))
;             (-> (-P- to2) (next (-P- to1)))
;             (-> (!!(-P- to2))  (next (!!(-P- to1))))
;             (-> (-P- to1) (next (-P- out-s)))
;             (-> (!!(-P- to1))  (next (!!(-P- out-s)))) ) ) )
   

;(defvar equiv-spec
;  (alw (&& 
;        (<-> (-P- in-s) (-P- in-d) ) 
;        (<-> (-P- out-s) (-P- out-d) ) 
;        (<-> (-P- to4) (futr (-P- out-d) 4) ) 
;        (<-> (-P- to3) (futr (-P- out-d) 3) ) 
;        (<-> (-P- to2) (futr (-P- out-d) 2) ) 
;        (<-> (-P- to1) (futr (-P- out-d) 1) ) ) ) ) 


(defvar init
  (&& (!!(-P- in-s))
      (!!(-P- out-s))
      (!!(-P- to4))
      (!!(-P- to3))
      (!!(-P- to2))
      (!!(-P- to1)) ) )

;(defvar constr
;  (alw (&& (&& (somp (-P- in-s)) (somp (!!(-P- in-s))) )
;           (&& (somf (-P- in-s)) (somf (!!(-P- in-s))) ) ) ) )

(bezot:zot 
  514
  (&& trio-spec
 ;     state-trans-spec
 ;     equiv-spec
      init
;      constr
      )
   :loop-free t
  )
