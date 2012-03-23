(load "../mono.lisp")
(use-package :trio-utils)

(load "krc-constants1.lisp")


;(load "go-item.lisp")
(load "Interlock_de.lisp")


(loop for bound in '(30 60 90)
      do
      
     (format t "$ krc interlock alone de : bound=~s~%" bound)      
     (funcall the-zot
	      bound
	      (alw *Interlock*)))


