(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)


(defvar trio-spec
  (alw (&& 
	 (!! (&& (-P- on) (-P- off)))
	 (<-> (-P- lamp) (since (!! (-P- off)) 
				(-P- on)))
	 (-> (-P- on) (!! (-P- lamp)))
	 (-> (-P- off) (-P- lamp)))))


(defvar init
  (&& (!! (-P- lamp))
      (!! (-P- on))
      (!! (-P- off))))

(defvar trans
  (list
    (!! (&& (-P- on) (-P- off)))

    (case-clause
      (&& (-P- lamp)(-P- off))	(next (&& (!! (-P- lamp))(!! (-P- off))))
      (&& (!! (-P- lamp))
	  (-P- on))		(next (&& (-P- lamp)(!! (-P- on)))))))

(bezot:zot 
  10
  (&& trio-spec (somf 'off))
  ;:transitions trans
  )

