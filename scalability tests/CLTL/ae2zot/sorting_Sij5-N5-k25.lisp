(asdf:operate 'asdf:load-op 'ae2zot)
(use-package :trio-utils)

;; (define-tvar av1 *int*)
;; (define-tvar av2 *int*)
;; (define-tvar av3 *int*)
;; (define-tvar av4 *int*)
;; (define-tvar av5 *int*)
;; (define-tvar bv1 *int*)
;; (define-tvar bv2 *int*)
;; (define-tvar bv3 *int*)
;; (define-tvar bv4 *int*)
;; (define-tvar bv5 *int*)

(defvar k 25)
(defvar N 5)
(defvar a_name "av")
(defvar b_name "bv")

;; (define-tvar 'av *int* *int*)
;; (define-tvar 'bv *int* *int*)
(define-tvar Si *int*)
(define-tvar Sj *int*)


(defun decl (n a b)
  (loop for ind from 1 to n collect (eval `(define-tvar ,(read-from-string (format nil "~A~A" a ind)) *int*)))
  (loop for ind from 1 to n collect (eval `(define-tvar ,(read-from-string (format nil "~A~A" b ind)) *int*))))

(decl N a_name b_name)

(defun init1 (n a b)
  (eval 
   (append '(&&)
	   (append 
	    (loop for ind from 1 to n collect `([>=] (-V- ,(read-from-string (format nil "~A~A" a ind))) 0))
	    (loop for ind from 1 to n collect `([>=] (-V- ,(read-from-string (format nil "~A~A" b ind))) 0))))))

(defun init2 (n a b)
  (eval 
   (append '(&&)
	   (append 
	    (loop for ind from 1 to n collect `([=] (-V- ,(read-from-string (format nil "~A~A" a ind)))
						    (-V- ,(read-from-string (format nil "~A~A" b ind)))))))))


(defun init3 (n a)
  (eval 
   (append '(&&)
	   (append 
	    (loop for ind1 from 1 to (- n 1) append
		  (loop for ind2 from (+ ind1 1) to n collect
			`(!! ([=] (-V- ,(read-from-string (format nil "~A~A" a ind1)))
				  (-V- ,(read-from-string (format nil "~A~A" a ind2)))))))))))


(defun b-const (n b)
  (eval
   (list 'alwf
	   (append '(&&)
		   (append 
		    (loop for ind from 1 to n collect `([=] (next (-V- ,(read-from-string (format nil "~A~A" b ind))))
							    (-V- ,(read-from-string (format nil "~A~A" b ind))))))))))



(defvar S-def1
  (alwf (&& ([<=] (-V- Si) N) ([>=] (-V- Si) 0)
            ([<=] (-V- Sj) N) ([>=] (-V- Sj) 0))))



(defvar S-def2
  (alwf (&& (-> ([>] (-V- Si) 0) ([>] (-V- Sj) 0))
	    (-> ([>] (-V- Sj) 0) ([>] (-V- Si) 0)))))

(defun S-def4 (n a)
  (eval
   (list 'alwf
	   (list '->
		 `([>] (-V- Si) 0)
		 (append '(&&)
			 `(([<] (-V- Si) (-V- Sj)))
			 (loop for ind1 from 1 to (- n 1) append
			       (loop for ind2 from (+ ind1 1) to n collect
				     `(-> (&& ([=] (-V- Si) ,ind1)
					      ([=] (-V- Sj) ,ind2))
					  ([>] (-V- ,(read-from-string (format nil "~A~A" a ind1)))
					       (-V- ,(read-from-string (format nil "~A~A" a ind2))))))))))))

(defun S-def3 (n a)
  (eval
   (list 'alwf
	   (list '->
		 (append '(||)
			 (loop for ind from 1 to (- n 1) collect
			       `([>] (-V- ,(read-from-string (format nil "~A~A" a ind)))
				     (-V- ,(read-from-string (format nil "~A~A" a (+ ind 1)))))))
		 `([>] (-V- Si) 0)))))


(defun switch (n a)
  (eval
   (list 'alwf
	   (list '->
		 `([>] (-V- Si) 0)
		 (append '(&&)
			 (loop for ind1 from 1 to (- n 1) append
			       (loop for ind2 from (+ ind1 1) to n collect
				     (list '->
					   `(&& ([=] (-V- Si) ,ind1) ([=] (-V- Sj) ,ind2))
					   (append
					    `(&& ([=] (next (-V- ,(read-from-string (format nil "~A~A" a ind1))))
						      (-V- ,(read-from-string (format nil "~A~A" a ind2))))
						 ([=] (next (-V- ,(read-from-string (format nil "~A~A" a ind2))))
						      (-V- ,(read-from-string (format nil "~A~A" a ind1)))))
					    (loop for ind3 from 1 to n when (and (/= ind3 ind1) (/= ind3 ind2)) collect
						  `([=] (next (-V- ,(read-from-string (format nil "~A~A" a ind3))))
							(-V- ,(read-from-string (format nil "~A~A" a ind3))))))))))))))


