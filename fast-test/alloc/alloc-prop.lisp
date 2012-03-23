(defvar SimpFa1
  (-A- p *procs*
       (-> (&& (-P- req p)
               (lasts (!! (-P- gr p)) T-req))
           (futr (-P- req p) (+ T-req 1)))))

(defvar SimpFa2
  (-A- p *procs*
       (-> (-P- req p)
           (somf (-P- gr p)))))

(defvar SimpleFairness
  (-> (alw SimpFa1)
      (alw SimpFa2)))

(defvar MaxRelease
  (-A- p *procs*
       (-> (-P- gr p) (nexttime (-P- rel) T-rel))))

(defvar UnRot
   (-A- p *procs* 
        (-> (-P- req p)
            (-A- q *procs* 
                 (-> (not (eql p q))
                     (yesterday (since (!! (-P- req p))
                                       (&&
                                        (-P- req q)
                                        (withinf (-P- gr q)(+ T-req 1))))))))))

(defvar ConditionalFairness
  (-> (alw UnRot) SimpleFairness))

           


(defvar prec
   (-A- a *procs*
        (-A- b *procs*
             (-A- c *procs* 
                  (-> (&& (-P- req a)
                          (-E- t1 *treq-dom*
                               (futr (&& (-P- req b) (not (eql b a)) ) t1) )
                          (-E- t2 *treq-dom* 
                               (&& (futr (-P- gr c)  t2)
                                   (lasts (-A- p *procs* (!! (-P- gr p)) ) t2)  )))
                      (not (eql b c)))))))




(defvar suspendYourself 
  (-A- p *procs*
       (-> (&& (-P- req p)
               (withinF (-P- gr p) T-req)  )
           (lasts (!! (-P- req p) ) (* NUM_PROCS T-rel) ))))
  
  
(defvar suspendFairness
  (-> (alw suspendYourself) SimpleFairness ))
