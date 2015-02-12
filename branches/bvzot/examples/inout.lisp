; simple examples for completeness
; mpradella MMVIII

; a shift register

(asdf:operate 'asdf:load-op 'eezot)
(use-package :trio-utils)

(setf sat-interface:*zot-debug* :indeed)


(defvar delta 4)

(defvar in-out
  (alw (<-> 
	(-P- in)
	(futr (-P- out) delta))))

(defvar init
  (&& (!! (-p- in))
      (!! (-p- out))))

(prin1 
 (completeness-loop
  (lambda (i)
    (eezot:zot i 
	       (&& init
		   in-out)
	       :loop-free t
	       ))))

(quit)

