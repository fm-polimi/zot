

(defvar *procs* (loop for x from 1 to NUM_PROCS collect x))
(defvar T-rel T_RELEASE)
(defvar T-req T_REQUEST)
(defvar *Treq-dom* (loop for x from 1 to T-req collect x))

(defconstant decl
  (append
   (list (-P- avail) (-P- rel))
   (loop for x in *procs* collect (-P- gr x))
   (loop for x in *procs* collect (-P- req x))
   (loop for x in *procs* collect (-P- apr x))
   (loop for x in *procs* collect (-P- lrapr x))))




(defvar dax1
  (-> (-E- p *procs* (-P- gr p))
      (&& (!! (-P- rel))
          (WithinF (-P- rel) T-rel))))


(defvar dax2
  (-> (-P- rel)
      (yesterday (since
                  (!! (-P- rel))
                  (-E- p *procs* (-P- gr p))))))


(defvar dax3
  (!! (-E- p *procs*
           (-E- q *procs*
                (&& (not (eql p q))
                    (-P- req p)
                    (-P- req q)))))) 

(defvar dax4
  (-A- p *procs*
       (<-> (-P- apr p)
            (yesterday (since-b 0 (- T-req 1)
                                (!! (-P- gr p))
                                (-P- req p))))))


(defvar dax5
  (-A- p *procs*
       (<-> (-P- lrapr p)
            (-E- tp *Treq-dom*
                 (&& (-P- apr p)
                     (lasttime (-P- req p) tp)
                     (-A- q *procs*
                          (-A- tq *Treq-dom*
                               (-> (&&
                                    (not (eql p q))
                                    (-P- apr q)
                                    (lasttime (-P- req q) tq))
                                   (< tq tp)))))))))


(defvar dax6
  (-A- p *procs*
       (-> (||
            (-P- apr p)
            (-P- gr p)
            (yesterday (since (!! (-P- rel)) (-P- gr p))))
           (!! (-P- req p)))))


(defvar dax7
  (-A- p *procs*
       (<-> (-P- gr p)
            (&& (-P- avail) (-P- lrapr p))))) 


(defvar dax8
  (<-> (-P- avail)
       (||
        (yesterday (since (!! (-E- p *procs* (-P- gr p))) (-P- rel)))
        (yesterday (alwp (!! (-E- p *procs* (-P- gr p))))))))

(defvar init
  (&&
   (-P- avail)
   (!! (-P- rel))
   (-A- p *procs* (&&
                   (!! (-P- req p))
                   (!! (-P- apr p))
                   (!! (-P- lrapr p))
                   (!! (-P- gr p))))))

(defvar the-system
  (alw
   (&&
    dax1
    dax2
    dax3
    dax4
    dax5
    dax6
    dax7
    dax8)))