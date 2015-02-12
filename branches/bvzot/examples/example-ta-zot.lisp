; Simple Ta-Zot usage example
(asdf:operate 'asdf:load-op 'ta-zot)

(use-package :trio-utils)
(use-package :ap-zot)
(use-package :ta-zot)


(defvar my-auto (make-timed-automaton
		 :name     'pippo
		 :states   '(q0 q1 q2)
		 :initial-states '(q0)
		 :alphabet '(a b c)
		 :clocks   '(c1 c2)))

(add-trans my-auto 'q0 'q1 '(c1) '(>= c2 2))
(add-trans my-auto 'q1 'q2 '(c1 c2) nil)
(add-trans my-auto 'q2 'q1 nil '(< c2 1))

(add-label my-auto 'q0 '(a b))
(add-label my-auto 'q1 '(b))
(add-label my-auto 'q2 '(a))


(defvar my-auto1 (make-timed-automaton
		 :name     'pluto
		 :states   '(q0 q1 q2)
		 :initial-states '(q0)
		 :alphabet '(a b c)
		 :clocks   '(c1 c2)))

(add-trans my-auto1 'q0 'q1 '(c1) '(>= c2 2))
(add-trans my-auto1 'q1 'q2 '(c1 c2) nil)
(add-trans my-auto1 'q2 'q1 nil '(< c2 1))

(add-label my-auto1 'q0 '(a b))
(add-label my-auto1 'q1 '(b))
(add-label my-auto1 'q2 '(a))

; TA-dependent definitions:

(initialize-timed-automata (list my-auto my-auto1))

(defconstant delta 3)


(print "formulae-U")
(print (timed-automata-under-formula delta))

(print "----------")

(print "formulae-O")
(print (timed-automata-over-formula delta))

(print "----------")
