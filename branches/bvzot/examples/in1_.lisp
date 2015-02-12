; con CLISP, si puo` usare come script:
; basta fare (load "zot") e poi
; clisp in1.lisp

(asdf:operate 'asdf:load-op 'mbezot)
;; (load "kripke")
;; (load "trio-utils")
;; (load "sat-interface")
;; (load "bezot")

(use-package :trio-utils)

(defvar p1 (alwf (somf (|| 'A 'B))))

(mbezot:zot
  10
  (&&
   ; (!! p1) ; property
   (alwp (&& 'B (!! 'A)))
   (next (alwf (&& 'A (!! 'B))))) )

