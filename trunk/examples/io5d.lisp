(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

(defvar trio-spec
  (alw 
       (<-> (-P- in-d) (futr (-P- out-d) 5))
      )) 
       

(defvar init
  (&& (!!(-P- in-s))
      (!!(-P- out-s))
      (!!(futr (-P- out-d) 1))
      (!!(futr (-P- out-d) 2))
      (!!(futr (-P- out-d) 3))
      (!!(futr (-P- out-d) 4))
   ) )

(defvar constr
  (alw (&& (somp (-P- in-d)) (somp (!!(-P- in-d))) )
        ) )

(bezot:zot 
  20
  (&& trio-spec
      init
      constr
      )
  )
