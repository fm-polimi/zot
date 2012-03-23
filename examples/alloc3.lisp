; Un allocatore morzentiano

(asdf:operate 'asdf:load-op 'bezot)
;(asdf:operate 'asdf:load-op 'czot)
(use-package :trio-utils)

(defvar *procs* (loop for x from 1 to 3 collect x))
(defvar *t-rel* 5)
(defvar *t-req* (loop for x from 1 to 6 collect x))


(defvar ax1 (-> 
	      (-E- a *procs* (-P- gr a))
	       (&& (!! (-P- rel))
		  (WithinF (-P- rel) *t-rel*))))


(defvar ax2 (-> (-P- rel)
		(yesterday (since (!! (-P- rel))
				  (-E- a *procs* (-P- gr a))))))


(defvar ax3 (!! (-E- a *procs*
		     (-E- b *procs*
			  (&& (not (eql a b))
			      (-P- rq a)
			      (-P- rq b))))))


(defvar ax4 (-A- a *procs*
		 (<-> (-P- apr a)
		      (yesterday (since-b 0 (- (apply #'max *t-req*) 2) 
					  (!! (-P- gr a)) (-P- rq a))))))

(defvar ax5 (-A- a *procs*
		 (<-> (-P- lrapr a)
		      (-E- ta *t-req*
			   (&& (-P- apr a)
			       (lasttime (-P- rq a) ta)
			       (-A- b *procs*
				    (-A- tb *t-req*
					 (->
					   (&&
					     (not (eql a b))
					     (-P- apr b)
					     (lasttime (-P- rq b) tb))
					   (< tb ta)))))))))

(defvar ax6 (-A- a *procs*
		 (-> 
		   (|| (-P- apr a)
		       (-P- gr a)
		       (yesterday (since (!! (-P- rel)) (-P- gr a))))
		   (!! (-P- rq a)))))

(defvar ax7 (-A- a *procs*
		 (<-> (-P- gr a)
		      (&& (-P- avail) (-P- lrapr a)))))

(defvar ax8 (<->
	      (-P- avail)
	      (||
		(yesterday (since (!! (-E- a *procs* (-P- gr a)))
				  (-P- rel)))
		(alwp (!! (-E- a *procs* (-P- gr a)))))))


(defvar t1 (-A- a *procs*
		 (-> (-P- gr a)
		     (!! (-E- b *procs* 
			      (&& 
				(not (eql a b))
				(-P- gr b)))))))

(defvar t2 (-A- a *procs*
		(!! (&& (-P- rq a)
			(-P- gr a)))))

(defvar t3 (-A- a *procs* 
		(-> (-P- lrapr a) (-P- apr a))))

(defvar t4 (-A- a *procs*
		(!! (&& (-P- rq a)(-P- apr a)))))

(defvar t5 (-A- a *procs*
		(!! (&& (-P- rq a)(-P- lrapr a)))))

(defvar t6 (-> (-P- rel) (next (!! (-P- rel)))))

(defvar t7 (-A- a *procs* 
		(-> (-P- rq a) (lasts_ee (!! (-P- rq a)) *t-rel*))))

(defvar t8 (-A- a *procs* 
		(-> (-P- gr a) 
		    (next (!! (-E- b *procs* (-P- gr b)))))))



(defvar prop1 (-A- a *procs*
		   (-> 
		     (&& (-P- rq a)
			 (lasts (!! (-P- gr a)) (apply #'max *t-req*)))
		     (futr (-P- rq a) (apply #'max *t-req*)))))

(defvar prop2 (-A- a *procs*
		   (->
		     (-P- rq a)
		     (somf (-P- gr a)))))

(defvar property (-> (alw prop1) 
		     (alw prop2)))


(defvar rot (-A- a *procs* 
		 (-> (-P- rq a)
		     (-A- b *procs* 
			  (-> (not (eql a b))
			      (yesterday (since (!! (-P- rq a))
						(&& 
						  (-P- rq b)
						  (withinf (-P- gr b) 
							   (apply #'max *t-req*))))))))))

(defvar insist 
  (-A- a *procs*
       (-> (&& (-P- rq a)
	       (lasts (!! (-P- gr a)) (apply #'max *t-req*)))
	   (somf_e (-P- rq a)))))

(defvar fair 
  (-A- a *procs*
       (alw (-> (-P- rq a)
		(somf_e (-P- gr a))))))


(defvar the-system (alw (&& 
			  ax1 
			  ax2 
			  ax3 
			  ax4 
			  ax5 
			  ax6 
			  ax7
			  ax8
			  t1
			  rot
			  ;insist
			  )))

; con k=20, trivials OK
(defvar trivials (alw (&&
			t1
			t2
			t3
			t4
			t5
			t6
			t7
			t8)))


(bezot:zot 30 (&& (som (-P- rq 1)) the-system)) 
;(czot:zot 65 the-system)

