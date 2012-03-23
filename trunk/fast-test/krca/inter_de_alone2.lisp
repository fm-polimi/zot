(load "../mono.lisp")
(use-package :trio-utils)

(load "krc-constants2.lisp")


(load "Interlock_de.lisp")


(loop for bound in '(30 60 90)
      do
      
     (format t "$ krc interlock alone de : bound=~s~%" bound)      
     (funcall the-zot
	      bound
	      (alw *Interlock*)))


