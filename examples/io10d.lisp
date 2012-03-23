(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

(defvar trio-spec
  (alw 
       (<-> (-P- in-d) (futr (-P- out-d) 10))
      )) 


(defvar init
  (&& 
      (!!(futr (-P- out-d) 1))
      (!!(futr (-P- out-d) 2))
      (!!(futr (-P- out-d) 3))
      (!!(futr (-P- out-d) 4))
      (!!(futr (-P- out-d) 5))
      (!!(futr (-P- out-d) 6))
      (!!(futr (-P- out-d) 7))
      (!!(futr (-P- out-d) 8))
      (!!(futr (-P- out-d) 9))
      ) )

(defvar constr
  (alw (&& (somp (-P- in-d)) (somp (!!(-P- in-d))) )
       ) )


(bezot:zot 
  60
  (&& trio-spec
      init
      constr)
  )
