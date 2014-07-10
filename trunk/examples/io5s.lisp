(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

       
(defvar state-trans-spec
  (alw (&&
             (-> (-P- in-s) (next (-P- to4)))
             (-> (!!(-P- in-s))  (next (!!(-P- to4))))
             (-> (-P- to4) (next (-P- to3)))
             (-> (!!(-P- to4))  (next (!!(-P- to3))))
             (-> (-P- to3) (next (-P- to2)))
             (-> (!!(-P- to3))  (next (!!(-P- to2))))
             (-> (-P- to2) (next (-P- to1)))
             (-> (!!(-P- to2))  (next (!!(-P- to1))))
             (-> (-P- to1) (next (-P- out-s)))
             (-> (!!(-P- to1))  (next (!!(-P- out-s)))) ) ) )
   

(defvar init
  (&& (!!(-P- in-s))
      (!!(-P- out-s))
      (!!(-P- to4))
      (!!(-P- to3))
      (!!(-P- to2))
      (!!(-P- to1)) ) )

(defvar constr
  (alw (&& (somp (-P- in-s)) (somp (!!(-P- in-s))) )
        ) )

(bezot:zot 
  20
  (&& ;; trio-spec
      state-trans-spec
      init
      constr
      )
  )
