

(defvar p1-de
  (alw (!! (lasts_ei (-P- L_de) (1+ delta)))))


(defvar p2-de
  (->
   (som (lasts_ei (-P- L_de) (1+ delta)))
   (som (&& (-P- on_de)
	    (withinf_ei (-P- on_de) delta)))))


(defvar init-de
  (yesterday (&& (!! (|| (-P- on_de)(-P- off_de)(-P- L_de))))))

(defvar the-lamp-de
  (alw (&& 
	(<->
	 (-P- L_de)
	 (-E- x (loop for i from 1 to delta collect i)
	      (&& (past (-P- on_de) x)
		  (!! (withinP_ee (-P- off_de) x)))))
	(!! (&& (-P- on_de) (-P- off_de))))))

