(asdf:operate 'asdf:load-op 'eezot)
(use-package :trio-utils)

;(setq sat-interface:*just-back* t)
;(setq sat-interface:*zot-solver* :miraxt)

(eezot:zot
  10 
  (&&
   (-A- x '(-1 0 1 2)
	(dist (-P- C) x))
   (alwp (&& (-P- B) (!! (-P- A))))
   (next (alwf (&& (-P- A) (!! (-P- B))))))
  :declarations '(A C B)
  )



