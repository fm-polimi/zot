(setf trans-prot (make-timed-automaton
						  :states   '(idle try1 s1 ok1 ko1 tout1 s2 ok2 ko2 tout2)
						  :alphabet '(alfa)
						  :clocks   '(glob_tm send_tm ack_tm)
                    :initial-states '(idle)))

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

(initialize-timed-automata (list trans-prot))



;; build axiom list for under-approximation
(setf ta-axioms-U (timed-automaton-under-formula trans-prot delta))

;; build axiom list for over-approximation
(setf ta-axioms-O (timed-automaton-under-formula trans-prot delta))



;;; PROPERTIES of the TA

;; theorem 1
; if there's a positive ack, we'll have afterward a positive end (i.e., without end_send_ko in between)
(setf ok_ends_ok-theorem `(impl (or st_ok1 st_ok2) (until-b-inf ,0 (not (or st_ko1 st_ko2)) st_idle)))

;; FALSE theorem 2
; if there's a negative ack, we'll have afterward a negative end (i.e., without end_send_ok in between)
(setf ko_ends_ko-theorem `(impl (or st_ko1 st_ko2) (until-b-inf ,0 (not (or st_ok1 st_ok2)) st_idle)))

;; theorem 3
; a full round ends within T3 time units
(setf full_round-theorem `(impl st_try1 (diamond ,0 ,T3 st_idle)))

;; theorem 4
; a start_send occurred no more than T1+T2+nu+T1 before every send
(setf send_initiating_event-theorem `(impl st_s1 (diamond-p ,0 ,(+ T1 T2 nu T1) st_try1)))

;; theorems 5 and 6
; after a positive ack, the process ends within (a fortiori) T3 time units
(setf ack_and_end-theorem `(impl st_try1 (diamond ,0 ,T3 st_idle)))
(setf ack_and_end_2-theorem `(impl st_ok1 (until-b ,0 ,T3 (not (or st_ko1 st_ko2)) st_idle)))


(setf ta-theorems (list ok_ends_ok-theorem ko_ends_ko-theorem full_round-theorem send_initiating_event-theorem
								  ack_and_end-theorem ack_and_end_2-theorem))
(setf ta-theorems (mapcar #'normalize (mapcar #'basicize ta-theorems)))


(setf ta-theorems-U (mapcar #'under-approximation ta-theorems (make-list (length ta-theorems) :initial-element delta)))
(setf ta-theorems-U (mapcar #'cons (make-list (length ta-theorems-U) :initial-element 'alwf)
									 (mapcar #'list ta-theorems-U)))

(setf ta-theorems-O (mapcar #'over-approximation ta-theorems (make-list (length ta-theorems) :initial-element delta)))
(setf ta-theorems-O (mapcar #'cons (make-list (length ta-theorems-O) :initial-element 'alwf)
									 (mapcar #'list ta-theorems-O)))
; note that we don't want the leading 'and', as we analyze every theorem in isolation


(setf phi+es (mapcar #'cons (make-list (length ta-theorems-O) :initial-element 'not)
							  (mapcar #'list (mapcar #'cons (make-list (length ta-theorems-O) :initial-element 'impl)
															 (mapcar #'cons (make-list (length ta-theorems-O)
																								:initial-element ta-axioms-U)
																		(mapcar #'list ta-theorems-O))))))
; now the n-th element of phi+es is phi+ for the n-th theorem in ta-theorems


(setf phi-es (mapcar #'cons (make-list (length ta-theorems-U) :initial-element 'not)
							  (mapcar #'list (mapcar #'cons (make-list (length ta-theorems-U) :initial-element 'impl)
															 (mapcar #'cons (make-list (length ta-theorems-U)
																								:initial-element ta-axioms-O)
																		(mapcar #'list ta-theorems-U))))))
; now the n-th element of phi-es is phi- for the n-th theorem in ta-theorems
