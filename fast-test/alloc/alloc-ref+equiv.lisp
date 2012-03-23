(load "../bi.lisp")
(use-package :trio-utils)


(defconstant NUM_PROCS 3)
(defconstant T_RELEASE 3)
(defconstant T_REQUEST 3)

(defvar *procs* (loop for x from 1 to NUM_PROCS collect x))
(defvar *procs-zero* (cons 0 *procs*))

(defvar T-rel T_RELEASE)
(defvar *Trel-dom* (loop for x from 1 to T-rel collect x))
(defvar *Trel-dom0* (cons 0 *Trel-dom*))

(defvar T-req T_REQUEST)
(defvar *Treq-dom* (loop for x from 1 to T-req collect x))
(defvar *Treq-dom0* (cons 0 *Treq-dom*))


(define-item TTR-op *Trel-dom0*)
(define-array TTER-op *procs* *Treq-dom0*)
(define-item GRP-op *procs-zero*)
(define-item TTR-de *Trel-dom0*)
(define-array TTER-de *procs* *Treq-dom0*)
(define-item GRP-de *procs-zero*)

(defconstant decl
	     (append
	       (list (-P- avail-de) (-P- avail-op) (-P- rel-de) (-P- rel-op))
	       (loop for x in *procs* collect (-P- gr-de x))
	       (loop for x in *procs* collect (-P- gr-op x))
	       (loop for x in *procs* collect (-P- req-de x))
	       (loop for x in *procs* collect (-P- req-op x))
	       (loop for x in *procs* collect (-P- apr-de x))
	       (loop for x in *procs* collect (-P- apr-op x))
	       (loop for x in *procs* collect (-P- lrapr-de x))
	       (loop for x in *procs* collect (-P- lrapr-op x))
	       (loop for x in *Trel-dom0* collect (TTR-op= x))
	       (loop for x in *Treq-dom0* append
		     (loop for y in *procs* collect (TTER-op= y x)))
	       (loop for x in *procs-zero* collect (GRP-op= x))
	       (loop for x in *Trel-dom0* collect (TTR-de= x))
	       (loop for x in *Treq-dom0* append
		     (loop for y in *procs* collect (TTER-de= y x)))
	       (loop for x in *procs-zero* collect (GRP-de= x))

	       )
	     )

(defvar one
  (-A- p *procs*
       (-> (-P- req-op p) (-A- q *procs* (||
                                          (= p q)
                                          (!! (-P- req-op q))
                                          )
                               )
           )
       )
  )

(defvar two
  (&&
   (-A- p *procs* (-> (-P- gr-op p) (&& (-P- avail-op) (-P- lrapr-op p))))
   (-A- p *procs* (-> (&& (-P- avail-op) (-P- lrapr-op p)) (-P- gr-op p)))
   )
  )

(defvar three
  (&&
   (-> (-E- p *procs* (-P- gr-op p)) (next (TTR-op= (- T-rel 1))))   
   (-A- x *Trel-dom* (-> (&&
                          (!! (-P- rel-op))
                          (TTR-op= x)
                          (not (eql x 0))
                          (not (eql x T-rel))
                          )
                         (next (TTR-op= (- x 1)))
                         )
        )
   (-> (TTR-op= 0) (-P- rel-op))
   (-> (-P- rel-op) (!! (TTR-op= T-rel)))
   (-> (-P- rel-op) (next (TTR-op= T-rel)))
   (-> (&& (TTR-op= T-rel) (-A- p *procs* (!! (-P- gr-op p)))) (next (TTR-op= T-rel)))
   )
  )

(defvar four
  (&&
   (-> (TTR-op= T-rel) (-P- avail-op))
   (-> (-P- avail-op) (TTR-op= T-rel))
   )
  )

