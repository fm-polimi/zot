(asdf:operate 'asdf:load-op 'ezot)
(asdf:operate 'asdf:load-op 'ta-zot)

(use-package :trio-utils)
(use-package :ap-zot)
(use-package :ta-zot)


(defvar trans-prot (make-timed-automaton
						  :name     'trans-prot-aut
						  :states   '(idle try1 s1 ok1 ko1 tout1 s2 ok2 ko2 tout2)
						  :alphabet '(alfa)
						  :clocks   '(glob_tm send_tm ack_tm)
                    :initial-states '(idle)))

(defvar delta 1)
(defvar T1 (* 3 delta))
(defvar T2 (* 2 T1))
(defvar T3 (* 3 T2))
(defvar nu 1) ;tolerance
(defvar bound (* 5 T2))

(defvar n-prop nil)


;;; TRANSITIONS of the TA
(add-trans trans-prot 'idle  'try1  '(glob_tm send_tm) nil)
(add-trans trans-prot 'try1  's1    '(ack_tm)  `(< send_tm ,T1))
(add-trans trans-prot 's1    'ok1   nil        `(< ack_tm ,T2))
(add-trans trans-prot 's1    'ko1   '(send_tm) `(< ack_tm ,T2))
                                               ; ack_tm = T2 is replaced with T2 <= ack_tm < T2+nu
(add-trans trans-prot 's1    'tout1 '(send_tm) `(and (>= ack_tm ,T2) (< ack_tm ,(+ T2 nu))))
(add-trans trans-prot 'ko1   's2    '(ack_tm)  `(< send_tm ,T1))
(add-trans trans-prot 'tout1 's2    '(ack_tm)  `(< send_tm ,T1))
(add-trans trans-prot 's2    'ok2   nil        `(< ack_tm ,T2))
(add-trans trans-prot 's2    'ko2   nil        `(< ack_tm ,T2))
                                               ; ack_tm = T2 is replaced with T2 <= ack_tm < T2+nu
(add-trans trans-prot 's2    'tout2 nil        `(and (>= ack_tm ,T2) (< ack_tm ,(+ T2 nu))))
(add-trans trans-prot 'ok1   'idle  nil        `(< glob_tm ,T3))
(add-trans trans-prot 'ok2   'idle  nil        `(< glob_tm ,T3))
(add-trans trans-prot 'ko2   'idle  nil        `(< glob_tm ,T3))
(add-trans trans-prot 'tout2 'idle  nil        `(< glob_tm ,T3))

;; in this example, states are labeled trivially
(add-label trans-prot 'idle  '(alfa))
(add-label trans-prot 'try1  '(alfa))
(add-label trans-prot 's1    '(alfa))
(add-label trans-prot 'ok1   '(alfa))
(add-label trans-prot 'ko1   '(alfa))
(add-label trans-prot 'tout1 '(alfa))
(add-label trans-prot 's2    '(alfa))
(add-label trans-prot 'ok2   '(alfa))
(add-label trans-prot 'ko2   '(alfa))
(add-label trans-prot 'tout2 '(alfa))

;; initialization
(initialize-timed-automata (list trans-prot))



(defvar ta-axioms-U nil)
(defvar ta-axioms-O nil)

(defvar ta-theorems nil)
(defvar ta-theorems-U nil)
(defvar ta-theorems-O nil)

(defvar phi+es nil)
(defvar phi-es nil)



;; build axiom list for under-approximation
(setf ta-axioms-U (timed-automaton-under-formula trans-prot delta))

;; build axiom list for over-approximation
(setf ta-axioms-O (timed-automaton-under-formula trans-prot delta))



;;; PROPERTIES of the TA

;; theorem 1
; if there's a positive ack, we'll have afterward a positive end (i.e., without end_send_ko in between)
(defvar ok_ends_ok-theorem
  (-> (|| (st= 'trans-prot-aut 'ok1) (st= 'trans-prot-aut 'ok2))
		(until-b-inf 0 (!! (|| (st= 'trans-prot-aut 'ko1) (st= 'trans-prot-aut 'ko2))) (st= 'trans-prot-aut 'idle))))

;; FALSE theorem 2
; if there's a negative ack, we'll have afterward a negative end (i.e., without end_send_ok in between)
(defvar ko_ends_ko-theorem
  (-> (|| (st= 'trans-prot-aut 'ko1) (st= 'trans-prot-aut 'ko2))
		(until-b-inf 0 (!! (|| (st= 'trans-prot-aut 'ok1) (st= 'trans-prot-aut 'ok2))) (st= 'trans-prot-aut 'idle))))

;; theorem 3
; a full round ends within T3 time units
(defvar full_round-theorem
  (-> (st= 'trans-prot-aut 'try1) (diamond 0 T3 (st= 'trans-prot-aut 'idle))))

;; theorem 4
; a start_send occurred no more than T1+T2+nu+T1 before every send
(defvar send_initiating_event-theorem
  (-> (st= 'trans-prot-aut 's1) (diamond-p 0 (+ T1 T2 nu T1) (st= 'trans-prot-aut 'try1))))

;; theorem 5
; after a positive ack, the process ends within (a fortiori) T3 time units
(defvar ack_and_end-theorem
  (-> (st= 'trans-prot-aut 'ok1)
		(until-b 0 T3 (!! (|| (st= 'trans-prot-aut 'ko1) (st= 'trans-prot-aut 'ko2))) (st= 'trans-prot-aut 'idle))))


;; pack theorems together and normalize+basicize them
(setf ta-theorems (list ok_ends_ok-theorem ko_ends_ko-theorem full_round-theorem send_initiating_event-theorem
								  ack_and_end-theorem))
(setf ta-theorems (mapcar #'normalize (mapcar #'basicize ta-theorems)))

;; compute under-approximations of theorems
(setf ta-theorems-U (mapcar #'under-approximation ta-theorems (make-list (length ta-theorems) :initial-element delta)))
(setf ta-theorems-U (mapcar #'cons (make-list (length ta-theorems-U) :initial-element 'alwf)
									 (mapcar #'list ta-theorems-U)))

;; compute over-approximations of theorems
(setf ta-theorems-O (mapcar #'over-approximation ta-theorems (make-list (length ta-theorems) :initial-element delta)))
(setf ta-theorems-O (mapcar #'cons (make-list (length ta-theorems-O) :initial-element 'alwf)
									 (mapcar #'list ta-theorems-O)))
; note that we don't want the leading 'and', as we analyze every theorem in isolation


;; prepare the set of phi+ formulas to be checked
(setf phi+es (mapcar #'cons (make-list (length ta-theorems-O) :initial-element 'not)
							  (mapcar #'list (mapcar #'cons (make-list (length ta-theorems-O) :initial-element 'impl)
															 (mapcar #'cons (make-list (length ta-theorems-O)
																								:initial-element ta-axioms-U)
																		(mapcar #'list ta-theorems-O))))))
; now the n-th element of phi+es is phi+ for the n-th theorem in ta-theorems

;; prepare the set of phi- formulas to be checked
(setf phi-es (mapcar #'cons (make-list (length ta-theorems-U) :initial-element 'not)
							  (mapcar #'list (mapcar #'cons (make-list (length ta-theorems-U) :initial-element 'impl)
															 (mapcar #'cons (make-list (length ta-theorems-U)
																								:initial-element ta-axioms-O)
																		(mapcar #'list ta-theorems-U))))))
; now the n-th element of phi-es is phi- for the n-th theorem in ta-theorems



(format t "~%--- SAT of AXIOMS-U ---~%")
;		(print ta-axioms-U)
(ezot::zot bound ta-axioms-U)

(format t "~%--- SAT of AXIOMS-O ---~%")
;		(print ta-axioms-O)
(ezot::zot bound ta-axioms-O)

(loop for n-prop in '(1 2 3 4 5) do
		(format t "~%--- PROPERTY #~s: PHI+ ---~%" n-prop)
;		(print (nth (1- n-prop) phi+es))
		(ezot::zot bound (nth (1- n-prop) phi+es)) ; n-th counts from 0
		(format t "~%--- PROPERTY #~s: PHI- ---~%" n-prop)
;		(print (nth (1- n-prop) phi-es))
		(ezot::zot bound (nth (1- n-prop) phi-es)) ; n-th counts from 0
)
