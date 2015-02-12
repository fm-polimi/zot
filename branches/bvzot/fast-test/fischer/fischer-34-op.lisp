; Fischer's protocol
; a first, simple Zot version
; MPradella, MMVII

(load "../bi.lisp")
(use-package :trio-utils)


(defvar *procs* '(1 2 3))
(defvar *delay* 4)

(load "fischer-op-ax.lisp")



(loop for bound in '(20) 
      do

      (format t "$ op : History generation : bound=~s~%" bound)
      (assert (funcall the-zot 
		       bound
		       (&& 
			 (yesterday *init*)
			 (alwf *fair*))
		       :transitions *sys*
		       ))

      (format t "$ op : Safety : bound=~s~%" bound)
      (assert (not (funcall the-zot 
			    bound
			    (&& 
			      (yesterday *init*)
			      (somf (!! *property1*)))
			    :transitions *sys*
			    )))

      )

     

  