(defun no-switch (n a)
  (eval
   (list 'alwf
	   (list '->
		 `([=] (-V- Si) 0)
		 (append '(&&)
			 (loop for ind from 1 to n collect
			       `([=] (next (-V- ,(read-from-string (format nil "~A~A" a ind))))
				     (-V- ,(read-from-string (format nil "~A~A" a ind))))))))))

(defun prop_wf (n a b d)
  (eval
   (list 'withinf
	 (append '(&&)
		 (loop for ind from 1 to (- n 1) collect
		       `([<=] (-V- ,(read-from-string (format nil "~A~A" a ind)))
			      (-V- ,(read-from-string (format nil "~A~A" a (+ ind 1))))))
		 (loop for ind from 1 to n collect
		       (append '(||)
			       (loop for ind2 from 1 to n collect
				     `([=] (-V- ,(read-from-string (format nil "~A~A" a ind)))
					   (-V- ,(read-from-string (format nil "~A~A" b ind2))))))))
	 d)))

(defun prop_som (n a b)
  (eval
   (list 'somf
	 (append '(&&)
		 (loop for ind from 1 to (- n 1) collect
		       `([<=] (-V- ,(read-from-string (format nil "~A~A" a ind)))
			      (-V- ,(read-from-string (format nil "~A~A" a (+ ind 1))))))
		 ;; (loop for ind from 1 to n collect
		 ;;       (append '(||)
		 ;; 	       (loop for ind1 from 1 to n append
		 ;; 		     (loop for ind2 from 1 to n collect
		 ;; 			   `([=] (-V- ,(read-from-string (format nil "~A~A" a ind1)))
		 ;; 				 (-V- ,(read-from-string (format nil "~A~A" b ind2))))))))
		 )
	 )))

(defun prop_inv (n a b)
  (eval
   (list 'alwf
	 (append '(&&)
		 (loop for ind from 1 to n collect
		       (append '(||)
			       (loop for ind2 from 1 to n collect
				     `([=] (-V- ,(read-from-string (format nil "~A~A" a ind)))
					   (-V- ,(read-from-string (format nil "~A~A" b ind2)))))))))))




(defvar syst
  (yesterday
   (&&   
    (init1 N a_name b_name)
    (init2 N a_name b_name)
    (init3 N a_name)
    (b-const N b_name)
    S-def1
    S-def2
    (S-def3 N a_name)
    (S-def4 N a_name)
    (switch N a_name)
    (no-switch N a_name)
    )))

(ae2zot:zot k
      (&&   
	    syst
	    ; (!! (prop_som N a_name b_name))
;;	    (!! (prop_wf N a_name b_name 8))
;;	    (prop_wf N a_name b_name 9)
	    (prop_som N a_name b_name)
;;	    (!! (prop_inv N a_name b_name))
	    )
      :logic :QF_UFLIA
      )

