(asdf:operate 'asdf:load-op 'ap-zot)

;change to 'bezot to use a bi-infinite time domain
(asdf:operate 'asdf:load-op 'ezot)

(use-package :trio-utils)
(use-package :ap-zot)


; this is the time bound for zot
(defvar bound 20)



;;;;;;;;;;;;;;;;;;;;;;
;;; COFFEE MACHINE ;;;
;;;;;;;;;;;;;;;;;;;;;;


; for details, see:
; Furia, Pradella, Rossi: ""
; Technical report 2007.xx
; Dipartimento di Elettronica e Informazione, Politecnico di Milano, April 2007


;this is the parameter \nu 
(defvar nu 1)

; these two constants are used to pick the delta sampling interval:
; delta := (h-th divisor of r_\phi) / (k*R_\phi)
(defvar h 1)
(defvar k 1)


(defvar T1 4)
(defvar T2 4)
(defvar T3 4)


;; AXIOMS (first group)

; when nu is added on the left bound and subtracted on the right bound,
; we account for the fact that we are actually dealing with open intervals over dense time

(defvar delta_T1_def_2 `(impl prepare_cup (diamond-p ,nu ,(- T1 nu) press_button)))
(defvar delta_T2_def_2 `(impl start_pouring (diamond-p ,nu ,(- T2 nu) prepare_cup)))
(defvar delta_T3_def_2 `(impl end_pouring (and (box-p ,T3 ,T3 start_pouring) (box-p 0 ,(- T3 nu) pouring))))
(defvar key_enables_button `(impl press_button key_inserted))

;; THEOREM 1
(defvar time_theorem `(impl end_pouring (diamond-p ,T3 ,(+ T1 T2 T3) key_inserted)))


; putting the formulas in normal form
(setf delta_T1_def_2 (normalize (basicize delta_T1_def_2)))
(setf delta_T2_def_2 (normalize (basicize delta_T2_def_2)))
(setf delta_T3_def_2 (normalize (basicize delta_T3_def_2)))
(setf key_enables_button (normalize (basicize key_enables_button)))
(setf time_theorem (normalize (basicize time_theorem)))



;; AXIOMS (second group)

(defvar pouring_def_1_a `(impl (and (diamond ,nu ,nu pouring) (not pouring)) start_pouring))
(defvar pouring_def_1_b `(impl start_pouring (and (box ,nu ,nu pouring) (not pouring))))
(defvar pouring_start_end `(impl (box ,nu ,(- T3 nu) pouring) (and start_pouring (box ,T3 ,T3 end_pouring))))
(defvar pour_only_new_coffee `(impl start_pouring (and cup_present (not coffee_ready))))
(defvar cup_present_def_2_a `(impl (and (diamond ,nu ,nu (not cup_present)) cup_present) get_cup))
(defvar cup_present_def_2_b `(impl get_cup (and (box ,nu ,nu (not cup_present)) cup_present)))
(defvar get_if_open `(impl get_cup coffee_ready))
(defvar delta_T3_def_1 `(impl start_pouring (and (box ,T3 ,T3 end_pouring) (box ,nu ,T3 pouring))))

;; THEOREM 2
(defvar pour_theorem `(impl pouring cup_present))

; putting the formulas in normal form
(setf pouring_def_1_a (normalize (basicize pouring_def_1_a)))
(setf pouring_def_1_b (normalize (basicize pouring_def_1_b)))
(setf pouring_start_end (normalize (basicize pouring_start_end)))
(setf pour_only_new_coffee (normalize (basicize pour_only_new_coffee)))
(setf cup_present_def_2_a (normalize (basicize cup_present_def_2_a)))
(setf cup_present_def_2_b (normalize (basicize cup_present_def_2_b)))
(setf get_if_open (normalize (basicize get_if_open)))
(setf delta_T3_def_1 (normalize (basicize delta_T3_def_1)))
(setf pour_theorem (normalize (basicize pour_theorem)))


; computing the granularity (r_\phi, R_\phi)
(defvar rho (compute-granularity `(and delta_T1_def_2 delta_T2_def_2 delta_T3_def_2 key_enables_button pouring_def_1_a pouring_def_1_b pouring_start_end pour_only_new_coffee cup_present_def_2_a cup_present_def_2_b get_if_open delta_T3_def_1 time_theorem pour_theorem)))

; computing delta
(defvar delta (/ (nth-divisor h (car rho)) (* k (cadr rho))))


; axioms is the list of all axioms
(defvar axioms (list delta_T1_def_2 delta_T2_def_2 delta_T3_def_2 key_enables_button pouring_def_1_a pouring_def_1_b pouring_start_end pour_only_new_coffee cup_present_def_2_a cup_present_def_2_b get_if_open delta_T3_def_1))

; over-approximation of axioms
(defvar axioms-o (mapcar #'over-approximation axioms (make-list (length axioms) :initial-element delta)))
; under-approximation of axioms
(defvar axioms-u (mapcar #'under-approximation axioms (make-list (length axioms) :initial-element delta)))

; theorems and their approximations
(defvar pour_theorem-o (over-approximation pour_theorem delta))
(defvar pour_theorem-u (under-approximation pour_theorem delta))
(defvar time_theorem-o (over-approximation time_theorem delta))
(defvar time_theorem-u (under-approximation time_theorem delta))


; building the conjunction: /\_i Alw(o_i)
(setf axioms-o (cons 'and (mapcar #'cons (make-list (length axioms-o) :initial-element 'alw) (mapcar #'list axioms-o))))
; building the conjunction: /\_i Alw(\omega_i)
(setf axioms-u (cons 'and (mapcar #'cons (make-list (length axioms-u) :initial-element 'alw) (mapcar #'list axioms-u))))


; since theorem 1 is about the past, we must shift it far enough into the future
; to avoid border effects
(setf time_theorem-o `(alw (futr ,time_theorem-o ,(+ T1 T2 T3 1))))
(setf time_theorem-u `(alw (futr ,time_theorem-u ,(+ T1 T2 T3 1))))

;since theorem 2 requires reasoning about the past, we must shift it far enough
; into the futureto avoid border effects
(setf pour_theorem-o `(alw (futr ,pour_theorem-o ,(+ T3 1))))
(setf pour_theorem-u `(alw (futr ,pour_theorem-u ,(+ T3 1))))

; the phi+'s and phi-'s are negated so that we check their validity by checking the satisfiability of the negation
(defvar time_phi+ `(not (impl ,axioms-u ,time_theorem-o)))
(defvar time_phi- `(not (impl ,axioms-o ,time_theorem-u)))
(defvar pour_phi+ `(not (impl ,axioms-u ,pour_theorem-o)))
(defvar pour_phi- `(not (impl ,axioms-o ,pour_theorem-u)))

; check the completeness of under- and over- approximations
; of axioms with respect to the chosen bound
(ezot::zot bound axioms-u :loop-free t)
(ezot::zot bound axioms-o :loop-free t)

; check the validity of the phi+'s and phi-'s
(ezot::zot bound `(next ,time_phi+))
(ezot::zot bound `(next ,time_phi-))
(ezot::zot bound `(next ,pour_phi+))
(ezot::zot bound `(next ,pour_phi-))
