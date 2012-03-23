(load "../bi.lisp")

(use-package :trio-utils)

  
(defvar Dom-Max 10)
(defvar Dom  (loop for i from 1 to Dom-Max collect i))
(defvar Dom0 (loop for i from 0 to Dom-Max collect i))
                 
(defvar op-model
  (list
    (and-case ()
	      ((&& (!! (-P- Sh)) (-P- R 0))  
	       (next (-P- R 0)))
	      ((&& (!! (-P- Sh)) (!! (-P- R 0))) 
	       (next (!! (-P- R 0))))
	      ((&& (-P- Sh) (-P- In)) 
	       (next (-P- R 0)))
	      ((&& (-P- Sh) (!! (-P- In))) 
	       (next (!! (-P- R 0)))))

    (and-case (i Dom)
	      ((&& (!! (-P- Sh)) (!! (-P- R i))) 
	       (next (!!(-P- R i))))
	      ((&& (!! (-P- Sh)) (-P- R i))
	       (next (-P- R i)))
	      ((&& (-P- Sh) (!! (-P- R (1- i))))
	       (next (!!(-P- R i))))                
	      ((&& (-P- Sh) (-P- R (1- i)))
	       (next (-P- R i))))))

   

(defvar init
  (&& (!! (-P- In))
      (!! (-P- Sh))
      (-a- x Dom0
	   (!! (-P- R x)))))




(defvar constr
  (&& (alw (&& (somf  (&& (-P- In)
			  (-P- Sh)))
	       (somf  (&& (!! (-P- In))
			  (-P- Sh)))))
      ))

(defvar p1 
  (alw 
    (->
      (&& (-P- In)
	  (lasts_ii (-P- Sh) Dom-Max))
      (futr (-P- R Dom-Max) (1+ Dom-Max)))))

(loop for bound in '(20)
      do

      (format t "$ op : History generation : bound=~s~%" bound)
      (assert (funcall the-zot 
		       bound

		       (&& 
			 init
			 constr
			 )
		       :transitions op-model
		       ))

      (format t "$ de : property : bound=~s~%" bound)
      (assert (not (funcall the-zot 
			    bound

			    (&& 
			      init
			      constr
			      (!! p1)
			      )
			    :transitions op-model
			    )))


      )
