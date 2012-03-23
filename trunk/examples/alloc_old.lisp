; Un allocatore morzentiano

(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

(defvar *procs* (loop for x from 1 to 3 collect x))
(defvar *t-rel* 6)
(defvar *t-req* (loop for x from 1 to 6 collect x))

(defvar ax1 `(impl 
	       ,(exists *procs*
			(lambda (a)
			  (pred 'gr a)))
	       (withinf rel ,*t-rel*)))

(defvar ax2 `(impl
	       rel
	       (since (not rel)
		      ,(exists *procs* (lambda (a) (pred 'gr a))))))

(defvar ax3 `(not ,(exists *procs*
			   (lambda (a)
			     (exists *procs*
				     (lambda (b)
				       `(and ,(not (eq a b))
					     ,(pred 'rq a)
					     ,(pred 'rq b))))))))

(defvar ax4 (forall *procs*
		    (lambda (a)
		      `(iff ,(pred 'apr a)
			    (yesterday (since-b 0 ,(1- (apply #'max *t-req*)) 
				     (not ,(pred 'gr a)) ,(pred 'rq a)))))))

(defvar ax5 (forall *procs*
		    (lambda (a)
		      `(iff ,(pred 'lrapr a)
			    ,(exists *t-req*
				     (lambda (ta)
				       `(and ,(pred 'apr a)
					     (lasttime ,(pred 'rq a) ,ta)
					     ,(forall *procs*
						      (lambda (b)
							(forall *t-req*
								(lambda (tb)
								  `(impl
								     (and
								       ,(not (eq a b))
								       ,(pred 'apr b)
									  (lasttime ,(pred 'rq b) ,tb))
								     ,(< tb ta)))))))))))))

(defvar ax6 (forall *procs*
		    (lambda (a)
		      `(impl 
			 (or ,(pred 'apr a)
			     (since (not rel) ,(pred 'gr a)))
			 (not ,(pred 'rq a))))))

(defvar ax6-simple (forall *procs* 
			   (lambda (a)
			     `(impl 
				,(pred 'rq a)
				(lasts (not ,(pred 'rq a))
				       ,(+ *t-rel* (apply #'max *t-req*)))))))


(defvar ax7 (forall *procs*
		    (lambda (a)
		      `(iff ,(pred 'gr a) ,(pred 'lrapr a)))))

(defvar ax8 (forall *procs*
		    (lambda (a)
		      `(impl ,(pred 'gr a)
			     (not ,(exists *procs* 
					   (lambda (b)
					     `(and 
						,(not (eq a b))
						,(pred 'gr b)))))))))


(defvar the-system `(alw (and 
			   ,ax1 
			   ,ax2 
			   ,ax3 
			   ,ax4 
			   ,ax5 
			   ,ax6 
			   ,ax7
			   ,ax8)))

(defvar prop1 (forall *procs*
		      (lambda (a)
			`(impl 
			   (and ,(pred 'rq a)
				(lasts (not ,(pred 'gr a)) ,(apply #'max *t-req*)))
			   (futr ,(pred 'rq a) ,(apply #'max *t-req*))))))

(defvar prop2 (forall *procs*
		      (lambda (a)
			`(impl
			   ,(pred 'rq a)
			   (somf ,(pred 'gr a))))))

(defvar property `(alw (and ,prop1 ,prop2)))

;(bezot:zot 200 `(and ,the-system (not ,property)) ) ; -- unsat --

; 2 proc; T-* = 3 si ottiene k=12
; questo lo fa in 7h12' (minisat), 644 Mb
;(bezot:zot 60 the-system :loop-free t) ; -- unsat --
; con 31 si ha gia`  UNSAT dopo 20982 s (= 5h50') e 335 Mb
; (bezot:zot 31 the-system :loop-free t) 
; poi con la dim, MiniSat ci mette 87s e 44 Mb
;(bezot:zot 31 `(and ,the-system (not ,property)) )


;(bezot:zot 10 `(and (yesterday (not inpool)) ,the-system))

(bezot:zot 32 `(and ,the-system (futr 
			 ,(forall *procs* 
				 #'(lambda (a)
				     `(not 
					(or ,(pred 'apr a)
					    ,(pred 'lrapr a)
					    ,(pred 'gr a)
					    ,(pred 'rq a))))) 15))
	   :loop-free t)


(bezot:zot 32 the-system :loop-free t)
; minisat2 preprocessato con satelite: 166m30s, 107.4 Mb
; minisat1 preprocessato con satelite: 153m36s, 115.55 Mb

;(bezot:prove-it 32 the-system property)
; ottenuto: True in 354m (5h54') 

;(bezot:zot 20 `(and (som rel) ,the-system))

; tempi: dim proprieta`

; con k=100, 3 processi, T-req e T-rel = 6
; tot 40m; MiniSat: 608 s (|output.cnf|=60 Mb)

; con k=200:
; tot 147m; MiniSat: 1712 s (|output.cnf|=123 Mb)