(defvar five
  (&&
   (-A- p *procs* (-> (-P- req-op p) (TTER-op= p T-req)))
   (-A- p *procs* (-> (-P- req-op p) (next (TTER-op= p (- T-req 1)))))
   (-A- p *procs*
        (-A- x *Treq-dom*
             (-> (&&
                  (!! (-P- gr-op p))
                  (TTER-op= p x)
                  (!! (TTER-op= p 0))
                  (!! (TTER-op= p T-req))
                  )
                 (next (TTER-op= p (- x 1)))
                 )
             )
        )
   (-A- p *procs* (-> (&& (!! (-P- gr-op p)) (TTER-op= p 0)) (next (TTER-op= p T-req))))
   (-A- p *procs* (-> (&& (TTER-op= p T-req) (!! (-P- req-op p))) (next (TTER-op= p T-req))))
   (-A- p *procs* (-> (-P- gr-op p) (next (TTER-op= p T-req))))
   )
  )

(defvar six
  (&&
   (-A- p *procs* (-> (TTER-op= p T-req) (!! (-P- apr-op p))))
   (-A- p *procs* (-> (!! (-P- apr-op p)) (TTER-op= p T-req)))
   )
  )

(defvar seven
  (&&
   (-A- p *procs* (-> (-P- lrapr-op p) (&&
                                     (-P- apr-op p)
                                     (-E- x *Treq-dom0* (&& (TTER-op= p x) (< x T-req)))
                                     (-A- q *procs* (||
                                                     (= p q)
                                                     (-E- x *Treq-dom0* (-E- y *Treq-dom0* (&& (TTER-op= p x)(TTER-op= q y)(< x y))))
                                                     )
                                          )
                                     )
                      )
        )
   
   (-A- P *procs* (-> (&&
                       (-P- apr-op p)
                       (-E- x *Treq-dom0* (&& (TTER-op= p x) (< x T-req)))
                       (-A- q *procs* (||
                                       (= p q)
                                       (-E- x *Treq-dom0* (-E- y *Treq-dom0* (&& (TTER-op= p x)(TTER-op= q y)(< x y))))
                                       )
                            )
                       )
                      (-P- lrapr-op p)
                      )
        )
   )
  )

(defvar eight
  (&&
   (-A- p *procs* (-> (-P- gr-op p) (GRP-op= p)))
   (-A- p *procs* (-> (&& (GRP-op= p) (!! (-P- rel-op))) (next (GRP-op= p))))
   (-> (&& (-P- avail-op) (-A- p *procs* (!! (-P- gr-op p)))) (GRP-op= 0))
   (-A- p *procs* (-> (GRP-op= p) (!! (-P- req-op p))))
   )
  )

(defvar dax1
  (-> (-E- p *procs* (-P- gr-de p))
      (&& (!! (-P- rel-de))
          (WithinF (-P- rel-de) T-rel))
      )
  )

(defvar dax2
  (-> (-P- rel-de)
      (yesterday (since
                  (!! (-P- rel-de))
                  (-E- p *procs* (-P- gr-de p))
                  )
                 )
      )
  )

(defvar dax3
  (!! (-E- p *procs*
           (-E- q *procs*
                (&& (not (eql p q))
                    (-P- req-de p)
                    (-P- req-de q))
                )
           ))
  )

(defvar dax4
  (-A- p *procs*
       (<-> (-P- apr-de p)
            (yesterday (since-b 0 (- T-req 1)
                                (!! (-P- gr-de p))
                                (-P- req-de p)))
            )
       )
  )

(defvar dax5
  (-A- p *procs*
       (<-> (-P- lrapr-de p)
            (-E- tp *Treq-dom*
                 (&& (-P- apr-de p)
                     (lasttime (-P- req-de p) tp)
                     (-A- q *procs*
                          (-A- tq *Treq-dom*
                               (-> (&&
                                    (not (eql p q))
                                    (-P- apr-de q)
                                    (lasttime (-P- req-de q) tq)
                                    )
                                   (< tq tp)
                                   )
                               ))
                     ))
            ))
  )

(defvar dax6
  (-A- p *procs*
       (-> (||
            (-P- apr-de p)
            (-P- gr-de p)
            (yesterday (since (!! (-P- rel-de)) (-P- gr-de p)))
            )
           (!! (-P- req-de p))
           ))
  )

