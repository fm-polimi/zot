(asdf:operate 'asdf:load-op 'ezot)
(asdf:operate 'asdf:load-op 'ta-zot)

(use-package :trio-utils)
(use-package :ta-zot)
(use-package :ap-zot)



(defvar trans-prot nil)

(defvar delta 1)
(defvar T1 1)
(defvar T2 1)
(defvar T3 1)
(defvar nu 1) ;tolerance
(defvar bound 1)

(defvar ta-axioms-U nil)
(defvar ta-axioms-O nil)

(defvar ok_ends_ok-theorem nil)
(defvar ko_ends_ko-theorem nil)
(defvar full_round-theorem nil)
(defvar send_initiating_event-theorem nil)
(defvar ack_and_end-theorem nil)
(defvar ack_and_end_2-theorem nil)
(defvar ta-theorems nil)
(defvar ta-theorems-U nil)
(defvar ta-theorems-O nil)

(defvar phi+es nil)
(defvar phi-es nil)


(defconstant values (list  ;T1           T2 (kT1)  T3 (kT2)  bound (kT2)
							(list (* 4 delta)   2         3         5          )
;; 							(list (* 5 delta) (* 9 delta)  1         4         7          )
;; 							(list (* 5 delta) (* 15 delta) 4/3       5         10         )
;; 							(list (* 5 delta) (* 20 delta) 3/2       6         10         )
							))

(defvar ntest 0)

(loop for cv in values do

		(setf ntest (1+ ntest))
		(setf T1    (nth 0 cv))
		(setf T2    (* (nth 1 cv) T1))
		(setf T3    (* (nth 2 cv) T2))
		(setf bound (* (nth 3 cv) T2))



		(format t "~%****************~%*** TEST # ~s ***~%****************~%  T1: ~s~%  T2: ~s~%  T3: ~s~%  time bound: ~s~%"
				  ntest T1 T2 T3 bound)

		(load "trans_prot_definitions.lisp")

		(format t "~%--- SAT of AXIOMS-U ---~%")
;		(print ta-axioms-U)
		(time (ezot::zot bound ta-axioms-U))

		(format t "~%--- SAT of AXIOMS-O ---~%")
;		(print ta-axioms-O)
		(time (ezot::zot bound ta-axioms-O))

		(loop for n-prop in '(1 2 3 4 5 6) do
				(format t "~%--- PROPERTY #~s: PHI+ ---~%" n-prop)
;				(print (nth (1- n-prop) phi+es))
				(time (ezot::zot bound (nth (1- n-prop) phi+es))) ; n-th counts from 0
				(format t "~%--- PROPERTY #~s: PHI- ---~%" n-prop)
;				(print (nth (1- n-prop) phi-es))
				(time (ezot::zot bound (nth (1- n-prop) phi-es))) ; n-th counts from 0
				)

)
