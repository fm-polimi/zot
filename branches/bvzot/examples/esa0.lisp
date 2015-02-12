(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

(defvar trio-spec
 (alw
      (&&
         (|| (-P- a) (!!(-P- a)))
         (|| (-P- b) (!!(-P- b)))
         (|| (-P- c) (!!(-P- c)))
         (|| (-P- d) (!!(-P- d)))
       )

  )
 )



(defvar init
 (&& (!!(-P- a))
     (!!(-P- b))
     (!!(-P- c))
     (!!(-P- d))
     )
 )

(bezot:zot
 16
 (&& trio-spec
     init
  )
 :loop-free t
 )

