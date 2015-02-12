(load "../bi.lisp")

(use-package :trio-utils)

(defvar Dom-Max 10) 
(defvar Dom  (loop for i from 1 to Dom-Max collect i))
(defvar Dom0 (loop for i from 0 to Dom-Max collect i))
                 
(defun since$ (a b)
  (yesterday (since_ie a b)))

(defvar descrModel
  (alw (&& (-a- x Dom
		(<-> (-P- R x) (since$ (!! (-P- Sh)) 
				       (&& (-P- Sh) (-P- R (1- x))))))
	   (<-> (-P- R 0) (since$ (!! (-P- Sh)) 
				  (&& (-P- Sh) (-P- In)))))))

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

      (format t "$ de : History generation : bound=~s~%" bound)
      (assert (funcall the-zot 
		       bound
		       (&& descrModel 
			   init
			   constr
			   ))) 

      (format t "$ de : property : bound=~s~%" bound)
      (assert (not (funcall the-zot 
			    bound
			    (&& descrModel 
				init
				(!! p1)
				constr
				)) ))


      )

