; Fischer's protocol
; a first, simple Zot version
; MPradella, MMVII

(load "../bi.lisp")
(use-package :trio-utils)

; (setq sat-interface:*zot-solver* :zchaff)

(defconstant *procs* '(1 2 3 4))
(defconstant *delay* 5)

(load "fischer-de-ax.lisp")



(loop for bound in '(30 60 90 ) 
   do
     
     (format t "$ de : History generation : bound=~s~%" bound)
     (funcall the-zot 
      bound
      (&& *sys* (alwf *fair*))
      )

     (format t "$ de : Safety : bound=~s~%" bound)
     (funcall the-zot 
      bound
      (&& *sys* (somf (!! *property1*)))
      )

     )

     

  

