; PAX formula
; MPradella, MMVII


(asdf:operate 'asdf:load-op 'ezot)
(use-package :trio-utils)


(defun GF (fma)
  (alwf (somf fma)))

(defconstant *pax*
  (->
   (&&
    (-> (GF 'p0)(GF 'p1))
    (-> (GF 'p2)(GF 'p0))
    (-> (GF 'p3)(GF 'p2))
    (-> (GF 'p4)(GF 'p2))
    (-> (GF 'p5)(GF 'p3))
    (-> (GF 'p6)(GF (|| 'p5 'p4)))
    (-> (GF 'p7)(GF 'p6))
    (-> (GF 'p1)(GF 'p7)))
   (GF 'p8)))



;; (format t "%~Bound: %s%~"
;; 	(loop for i from 100 to 1000 do
;; 	     (unless (ezot:zot i (yesterday *pax*) :loop-free t)
;; 	       (return i))))

(ezot:zot 20 (yesterday *pax*) 
	  ;:loop-free t
	  )