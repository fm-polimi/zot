; Fischer's protocol - adapted T2P version
; MPradella, MMVII

(asdf:operate 'asdf:load-op 'ezot)
(use-package :trio-utils)

(defconstant *procs*   (loop for x from 1 to 3 collect x))
(defconstant *id*      (loop for x from 0 to 3 collect x))
(defconstant *status* '(0 1 2 3))
(defconstant *delta*   4)



(defconstant *startup*
  (&&
   (-P- idd 0)
   (-A- x *procs* (-P- proc x 0))))


(defconstant *mut1*
  (&&
   (-E- x *id* (&& 
		(-P- idd x)
		(!! (-E- y *id*
			 (&& (not (equal x y)) 
			     (-P- idd y))))))
   (-A- x *procs* 
	(-E- y *status* 
	     (&& 
	      (-P- proc x y)
	      (!! (-E- z *status*
		       (&& (not (equal y z))
			   (-P- proc x z)))))))))


(defconstant *n1*
  (-A- p *procs*
       (->
	(-P- proc p 0)
	(|| 
	 (yesterday (-P- proc p 0))
	 (&& (yesterday (-P- proc p 3)) 
	     (-P- idd 0))))))

(defconstant *n2*
  (-A- p *procs*
       (-> (-P- proc p 1)
	   (||
	    (&& (yesterday (-P- proc p 0))
		(|| (past (-P- proc p 0) 2)
		    (past (-P- proc p 2) 2)))
	    (yesterday (&& (-P- idd 0)(-P- proc p 0)))
	    (yesterday (&& (-P- idd 0)(-P- proc p 2)))))))

(defconstant *n3*
  (-A- p *procs*
       (-> (-P- proc p 2)
	   (|| 
	    (yesterday (-P- proc p 2))
	    (&& (yesterday (-P- proc p 1))
		(-P- idd p))))))

(defconstant *n4*
  (-A- p *procs* 
       (-> (-P- proc p 3)
	   (||
	    (yesterday (-P- proc p 3))
	    (&& (lasted_ei (-P- proc p 2) *delta*)
		(yesterday (-P- idd p)))))))

(defconstant *v1*
  (-> (-P- idd 0)
      (||
       (yesterday (-P- idd 0))
       (-E- p *procs*
	    (&& (yesterday (-P- proc p 3))
		(-P- proc p 0))))))

(defconstant *v2*
  (-A- p *procs*
       (-> (-P- idd p)
	   (|| (yesterday (-P- idd p))
	       (&& (yesterday (-P- proc p 1))
		   (-P- proc p 2))))))

(defconstant *prop*
  (somf_i (-E- p1 *procs*
	       (-E- p2 *procs*
		    (&& (not (equal p1 p2))
			(-P- proc p1 3)
			(-P- proc p2 3))))))



(ezot:zot 20
	  (&& 
	   *startup*
	   ;*prop*
	   (alwf (&&
		  *mut1*
		  *n1* *n2* *n3* *n4*
		  *v1* *v2*
		  *prop*
		  ))))

