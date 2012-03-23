(defvar *procs* (loop for x from 1 to NUM_PROCS collect x))
(defvar *procs-zero* (cons 0 *procs*))

(defvar T-rel T_RELEASE)
(defvar *Trel-dom0* (loop for x from 0 to T-rel collect x))
(defvar *Trel-dom* (loop for x from 1 to T-rel collect x))
(defvar T-req T_REQUEST)
(defvar *Treq-dom0* (loop for x from 0 to T-req collect x))
(defvar *Treq-dom* (loop for x from 1 to T-req collect x))

(define-item TTR *Trel-dom0*)
(define-array TTER *procs* *Treq-dom0*)
(define-item GRP *procs-zero*)


(defconstant decl
  (append
   (list (-P- avail) (-P- rel))
   (loop for x in *procs* collect (-P- gr x))
   (loop for x in *procs* collect (-P- req x))
   (loop for x in *procs* collect (-P- apr x))
   (loop for x in *procs* collect (-P- lrapr x))
   (loop for x in *Trel-dom0* collect (TTR= x))
   (loop for x in *Treq-dom0* append
     (loop for y in *procs* collect (TTER= y x)))
   (loop for x in *procs-zero* collect (GRP= x))))


(defvar one
  (-A- p *procs*
       (-> (-P- req p) (-A- q *procs* (||
                                          (= p q)
                                          (!! (-P- req q))
                                          )))))


(defvar two
  (&&
   (-A- p *procs* (-> (-P- gr p) (&& (-P- avail) (-P- lrapr p))))
   (-A- p *procs* (-> (&& (-P- avail) (-P- lrapr p)) (-P- gr p)))))


(defvar three
  (&&
   (-> (-E- p *procs* (-P- gr p)) (next (TTR= (- T-rel 1))))
   (-A- x *Trel-dom* (-> (&&
                          (!! (-P- rel))
                          (TTR= x)
                          (not (eql x T-rel))
                          )
                         (next (TTR= (- x 1)))
                         )
        )
   (-> (TTR= 0) (-P- rel))
   (-> (-P- rel) (!! (TTR= T-rel)))
   (-> (-P- rel) (next (TTR= T-rel)))
   (-> (&& (TTR= T-rel) (-A- p *procs* (!! (-P- gr p)))) (next (TTR= T-rel)))))


(defvar four
  (&&
   (-> (TTR= T-rel) (-P- avail))
   (-> (-P- avail) (TTR= T-rel))))


(defvar five
  (&&
   (-A- p *procs* (-> (-P- req p) (TTER= p T-req)))
   (-A- p *procs* (-> (-P- req p) (next (TTER= p (- T-req 1)))))
   (-A- p *procs*
        (-A- x *Treq-dom*
             (-> (&&
                  (!! (-P- gr p))
                  (TTER= p x)
                  (!! (TTER= p T-req)))
                 (next (TTER= p (- x 1))))))
   (-A- p *procs* (-> (&& (!! (-P- gr p)) (TTER= p 0)) (next (TTER= p T-req))))
   (-A- p *procs* (-> (&& (TTER= p T-req) (!! (-P- req p))) (next (TTER= p T-req))))
   (-A- p *procs* (-> (-P- gr p) (next (TTER= p T-req))))))


(defvar six
  (&&
   (-A- p *procs* (-> (TTER= p T-req) (!! (-P- apr p))))
   (-A- p *procs* (-> (!! (-P- apr p)) (TTER= p T-req)))))



(defvar seven
  (&&
   (-A- p *procs* (-> (-P- lrapr p) (&&
                                     (-P- apr p)
                                     (-E- x *Treq-dom0* (&& (TTER= p x) (< x T-req)))
                                     (-A- q *procs* (||
                                                     (= p q) 
						     (-E- x *Treq-dom0* 
							  (-E- y *Treq-dom0* 
							       (&& (TTER= p x)(TTER= q y)(< x y)))))))))
   
   (-A- P *procs* (-> (&&
                       (-P- apr p)
                       (-E- x *Treq-dom0* (&& (TTER= p x) (< x T-req)))
                       (-A- q *procs* (||
                                       (= p q)
                                       (-E- x *Treq-dom0* 
					    (-E- y *Treq-dom0* (&& (TTER= p x)(TTER= q y)(< x y)))))))
                      (-P- lrapr p)))))


(defvar eight
  (&&
   (-A- p *procs* (-> (-P- gr p) (GRP= p)))
   (-A- p *procs* (-> (&& (GRP= p) (!! (-P- rel))) (next (GRP= p))))
   (-> (&& (-P- avail) (-A- p *procs* (!! (-P- gr p)))) (GRP= 0))
   (-A- p *procs* (-> (GRP= p) (!! (-P- req p))))))


(defvar init
  (&&
   (-P- avail)
   (!! (-P- rel))
   (-A- p *procs* (&&
                   (!! (-P- req p))
                   (!! (-P- gr p))
                   (!! (-P- apr p))
                   (!! (-P- lrapr p))))
   (TTR= T-rel)
   (-A- p *procs* (TTER= p T-req))
   (GRP= 0)))

(defvar the-system
  (list
   one
   two
   three
   four
   five
   six
   seven
   eight))