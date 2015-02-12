(asdf:operate 'asdf:load-op 'ezot)

(use-package  :trio-utils)
(defvar TME 20)


(defconstant   dMax 6)
(defconstant   dm 4)

(defvar k6  (-> (-P- EnterI)
                (past (withinp_ii (-P- EnterR) (- dMax dm))
                        dm)))
;se c'e' EnterI allora fra dm=4 e dmax=6 istanti prima c'era EnterR

;EnterR e' in ist 11, ma non in 12; EnterI e' a 16

(defvar nonvuoto  (&& 	
		        (futr (-P- EnterR) 10) 
			(futr (!! (-P- EnterR)) 11) 
			(futr (-P- EnterI) 15)
			(futr (-P- EnterI) 19)
		 )
)

(defvar the-system      (&& 	nonvuoto
                            (alw 
				(&&	
                                	k6
	                       	)       
			     )
			)
)

(princ k6)
(princ nonvuoto)

(setq ezot::*zot-debug* t)
;(setq ezot::*fixed-delta* nil)

(ezot:zot
  TME
   nonvuoto
  )

