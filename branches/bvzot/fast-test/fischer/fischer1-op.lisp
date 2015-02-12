; Fischer's protocol
; an operational version
; MPradella, MMVIII

; note: delay must be 1+ descriptive version

(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

(setf sat-interface:*zot-solver* :miraxt)
(setf sat-interface:*n-threads* 3)

(defconstant *procs* '(1 2))
(defconstant *delay* 4)

(load "fischer-op-ax.lisp")


#|
(bezot:zot 
 15
 (&& (yesterday *init*)
     ;(som (!! *property1*))
     )
 :transitions *sys*
 )

(quit)
|#

; completeness
; |*procs*| = 2, delay=3: k=15
; |*procs*| = 2, delay=4: k=18 (total time: 28s)
 
(format t "~%Found: ~S~%"
	(loop for bound from 2 do
	     (let ((res 
		    (bezot:zot 
		     bound
		     (yesterday *init*)
		     :transitions *sys*
		     :loop-free t
		     )))
	       (unless res
		 (return bound)))))