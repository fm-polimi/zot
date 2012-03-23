; simple examples for completeness
; mpradella MMVIII

; shift register

(asdf:operate 'asdf:load-op 'eezot)
(use-package :trio-utils)

(setf sat-interface:*zot-debug* :indeed)


(defvar delta 4)
(defvar dom0 (loop for i from 0 to delta collect i))
(defvar dom1 (loop for i from 0 to (1- delta) collect i))


(defvar in-out-op
  (list

   (<->
    (-p- shr delta)
    (-p- out))
	

   (<-> 
    (-p- in)
    (-p- shr 0))

   (-A- x dom1
	     (<-> (-p- shr x)
		  (next (-p- shr (1+ x)))))))

(defvar init
   (&& (!! (-p- in))
       (!! (-p- out))
       (-A- x dom0 (!! (-p- shr x)))))


; Eezot (con init a 0):
;    delta:  2,  3,  4
; ---------------------
; bound op:  9, 17, 33
; bound de: 10, 18, 34


; Bezot:
;    delta:  2,  3,  4
; ---------------------
; bound op: 10, 18, 34
; bound de: 10, 18, 34

(prin1 (completeness-loop
	(lambda (i)
	    (eezot:zot i  
		       init
		       :transitions in-out-op
		       :loop-free t
		       ))))
(quit)