(defvar dax7
  (-A- p *procs*
       (<-> (-P- gr-de p)
            (&& (-P- avail-de) (-P- lrapr-de p)))
       )
  )

(defvar dax8
  (<-> (-P- avail-de)
       (||
        (yesterday (since (!! (-E- p *procs* (-P- gr-de p))) (-P- rel-de)))
        (yesterday (alwp (!! (-E- p *procs* (-P- gr-de p))))))
       )
  )

(defvar bridge
  (alw
  (&&
   (-A- p *procs* (<-> (!! (-P- apr-de p)) (TTER-de= p T-req)))
   (<-> (-P- avail-de) (TTR-de= T-rel))
   (-A- p *procs* (-> (-P- req-de p) (next (TTER-de= p (- T-req 1)))))
   (-A- p *procs*
        (-A- x *Treq-dom*
             (-> (&&
                  (!! (-P- gr-de p))
                  (TTER-de= p x)
                  (!! (TTER-de= p 0))
                  (!! (TTER-de= p T-req))
                  )
                 (next (TTER-de= p (- x 1)))
                 )
             )
        )
   (-> (-E- p *procs* (-P- gr-de p)) (next (TTR-de= (- T-rel 1))))
   (-A- x *Trel-dom* (-> (&&
                          (!! (-P- rel-de))
                          (TTR-de= x)
                          (not (eql x 0))
                          (not (eql x T-rel))
                          )
                         (next (TTR-de= (- x 1)))
                         )
        )
   (-A- p *procs* (-> (-P- gr-de p) (GRP-de= p)))
   (-A- p *procs* (-> (&& (GRP-de= p) (!! (-P- rel-de))) (next (GRP-de= p))))
   (-> (&& (-P- avail-de) (-A- p *procs* (!! (-P- gr-de p)))) (GRP-de= 0))
   )
  ))
   

(defvar refinement
  (alw
   (&&
    (-A- p *procs* (<-> (-P- req-op p) (-P- req-de p)))
    (-A- p *procs* (<-> (-P- gr-op p) (-P- gr-de p)))
    (-A- p *procs* (<-> (-P- apr-op p) (-P- apr-de p)))
    (-A- p *procs* (<-> (-P- lrapr-op p) (-P- lrapr-de p)))
    (<-> (-P- rel-op) (-P- rel-de))
    (<-> (-P- avail-op) (-P- avail-de))
    (-A- x *Trel-dom0* (<-> (TTR-op= x) (TTR-de= x)))
    (-A- x *Treq-dom0*
         (-A- y *procs* (<-> (TTER-op= y x) (TTER-de= y x))))
    (-A- x *procs-zero* (<-> (GRP-op= x) (GRP-de= x)))
    )
   )
  )

(defvar init
  (&&
   (!! (-E- p *procs* (-P- lrapr-op p)))
   (-P- avail-op)
   (!! (-P- rel-op))
   (-A- p *procs* (&&
                  (!! (-P- req-op p))
                  (!! (-P- apr-op p))
                  (!! (-P- gr-op p))))
   
   (TTR-op= T-rel)
   (-A- p *procs* (TTER-op= p T-req))
   (GRP-op= 0)))


(defvar operational
  (list
    one
    two
    three
    four
    five
    six
    seven
    eight
    )
   )

(defvar descriptive
  (alw
   (&&
    dax1
    dax2
    dax3
    dax4
    dax5
    dax6
    dax7
    dax8
    )
   )
  )


(loop for bound in '(15) 
     do

     (format t "$ refinement : bound=~S~%" bound)
     (funcall the-zot bound
		(&&
		 init
		 refinement
		 (!! descriptive))
		:transitions operational)
     )

; equiv
; (loop for bound in '(30 60 90) 
;      do
; 
;      (format t "$ equivalence : bound=~S~%" bound)
;      (funcall the-zot bound
; 	      (&&
; 	       init
; 	       refinement
; 	       bridge
; 	       descriptive)
; 	      :transitions operational
; 	      :negate-transitions t)
; 
;      )


