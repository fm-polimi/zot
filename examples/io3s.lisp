(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

       
(defvar state-trans-spec
  (alw (&&
             (-> (-P- in-s) (next (-P- to2)))
             (-> (!!(-P- in-s))  (next (!!(-P- to2))))
             (-> (-P- to2) (next (-P- to1)))
             (-> (!!(-P- to2))  (next (!!(-P- to1))))
             (-> (-P- to1) (next (-P- out-s)))
             (-> (!!(-P- to1))  (next (!!(-P- out-s)))) ) ) )
   


(defvar init
  (&& (!!(-P- in-s))
      (!!(-P- out-s))
      (!!(-P- to1))
      (!!(-P- to2)) ) )

(defvar constr
  (alw (&& (somp (-P- in-s)) (somp (!!(-P- in-s))) )
        ) )

(bezot:zot 
  15
  (&& state-trans-spec)
      equiv-spec
      init
      constr)
  )
