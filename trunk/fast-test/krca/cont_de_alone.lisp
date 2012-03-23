(load "../mono.lisp")
(use-package :trio-utils)

(load "krc-constants1.lisp")


(load "go-item.lisp")
(load "Controller_de.lisp")


(loop for bound in '(30 60 90)
      do
      
     (format t "$ krc controller alone de : bound=~s~%" bound)      
     (funcall the-zot
	      bound
	      (alw *Controller*)))


