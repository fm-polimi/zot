; Fischer's protocol
; a first, simple Zot version
; MPradella, MMVII

(load "../bi.lisp")
(use-package :trio-utils)

; (setq sat-interface:*zot-solver* :zchaff)

(defvar *procs* '(1 2 3 4))
(defvar *delay* 5)

(load "fischer-op-ax.lisp")



(loop for bound in '(30 60 90 ) 
   do
     
     (format t "$ op : History generation : bound=~s~%" bound)
     (funcall the-zot 
      bound
      (&& 
       (yesterday *init*)
       (alwf *fair*))
      :transitions *sys*
      )

     (format t "$ op : Safety : bound=~s~%" bound)
     (funcall the-zot 
      bound
      (&& 
       (yesterday *init*)
       (somf (!! *property1*)))
      :transitions *sys*
      )

     )

     

  

