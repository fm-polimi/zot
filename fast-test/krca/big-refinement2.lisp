; Kernel railroad crossing problem  
; refinement "one-shot"
;

(load "../mono.lisp")
(use-package :trio-utils)


(load "krc-constants2.lisp")

(load "go-item.lisp")
(load "TrainTrack_MONO.lisp")
(load "Bar_de.lisp")

;; -- descriptive ---
(load "Interlock_de.lisp")
(load "Controller_de.lisp")

;; -- operational ---
(load "Interlock_op_MONO_trans.lisp")
(load "Controller_op_MONO_trans.lisp")

(defconstant Dpre  (+  (- dMax dm) gamma  1) )
(defconstant Dpost  (+  gamma 1 ) )



(loop for bound in '(30 60 90)
      do

      (format t "$ krc : big refinement : bound=~s~%" bound)
      (funcall the-zot
	       bound
	       (&&
		 *interlock-init* 
		 *Controller-op-init*
		 (alw *TrainTrack*)
		 (alw *Bar*)
		 (!! (alw (&& *Controller* *Interlock*)))	
		 )

	       :transitions 
	       (append *Interlock-op* *Controller-op*)
	       )
      )
