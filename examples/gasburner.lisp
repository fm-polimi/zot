(asdf:operate 'asdf:load-op 'ap-zot)
(asdf:operate 'asdf:load-op 'ezot)

(use-package :trio-utils)
(use-package :ap-zot)

(setf ezot:*FIXED-DELTA* 0)

(defvar Ml 3)
(defvar ms 5)
(defvar ll 1)
(defvar ss 8)

(defvar k 1)

(defvar ax1 `(diamond 0 ,Ml (not L)))

(defvar ax2 `(impl (and L (trigger-b-inf 0 (not L) nil))
						 (box-p 0 ,ms (not L))))

(defvar th `(not 
				 (and
				  (box 0 ,ll L)
				  (box ,ll ,(+ ll ss) (not L))
				  (diamond ,(+ ll ss) ,(+ ll ss) L))))

(setf ax1 (normalize (basicize ax1)))
(setf ax2 (normalize (basicize ax2)))
(setf th (normalize (basicize th)))

; fix to replace since-b-^-inf with since-b-inf (over dense time they're logically equivalent)
(setf ax2 `(OR (OR (NOT L) (SINCE-B-INF 0 L T)) (TRIGGER-B 0 ,ms NIL (NOT L))))

(defvar rho (compute-granularity (and ax1 ax2 th)))
; rho = 1 in this simple example

(defvar delta (/ 1 (* k (car rho))))

(defvar ax1-o (over-approximation ax1 delta))
(defvar ax2-o (over-approximation ax2 delta))
(defvar th-o (over-approximation th delta))

(defvar ax1-u (under-approximation ax1 delta))
(defvar ax2-u (under-approximation ax2 delta))
(defvar th-u (under-approximation th delta))

;(print ax1-o)
;(print ax2-o)
;(print th-o)

;(print ax2-o)
; fix to add the correct meaning of (trigger l=-1 u ...)
;(setf ax2-o `(OR (OR (NOT L) (SINCE-B-INF 1 L T)) (AND (PAST (NOT L) 1) (TRIGGER-B 0 ,(+(/ ms delta) 1) NIL (NOT L)))))

(defvar phi+ `(not (impl
 						  (and (alw ,ax1-u) (alw ,ax2-u))
 						  (alw ,th-o))))

(defvar phi- `(not (impl
		    (and (alw ,ax1-o) (alw ,ax2-o))
		    (alw ,th-u))))

;(print delta)
;(print ax2-u)
(ezot:zot 20 `(next (alw (NOT L))))
;(ezot:zot 30 phi-)
