; Esempio d'uso quantificazioni

(asdf:operate 'asdf:load-op 'bezot)
(use-package :trio-utils)

(defvar S1 (loop for i from 1 to 5 collect i)) 
(defvar S2 '(a b))
(defvar K1 2)

(defvar TME 5)

(defvar SPC
  `(and (somp A)
	(alwf (impl A 
		    (futr ,(exists S1 
				   #'(lambda (i) 
				       `(and ,(or (< i 3) (= i 4)) 
					     ,(forall S2
						      #'(lambda (j)
							  (pred 'P i j))))))
			  ,(+ K1 1))))))

(bezot:zot TME SPC)
