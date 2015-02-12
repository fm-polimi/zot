(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

(bezot:zot
  10 
  '(and 
	(alwp (somp A))
	(next (alwf (and A (not B))))))


