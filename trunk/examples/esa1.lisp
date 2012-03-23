(asdf:operate 'asdf:load-op 'ap-zot)
(asdf:operate 'asdf:load-op 'ezot)

(use-package :trio-utils)
(use-package :ap-zot)

(defvar esempio `(not 
		  (and 
		   (box 0 5 L)
		   (box 5 ,(+ 5 2) (not L))
		   (diamond ,(+ 5 2) ,(+ 5 2) L))))

(setf esempio (normalize (basicize esempio)))

(defvar over-esempio (over-approximation esempio (/ 1 (compute-granularity esempio))))
(defvar under-esempio (under-approximation esempio (/ 1 (compute-granularity esempio))))

(print under-esempio)

(ezot:zot 10  `(alw (impl ,under-esempio ,over-esempio)))
