; A simple counter (taken from nuSMV)

(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

(defvar y-domain (loop for i from 0 to 15 collect i))
(define-variable y y-domain)

(defvar init
  (y-is 0))

(defvar ltlspec
    (somf (|| 
	    (next (y-is 8)) 
	    (somp (-E- x y-domain (&& (< x 3) 
				      (y-is x)))))))

(defvar trans
  (list
   (case-clause
    (y-is 7)  (next (y-is 0))
    :else-clause (-A- x y-domain 
		       (-> (y-is x) 
			   (next (y-is (mod (1+ x) 16))))))))



(bezot:zot 
  18
  (&& (yesterday init) (!! ltlspec))
  ;(yesterday init)
  :transitions trans)

