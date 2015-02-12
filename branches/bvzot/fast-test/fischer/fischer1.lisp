; Fischer's protocol
; a first, simple Zot version
; MPradella, MMVII


(asdf:operate 'asdf:load-op 'ezot)
(use-package :trio-utils)

; (setq sat-interface:*zot-solver* :zchaff)

(defconstant *procs* '(1 2))
(defconstant *delay* 3)

(load "fischer-de-ax.lisp")



(ezot:zot 
 15
 *sys*
 ;:loop-free t
 )
(quit)


(format t "~%Found: ~S~%"
	(loop for bound from 2 do
	     (let ((res 
		    (ezot:zot 
		     bound
		     *sys*
		     :loop-free t)))
	       (unless res
		 (return bound)))))
  
  

