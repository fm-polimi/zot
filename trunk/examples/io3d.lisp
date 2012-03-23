(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

(defvar trio-spec
  (alw 
       (<-> (-P- in-d) (futr (-P- out-d) 3))
      )) 

(defvar init
  (&& (!!(-P- in-d))
      (!!(-P- out-d))
      (!!(futr (-P- out-d) 1))
      (!!(futr (-P- out-d) 2))
       ) )

(defvar constr
  (alw (&& (somp (-P- in-d)) (somp (!!(-P- in-d))) )
        ) )

(bezot:zot 
  15
  (&& trio-spec
      init
      constr)
  )
