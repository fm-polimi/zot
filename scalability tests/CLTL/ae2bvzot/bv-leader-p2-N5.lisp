(asdf:operate `asdf:load-op `ae2bvzot)
(use-package :trio-utils)

;; predicate representing the winner; the idea is that the winner is 0 (undefined) until a process "wins", then there should never be conflcting winner
;; (i.e., somebody else declared a winner when one is already selected)
(define-tvar winner *int*)
;; we also use a predicate set_winner, to detect when we need to set a winner; this also helps detecting when errors occur
;; (i.e., if we need to set a winner, but one was already defined)
(defvar k 30)
(defvar N 5)
;; we have N processes (indexes: 0 ... N-1)
;; predicates for process i, we also use predicate pi_active (a Boolean) to indicate whether process i is active or not
(loop for i from 0 to (1- N) collect
  (progn 
    (eval `(define-tvar ,(read-from-string (format nil "p~A_mynum" i)) *int*))
    (eval `(define-tvar ,(read-from-string (format nil "p~A_max" i)) *int*))
    (eval `(define-tvar ,(read-from-string (format nil "p~A_neighbourR" i)) *int*))))

;; call one from 0 to 1 ... i to i+1 ... N-1 to 0
;; the idea is that when the value is != 0 an invocation is made from process 0 to process 1, and the value of the parameter is the value of one0to1
;; when the value of one0to1 is = 0, then no call is issued
;; similarly for the call two from 0 to 1
(loop for i from 0 to (1- N) collect
  (progn
    (eval `(define-tvar ,(read-from-string (format nil "one~Ato~A" i (mod (1+ i) N))) *int*))
    (eval `(define-tvar ,(read-from-string (format nil "two~Ato~A" i (mod (1+ i) N))) *int*))))

;; the value of attributes mynum remains constant
(defun mynum_const ()
   (eval (list `alwf
      (append `(&&)
        (loop for i from 0 to (1- N) collect
        `([=] (next (-V- ,(read-from-string (format nil "p~A_mynum" i)))) (-V- ,(read-from-string (format nil "p~A_mynum" i)))))))))

