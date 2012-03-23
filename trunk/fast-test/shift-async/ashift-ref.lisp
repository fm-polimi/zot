(load "../bi.lisp")

(use-package :trio-utils)

  
(defvar Dom-Max 10)
(defvar Dom  (loop for i from 1 to Dom-Max collect i))
(defvar Dom0 (loop for i from 0 to Dom-Max collect i))
; --- op model ---
                 
(defvar op-model
  (list
    (and-case ()
	      ((&& (!! (-P- Sh_op)) (-P- R_op 0))  
	       (next (-P- R_op 0)))
	      ((&& (!! (-P- Sh_op)) (!! (-P- R_op 0))) 
	       (next (!! (-P- R_op 0))))
	      ((&& (-P- Sh_op) (-P- In_op)) 
	       (next (-P- R_op 0)))
	      ((&& (-P- Sh_op) (!! (-P- In_op))) 
	       (next (!! (-P- R_op 0)))))

    (and-case (i Dom)
	      ((&& (!! (-P- Sh_op)) (!! (-P- R_op i))) 
	       (next (!!(-P- R_op i))))
	      ((&& (!! (-P- Sh_op)) (-P- R_op i))
	       (next (-P- R_op i)))
	      ((&& (-P- Sh_op) (!! (-P- R_op (1- i))))
	       (next (!!(-P- R_op i))))                
	      ((&& (-P- Sh_op) (-P- R_op (1- i)))
	       (next (-P- R_op i))))))

   
; --- de model ---
(defun since$ (a b)
  (yesterday (since_ie a b)))

(defvar descrModel
  (alw (&& (-a- x Dom
		(<-> (-P- R_de x) (since$ (!! (-P- Sh_de)) 
				       (&& (-P- Sh_de) (-P- R_de (1- x))))))
	   (<-> (-P- R_de 0) (since$ (!! (-P- Sh_de)) 
				  (&& (-P- Sh_de) (-P- In_de)))))))




(defvar equiv-alpha
  (alw (&& 
        (<-> (-P- In_op) (-P- In_de) ) 
        (<-> (-P- Sh_op) (-P- Sh_de) ) 
        (-a- i Dom0
             (<-> (-P- R_op i) (-P- R_de i))))))


(defvar init
  (&& (!!(-P- In_de))
      (-a- x Dom0
           (!! (-P- R_de x)))))





(loop for bound in '(30 60 90) do

      (format t "$ : refinement : bound=~s~%" bound)
      (funcall the-zot 
	bound
	(&& (!! descrModel)
	    equiv-alpha
	    (yesterday init)
	    )
	:transitions op-model
	)
      )

(loop for bound in '(30 60 90) do

      (format t "$ : equivalence (<=) : bound=~s~%" bound)
      (funcall the-zot 
	bound
	(&& descrModel
	    equiv-alpha
	    (yesterday init)
	    )
	:transitions op-model
	:negate-transitions t
	)
      )
