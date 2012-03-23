(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

       
(defvar state-trans-spec
  (alw (&&
             (-> (-P- in-s) (next (-P- to14)))
             (-> (!!(-P- in-s))  (next (!!(-P- to14))))
             (-> (-P- to14) (next (-P- to13)))
             (-> (!!(-P- to14))  (next (!!(-P- to13))))
             (-> (-P- to13) (next (-P- to12)))
             (-> (!!(-P- to13))  (next (!!(-P- to12))))
             (-> (-P- to12) (next (-P- to11)))
             (-> (!!(-P- to12))  (next (!!(-P- to11))))
             (-> (-P- to11) (next (-P- to10)))
             (-> (!!(-P- to11))  (next (!!(-P- to10))))
             (-> (-P- to10) (next (-P- to9)))
             (-> (!!(-P- to10))  (next (!!(-P- to9))))
             (-> (-P- to9) (next (-P- to8)))
             (-> (!!(-P- to9))  (next (!!(-P- to8))))
             (-> (-P- to8) (next (-P- to7)))
             (-> (!!(-P- to8))  (next (!!(-P- to7))))
             (-> (-P- to7) (next (-P- to6)))
             (-> (!!(-P- to7))  (next (!!(-P- to6))))
             (-> (-P- to6) (next (-P- to5)))
             (-> (!!(-P- to6))  (next (!!(-P- to5))))
             (-> (-P- to5) (next (-P- to4)))
             (-> (!!(-P- to5))  (next (!!(-P- to4))))
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
      (!!(-P- to14))
      (!!(-P- to13))
      (!!(-P- to12))
      (!!(-P- to11))
      (!!(-P- to10))
      (!!(-P- to9))
      (!!(-P- to8))
      (!!(-P- to7))
      (!!(-P- to6))
      (!!(-P- to5))
      (!!(-P- to4))
      (!!(-P- to3))
      (!!(-P- to2))
      (!!(-P- to1)) ) )

(defvar constr
  (alw (&& (somp (-P- in-s)) (somp (!!(-P- in-s))) )
        ) )

(bezot:zot 
  60
  (&& state-trans-spec
      init
      constr)
  )
