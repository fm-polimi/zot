(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

(bezot:zot 
  20  
  '(and 
     (alwp (somp (and B (not A)(lasts A 4))))
     ;(alwp (somp (lasts A 4)))
     (alwf (somf (lasted A 4)))))
