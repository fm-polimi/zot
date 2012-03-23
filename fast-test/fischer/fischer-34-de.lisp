; Fischer's protocol
; a first, simple Zot version
; MPradella, MMVII

(load "../bi.lisp")
(use-package :trio-utils)

(defconstant *procs* '(1 2 3))
(defconstant *delay* 4)

(load "fischer-de-ax.lisp")



(loop for bound in '(20) 
      do

      (format t "$ de : History generation : bound=~s~%" bound)
      (assert (funcall the-zot 
		       bound
		       (&& *sys* (alwf *fair*))
		       ))

      (format t "$ de : Safety : bound=~s~%" bound)
      (assert (not (funcall the-zot 
			    bound
			    (&& *sys* (somf (!! *property1*)))
			    )))

      )

     

  

