(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)


;; formula trio  in <-> Futr(out, 3)


(defconstant init
	     (yesterday 
	       (&& 
		 (!! 'in)(!! 'out)(!! 'to1)(!! 'to2))))


(defconstant trans
	     (list
	       (-> (&& (!! 'in) (!! 'out) (!! 'to1) (!! 'to2))
		   (next (||
			   (&&(!! 'in) (!! 'out) (!! 'to1) (!! 'to2))
			   (&& 'in (!! 'out) (!! 'to1) (!! 'to2)))))

	       (->(&& 'in  (!! 'out) (!! 'to1) (!! 'to2))
		 (next (||
			 (&&(!! 'in) (!! 'out) (!! 'to1)  'to2)
			 (&& 'in (!! 'out) (!! 'to1)  'to2))))

	       (->(&&(!! 'in)  'out (!! 'to1) (!! 'to2))
		 (next (||
			 (&&(!! 'in) (!! 'out) (!! 'to1) (!! 'to2))
			 (&& 'in (!! 'out) (!! 'to1) (!! 'to2)))))

	       (->(&& 'in  'out (!! 'to1) (!! 'to2))
		 (next (||
			 (&&(!! 'in) (!! 'out) (!! 'to1)  'to2)
			 (&& 'in (!! 'out) (!! 'to1)  'to2))))

	       (->(&&(!! 'in) (!! 'out)  'to1 (!! 'to2))
		 (next (||
			 (&&(!! 'in)  'out (!! 'to1) (!! 'to2))
			 (&& 'in  'out (!! 'to1) (!! 'to2)))))


	       (->(&& 'in (!! 'out)  'to1 (!! 'to2))
		 (next (||
			 (&&(!! 'in)  'out (!! 'to1)  'to2)
			 (&& 'in  'out (!! 'to1)  'to2))))

	       (->(&&(!! 'in)  'out  'to1 (!! 'to2))
		 (next (||
			 (&&(!! 'in)  'out (!! 'to1) (!! 'to2))
			 (&& 'in  'out (!! 'to1) (!! 'to2)))))

	       (->(&& 'in  'out  'to1 (!! 'to2))
		 (next (||
			 (&&(!! 'in)  'out (!! 'to1)  'to2)
			 (&& 'in  'out (!! 'to1)  'to2))))

	       (->(&&(!! 'in) (!! 'out) (!! 'to1)  'to2)
		 (next (||
			 (&&(!! 'in) (!! 'out)  'to1 (!! 'to2))
			 (&& 'in (!! 'out)  'to1 (!! 'to2)))))

	       (->(&& 'in (!! 'out) (!! 'to1)  'to2)
		 (next (||
			 (&&(!! 'in) (!! 'out)  'to1  'to2)
			 (&& 'in (!! 'out)  'to1  'to2))))

	       (->(&&(!! 'in)  'out (!! 'to1)  'to2)
		 (next (||
			 (&&(!! 'in) (!! 'out)  'to1 (!! 'to2))
			 (&& 'in (!! 'out)  'to1 (!! 'to2)))))

	       (->(&& 'in  'out (!! 'to1)  'to2)
		 (next (||
			 (&&(!! 'in) (!! 'out)  'to1  'to2)
			 (&& 'in (!! 'out)  'to1  'to2))))

	       (->(&&(!! 'in) (!! 'out)  'to1  'to2)
		 (next (||
			 (&&(!! 'in)  'out  'to1 (!! 'to2))
			 (&& 'in  'out  'to1 (!! 'to2)))))

	       (->(&& 'in (!! 'out)  'to1  'to2)
		 (next (||
			 (&&(!! 'in)  'out  'to1  'to2)
			 (&& 'in  'out  'to1  'to2))))

	       (->(&&(!! 'in)  'out  'to1  'to2)
		 (next (||
			 (&&(!! 'in)  'out  'to1 (!! 'to2))
			 (&& 'in  'out  'to1 (!! 'to2)))))

	       (->(&& 'in  'out  'to1  'to2)
		 (next (||
			 (&&(!! 'in)  'out  'to1  'to2)
			 (&& 'in  'out  'to1  'to2))))))

;(bezot:zot 
;  10 
;  init 
;  :transitions trans
;  )

(loop for k from 1 to 100 do
      (unless (bezot:zot k init :transitions trans :loop-free t)
       (format t "~%Found k = ~S~%" k)   
       (return nil)))

; Found k = 16