;; all mynum`s are different from each other
(defun mynum_diff ()
  (eval
    (append `(&&)
      (loop for i from 0 to (- N 2) append
        (loop for j from (1+ i) to (1- N) collect
          `(!! ([=] (-V- ,(read-from-string (format nil "p~A_mynum" i))) (-V- ,(read-from-string (format nil "p~A_mynum" j))))))))))

;; all mynum`s are different from 0 (so we can use `0` in communications to signal "absence of communication"
(defun mynum_gte0 ()
  (eval (append `(&&)
    (loop for i from 0 to (1- N) collect
      `(!! ([=] (-V- ,(read-from-string (format nil "p~A_mynum" i))) 0))))))

;; no two operations are invoked together
(defun ops_mutex ()
  (eval (list `alwf
    (append
      `(&&)
      (loop for i from 0 to (1- N) collect
        `(-> (!! ([=] (-V- ,(read-from-string (format nil "one~Ato~A" i (mod (1+ i) N)))) 0)) ([=] (-V- ,(read-from-string (format nil "two~Ato~A" i (mod (1+ i) N)))) 0)))))))

;; initially the value of `max` is the same as mynum
(defun init_max ()
  (eval (append `(&&)
    (loop for i from 0 to (1- N) collect
      `([=] (-V- ,(read-from-string (format nil "p~A_max" i))) (-V- ,(read-from-string (format nil "p~A_mynum" i))))))))

;; initially all processes are active
(defun init_active ()
  (eval (append `(&&)
    (loop for i from 0 to (1- N) collect
      `(-P- ,(read-from-string (format nil "p~A_active" i)))))))

;; initially operation `one` is invoked by each process on its neighbour, with argument mynum
(defun init_send_one ()
  (eval (append
    `(&&)
    (loop for i from 0 to (1- N) collect
      `([=] (-V- ,(read-from-string (format nil "one~Ato~A" i (mod (1+ i) N)))) (-V- ,(read-from-string (format nil "p~A_mynum" i))))))))


;; if process is inactive and it receives call, it simply relays the call to next process, and it stays inactive;
;; also, the values of variables `max` and `neighbourR` remain the same
(defun relay_op ()
  (eval (list `alwf
    (append
      `(&&)
      (loop for i from 0 to (1- N) append
        (list 
          `(->
        (&& (!! (-P- ,(read-from-string (format nil "p~A_active" i)))) (!! ([=] (-V- ,(read-from-string (format nil "one~Ato~A" (mod (1- i) N) i))) 0)))
        (&& ([=] (next (-V- ,(read-from-string (format nil "one~Ato~A" i (mod (1+ i) N))))) (-V- ,(read-from-string (format nil "one~Ato~A" (mod (1- i) N) i)))) (next (!! (-P- ,(read-from-string (format nil "p~A_active" i))))) ([=] (next (-V- ,(read-from-string (format nil "p~A_max" i)))) (-V- ,(read-from-string (format nil "p~A_max" i)))) ([=] (next (-V- ,(read-from-string (format nil "p~A_neighbourR" i)))) (-V- ,(read-from-string (format nil "p~A_neighbourR" i))))))
        `(->
        (&& (!! (-P- ,(read-from-string (format nil "p~A_active" i)))) (!! ([=] (-V- ,(read-from-string (format nil "two~Ato~A" (mod (1- i) N) i))) 0)))
        (&& ([=] (next (-V- ,(read-from-string (format nil "two~Ato~A" i (mod (1+ i) N))))) (-V- ,(read-from-string (format nil "two~Ato~A" (mod (1- i) N) i)))) (next (!! (-P- ,(read-from-string (format nil "p~A_active" i))))) ([=] (next (-V- ,(read-from-string (format nil "p~A_max" i)))) (-V- ,(read-from-string (format nil "p~A_max" i)))) ([=] (next (-V- ,(read-from-string (format nil "p~A_neighbourR" i)))) (-V- ,(read-from-string (format nil "p~A_neighbourR" i))))))
        ))))))

;; if the process receives call `one`, it is active, and the received number is different from `max`,
;; then change the value of `neighbourR` to the received one, and invoke `two` on the next process (with argument the received one)
;; the process stays active, and variable `max` remains unchanged
(defun rec_one_and_active_case_1 ()
  (eval (list `alwf
    (append
      `(&&)
      (loop for i from 0 to (1- N) collect
        `(->
        (&& (-P- ,(read-from-string (format nil "p~A_active" i))) (!! ([=] (-V- ,(read-from-string (format nil "one~Ato~A" (mod (1- i) N) i))) 0)) (!! ([=] (-V- ,(read-from-string (format nil "one~Ato~A" (mod (1- i) N) i))) (-V- ,(read-from-string (format nil "p~A_max" i))))))
        (&& ([=] (next (-V- ,(read-from-string (format nil "two~Ato~A" i (mod (1+ i) N))))) (-V- ,(read-from-string (format nil "one~Ato~A" (mod (1- i) N) i)))) ([=] (next (-V- ,(read-from-string (format nil "p~A_neighbourR" i)))) (-V- ,(read-from-string (format nil "one~Ato~A" (mod (1- i) N) i)))) (next (-P- ,(read-from-string (format nil "p~A_active" i)))) ([=] (next (-V- ,(read-from-string (format nil "p~A_max" i)))) (-V- ,(read-from-string (format nil "p~A_max" i)))))))))))     

;; if the process receives call `two`, it is active, and the value of `neighourR` is greater of both the received number and `max`,
;; then change the value of `max` to that of `neighbourR` and invoke `one` on the next process (with argument `neighbourR`)
;; the process stays active, and variable `neighbourR` remains unchanged
(defun rec_two_and_active_case_1 ()
  (eval (list `alwf
    (append
      `(&&)
      (loop for i from 0 to (1- N) collect
        `(->
        (&& (-P- ,(read-from-string (format nil "p~A_active" i))) (!! ([=] (-V- ,(read-from-string (format nil "two~Ato~A" (mod (1- i) N) i))) 0)) ([>] (-V- ,(read-from-string (format nil "p~A_neighbourR" i))) (-V- ,(read-from-string (format nil "two~Ato~A" (mod (1- i) N) i)))) ([>] (-V- ,(read-from-string (format nil "p~A_neighbourR" i))) (-V- ,(read-from-string (format nil "p~A_max" i)))))
        (&& ([=] (next (-V- ,(read-from-string (format nil "one~Ato~A" i (mod (1+ i) N))))) (-V- ,(read-from-string (format nil "p~A_neighbourR" i)))) ([=] (next (-V- ,(read-from-string (format nil "p~A_max" i)))) (-V- ,(read-from-string (format nil "p~A_neighbourR" i)))) (next (-P- ,(read-from-string (format nil "p~A_active" i)))) ([=] (next (-V- ,(read-from-string (format nil "p~A_neighbourR" i)))) (-V- ,(read-from-string (format nil "p~A_neighbourR" i)))))))))))

;; if the process receives call `two`, it is active, and the value of `neighourR` is not greater of both the received number and `max`,
;; then deactivate the process and do not invoke anything on the next process
;; variables `max` and `neighbourR` do not change value
(defun rec_two_and_active_case_2 ()
  (eval (list `alwf
    (append
      `(&&)
      (loop for i from 0 to (1- N) collect
        `(->
        (&& (-P- ,(read-from-string (format nil "p~A_active" i))) (!! ([=] (-V- ,(read-from-string (format nil "two~Ato~A" (mod (1- i) N) i))) 0)) (|| ([<=] (-V- ,(read-from-string (format nil "p~A_neighbourR" i))) (-V- ,(read-from-string (format nil "two~Ato~A" (mod (1- i) N) i)))) ([<=] (-V- ,(read-from-string (format nil "p~A_neighbourR" i))) (-V- ,(read-from-string (format nil "p~A_max" i))))))
        (&& (next (!! (-P- ,(read-from-string (format nil "p~A_active" i))))) ([=] (next (-V- ,(read-from-string (format nil "one~Ato~A" i (mod (1+ i) N))))) 0) ([=] (next (-V- ,(read-from-string (format nil "two~Ato~A" i (mod (1+ i) N))))) 0) ([=] (next (-V- ,(read-from-string (format nil "p~A_max" i)))) (-V- ,(read-from-string (format nil "p~A_max" i)))) ([=] (next (-V- ,(read-from-string (format nil "p~A_neighbourR" i)))) (-V- ,(read-from-string (format nil "p~A_neighbourR" i)))))))))))

;; starting from the second instant, a process that does not receive any invocation does not send any invocation and the state active/inactive does not change
;; variables `max` and `neighbourR` do not change value, either
(defun no_rec_no_send ()
  (eval (list `alwf_e
    (append
      `(&&)
      (loop for i from 0 to (1- N) collect
        `(->
        (&& ([=] (-V- ,(read-from-string (format nil "one~Ato~A" i (mod (1+ i) N)))) 0) ([=] (-V- ,(read-from-string (format nil "two~Ato~A" i (mod (1+ i) N)))) 0))
        (&& ([=] (next (-V- ,(read-from-string (format nil "one~Ato~A" (mod (1+ i) N) (mod (+ i 2) N))))) 0) ([=] (next (-V- ,(read-from-string (format nil "two~Ato~A" (mod (1+ i) N) (mod (+ i 2) N))))) 0)
          (<-> (-P- ,(read-from-string (format nil "p~A_active" (mod (1+ i) N)))) (next (-P- ,(read-from-string (format nil "p~A_active" (mod (1+ i) N))))))
          ([=] (next (-V- ,(read-from-string (format nil "p~A_max" (mod (1+ i) N))))) (-V- ,(read-from-string (format nil "p~A_max" (mod (1+ i) N))))) ([=] (next (-V- ,(read-from-string (format nil "p~A_neighbourR" (mod (1+ i) N))))) (-V- ,(read-from-string (format nil "p~A_neighbourR" (mod (1+ i) N))))))))))))

;; the winner changes only when set_winner is true
(defun winner_no_change ()
  (eval (list `alwf `(-> (!! (-P- set_winner)) ([=] (next (-V- winner)) (-V- winner))))))

;; sufficient condition for setting a winner (and defining its value):
;; if the process receives call `one`, it is active, and the received number is equal to `max`,
;; then set the winner to `max`, and deactivate the process
;; the other variable (`max`, `neighbourR) remain unchanged
(defun set_winner_cs ()
  (eval (list `alwf
    (append
      `(&&)
      (loop for i from 0 to (1- N) collect
        `(->
        (&& (-P- ,(read-from-string (format nil "p~A_active" i))) (!! ([=] (-V- ,(read-from-string (format nil "one~Ato~A" (mod (1- i) N) i))) 0)) ([=] (-V- ,(read-from-string (format nil "one~Ato~A" (mod (1- i) N) i))) (-V- ,(read-from-string (format nil "p~A_max" i)))))
        (&& (-P- set_winner) ([=] (next (-V- winner)) (-V- ,(read-from-string (format nil "one~Ato~A" (mod (1- i) N) i)))) ([=] (next (-V- ,(read-from-string (format nil "p~A_neighbourR" i)))) (-V- ,(read-from-string (format nil "p~A_neighbourR" i)))) (next (!! (-P- ,(read-from-string (format nil "p~A_active" i))))) ([=] (next (-V- ,(read-from-string (format nil "p~A_max" i)))) (-V- ,(read-from-string (format nil "p~A_max" i)))))))))))

;; necessary condition for setting a winner
(defun set_winner_cn ()
  (eval
    (list `alwf `(-> (-P- set_winner) ,(append `(||)
      (loop for i from 0 to (1- N) collect
        `(&& (-P- ,(read-from-string (format nil "p~A_active" i))) (!! ([=] (-V- ,(read-from-string (format nil "one~Ato~A" (mod (1- i) N) i))) 0)) ([=] (-V- ,(read-from-string (format nil "one~Ato~A" (mod (1- i) N) i))) (-V- ,(read-from-string (format nil "p~A_max" i)))))))))))


;; inital condition
(defun init_all ()
  (append (eval `(&&))
    (list (init_active)
    (init_send_one)
    (init_max)
    (eval `([=] (-V- winner) 0))
    )))

;; all constraints on mynum
(defun mynum_constr ()
  (append (eval `(&&))
    (list (mynum_const)
    (mynum_diff)
    (mynum_gte0))))

;; property p1: eventually we get a winner
(defvar somf_winner
  (somf (!! ([=] (-V- winner) 0))))

; ;; property p2: no more than one winner
(defvar at_most_one_winner
  (alwf (-> (-P- set_winner) ([=] (-V- winner) 0))))

(defun syst()
  (append (eval `(&&))
  (list (init_all))
  (list (mynum_constr))
  (list (ops_mutex))
  (list (relay_op))
  (list (rec_one_and_active_case_1))
  (list (rec_two_and_active_case_1))
  (list (rec_two_and_active_case_2))
  (list (no_rec_no_send))
  (list (set_winner_cs))
  (list (set_winner_cn))
  (list (winner_no_change))))

(ae2bvzot:zot k
       (list `yesterday (append (eval `(&&))
       (list (syst))
       ; (list (!! somf_winner))
       (list (!! at_most_one_winner))
       ))
      :logic :QF_UFLIA 
      )
