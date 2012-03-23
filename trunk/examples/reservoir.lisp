(asdf:operate 'asdf:load-op 'ap-zot)

;change to 'bezot to use a bi-infinite time domain
(asdf:operate 'asdf:load-op 'ezot)

(use-package :trio-utils)
(use-package :ap-zot)


; this is the time bound for zot
(defvar bound 10)



;;;;;;;;;;;;;;;;;;;;;;;;
;;; RESERVOIR SYSTEM ;;;
;;;;;;;;;;;;;;;;;;;;;;;;



;this is the parameter \nu 
(defvar nu 1)

; these two constants are used to pick the delta sampling interval:
; delta := (h-th divisor of r_\phi) / (k*R_\phi)
(defvar h 1)
(defvar k 1)



;; AXIOMS

; overL is the predicate: l >= min
; overT is the predicate: l >= thres

(defvar lb1 `(impl
				  (and (box 0 ,nu F) overL)
				  (box ,nu ,nu overL)))

(defvar lb2 `(impl
				  overT
				  (box ,nu ,nu overL)))

(defvar lb3 `(impl
				  (and (box 0 ,nu (and (not F) (not L))) overL)
				  (box ,nu ,nu overL)))

(defvar trans `(impl overT overL))

(defvar fb `(impl (not overT) F))


;; THEOREM
(defvar invariance `(impl overT (box-inf ,nu overL)))



; putting the formulas in normal form
(setf lb1 (normalize (basicize lb1)))
(setf lb2 (normalize (basicize lb2)))
(setf lb3 (normalize (basicize lb3)))
(setf trans (normalize (basicize trans)))
(setf fb (normalize (basicize fb)))
(setf invariance (normalize (basicize invariance)))

; computing the granularity (r_\phi, R_\phi)
(defvar rho (compute-granularity `(and ,lb1 ,lb2 ,lb3 ,trans ,fb ,invariance)))

; computing delta
(defvar delta (/ (nth-divisor h (car rho)) (* k (cadr rho))))

; axioms is the list of all axioms
(defvar axioms (list lb1 lb2 lb3 trans fb))
; theorem is the (single) theorem
(defvar theorem invariance)

; over-approximation of axioms
(defvar axioms-o (mapcar #'over-approximation axioms (make-list (length axioms) :initial-element delta)))
; under-approximation of axioms
(defvar axioms-u (mapcar #'under-approximation axioms (make-list (length axioms) :initial-element delta)))

; over-approximation of theorem
(defvar theorem-o (over-approximation theorem delta))
; under-approximation of theorem
(defvar theorem-u (under-approximation theorem delta))

; building the conjunction: /\_i Alw(o_i)
(setf axioms-o (cons 'and (mapcar #'cons (make-list (length axioms) :initial-element 'alw) (mapcar #'list axioms-o))))
; building the conjunction: /\_i Alw(\omega_i)
(setf axioms-u (cons 'and (mapcar #'cons (make-list (length axioms) :initial-element 'alw) (mapcar #'list axioms-u))))
; building Alw(O)
(setf theorem-o `(alw ,theorem-o))
; building Alw(\Omega)
(setf theorem-u `(alw ,theorem-u))

; phi+ and phi- are negated so that we check their validity by checking the satisfiability of the negation
(defvar phi+ `(not (impl ,axioms-u ,theorem-o)))
(defvar phi- `(not (impl ,axioms-o ,theorem-u)))


; check the completeness of under- and over- approximations of axioms
; with respect to the chosen bound
(ezot::zot bound axioms-u :loop-free t)
(ezot::zot bound axioms-o :loop-free t)

; check the validity of phi+ and phi-
(ezot::zot bound `(next ,phi+))
(ezot::zot bound `(next ,phi-))

