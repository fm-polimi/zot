;; BVZOT: a bounded satisfiability checker
;; Mohammad Mehdi Pourhashem Kallehbasti
; ------------------------------------------
(in-package :cl-user)
(defpackage :bvzot
  (:use :common-lisp 
	:trio-utils
	:kripke
	:smt-interface
	)
  (:export :zot
	   :loopex
	   :yices
	   :cvc3
	   :mathsat
	   :z3)) 

(in-package :bvzot)

(defvar *PROPS* nil) ; this will contain a Kripke
(defclass eezot-kripke (kripke) ())
(defun make-kripke (k fma) ;;alw, alwf, alwp, som, somf, and somp bypass the trio-to-ltl encoding. alw and som are pushed to kripke-futr list.
  (let ((a-kripke (make-instance 'eezot-kripke)))
    (setf 
      (kripke-k a-kripke)      k
      (kripke-numvar a-kripke) 0
      ; formula -> integer
      (kripke-list a-kripke)   (make-hash-table :test #'equal)
      ; integer -> formula
      (kripke-back a-kripke)   (make-array (* k 10) :adjustable t)
      (kripke-prop a-kripke)   nil
      (kripke-bool a-kripke)   nil
      (kripke-futr a-kripke)   nil
      (kripke-maximum a-kripke) 0
      (kripke-past a-kripke)   nil)
      (setf (gethash '**I_LOOP** (kripke-list a-kripke))
 		    (intern (format nil "I_LOOP" )))
      (setf (gethash '**LOOPEX** (kripke-list a-kripke))
 		    (intern (format nil "LOOPEX" )))
      ; This puts subformulae into the hash table
      (labels ((jump (fm)
		     (when (and (not (member fm '(nil true false)))
				(not (gethash fm (kripke-list a-kripke)))
				)
		       (if (symbolp fm)
			   (setf (gethash fm (kripke-list a-kripke)) 
				 (intern (format nil "~s" fm)))
			   (setf (gethash fm (kripke-list a-kripke)) 
				 (intern (format nil "P~s" (incf (kripke-numvar a-kripke))))))
		       (when (consp fm)
			 (dolist (i (cdr fm))
			   (jump i))))))
	(jump fma)
	(incf (kripke-numvar a-kripke)))

      (maphash  
	(lambda (fm val)
	  (declare (ignore val)) ; just to avoid warnings...

	  (if (symbolp fm)
	    (unless (member fm '(true false **I_LOOP** **LOOPEX**))
	      (push fm (kripke-prop a-kripke)))
	    (case (car fm)
	      ((and or not iff) 
	       (push fm (kripke-bool a-kripke)))
	      ((next until release alwf somf alw som) 
	       (push fm (kripke-futr a-kripke)))
	      ((yesterday zeta since trigger alwp somp)
	       (push fm (kripke-past a-kripke)))
	      ((< > =)
	       nil)
	      (t
		(error "subformulae: unknown op ~S~%" fm))))) 
	(kripke-list a-kripke))
      a-kripke))

(defmethod call ((kk eezot-kripke) obj the-time &rest other) 
  (assert (null other))
  (cond 
    ((eq 'false obj) 'false)
    ((eq 'true obj) 'true)    
    (t (list (gethash obj (kripke-list kk)) the-time))))
(defgeneric call-fmla-id (kk obj))

(defmethod call-fmla-id ((kk eezot-kripke) obj) 
  (cond 
    ((eq 'false obj) 'false)
    ((eq 'true obj) 'true)
    (t (gethash obj (kripke-list kk)))))

(defun the-loopEx ()
  (call-fmla-id *PROPS* '**LOOPEX**))

(defun the-iloop ()
  (call-fmla-id *PROPS* '**I_LOOP**))

(defun repeat-string (n string)
  (with-output-to-string (stream)
    (loop repeat n do (write-string string stream))))

(defun bvTrue (size)
	(if (= (mod size 4) 0) 
		(concatenate 'string "#xF" (repeat-string (- (/ size 4) 1) "F"))
		(concatenate 'string "#b1" (repeat-string (- size 1) "1"))))

(defun bvFalse (size)
	(concatenate 'string "(_ bv0 " (write-to-string size) ")"))

(defun substitutions (f size)
	(substitute (bvTrue size) T
	(substitute (bvTrue size) 'true
	(substitute 'bvnot 'NOT
	(substitute 'bvor 'OR 
	(substitute 'bvand 'AND 
	(substitute 'bviff 'IFF
	(substitute (bvFalse size) nil f
	))))))))

(defun bvf (f size)
	(cond 
		((atom f) f)
		(t (cons (bvf (car (substitutions f size)) size) (bvf (cdr (substitutions f size)) size)))))

					; --- MAIN ---
(defun zot (the-time spec 
	    &key 
	    (smt-solver :z3))
	(setf *smt-metric-futr-operators* nil)
	(setf *smt-metric-past-operators* nil)
	(setf *metric-operators* nil)
	(setf *bitvector* t)
	(setf *format-smt* t)
	(let ((formula (trio-to-ltl spec)))
	(setf *PROPS* (make-kripke the-time formula))
(format t "This is BVZOT.~%")(force-output)
	(with-open-file (k "./output.smt.txt" :direction :output :if-exists :supersede)
		(setq bvSize (+ the-time 2))
		(format k "(set-logic QF_BV)")
		(format k "~%(declare-fun i_loop () (_ BitVec ~A))" bvSize)
		(format k "~%(assert (and (bvuge i_loop (_ bv1 ~A)) (bvule i_loop (_ bv~A ~A))))" bvSize the-time bvSize)
		(format k "~%(define-fun getbit ((x (_ BitVec ~A)) (index (_ BitVec ~A))) (_ BitVec 1)~%~4T((_ extract 0 0) (bvlshr x index)))~%~4T" bvSize bvSize)
		(format k "~%(define-fun reverse ((x (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize)
		(loop for i from 0 to (- bvSize 3) do
			(format k "(concat((_ extract ~A ~A)x)" i i)
			)
		(format k "(concat ((_ extract ~A ~A)x)((_ extract ~A ~A)x)" (- bvSize 2)(- bvSize 2)(1- bvSize)(1- bvSize))
		(format k (repeat-string bvSize ")"))
		(format k "~%(define-fun loopConV ((x (_ BitVec ~A))) Bool~%~4T(and~%" bvSize)
		(format k "~8T(= (getbit x i_loop) ((_ extract ~A ~A) x) ) ;; k+1 = i_loop~%" (+ the-time 1) (+ the-time 1))
		(format k "~8T(= (getbit x (bvsub i_loop (_ bv1 ~A))) ((_ extract ~A ~A) x)))) ;; k = i_loop-1~%" bvSize the-time the-time)
		(format k "~%(define-fun loopConF ((x (_ BitVec ~A))) Bool~%" bvSize)
		(format k "~4T(= (getbit x i_loop) ((_ extract ~A ~A) x))) ;; k+1 = i_loop~%" (+ the-time 1) (+ the-time 1))
		(format k "~%(define-fun next ((x (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize)
		(format k "~4T(concat (getbit (bvlshr x (_ bv1 ~A)) i_loop) ((_ extract ~A 1) x)))" bvSize (+ the-time 1))
		(format k "~%(define-fun yesterday ((x (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize)
		(format k "~4T(bvshl x (_ bv1 ~A)))~%" bvSize)
		(format k "~%(define-fun zeta ((x (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize)
		(format k "~4T(bvor (bvshl x (_ bv1 ~A)) (_ bv1 ~A)))~%" bvSize bvSize)
		(format k "~%(define-fun untilNL ((A (_ BitVec ~A)) (B (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize bvSize)
		(format k "~4T(bvor~%~8TB~%~8T(bvand~%")
		(format k "~12TA~%")
		(format k "~12T(bvnot~%")
		(format k "~16T(reverse~%")
		(format k "~20T(bvadd~%")
		(format k "~24T(reverse (bvor B A))~%")
		(format k "~24T(reverse B)))))))~%")
		(format k "~%(define-fun until ((A (_ BitVec ~A)) (B (_ BitVec ~A))) (_ BitVec ~A)" bvSize bvSize bvSize)
		(format k "~%~4T(untilNL A (concat (getbit (untilNL A B) i_loop) ((_ extract ~A 0) B))))" the-time)
		(format k "~%(define-fun release ((A (_ BitVec ~A)) (B (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize bvSize)
		(format k "~4T(bvnot (until (bvnot A) (bvnot B))))~%")
		(format k "~%(define-fun since ((A (_ BitVec ~A)) (B (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize bvSize)
		(format k "~4T(bvor~%~8TB~%~8T(bvand~%~12TA~%~12T(bvnot~%~16T(bvadd~%~20T(bvor B A)~%~20TB)))))~%")
		(format k "~%(define-fun trigger ((A (_ BitVec ~A)) (B (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize bvSize)
		(format k "~4T(bvnot (since (bvnot A) (bvnot B))))~%")
		(format k "~%(define-fun alw ((x (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize)
		(format k "~4T((_ repeat ~A) (bvredand x)))~%" bvSize)
		(format k "~%(define-fun som ((x (_ BitVec ~A))) (_ BitVec ~A)~%" bvSize bvSize)
		(format k "~4T((_ repeat ~A) (bvredor x)))~%" bvSize)
		(format k "~%(define-fun alwfNL ((x (_ BitVec ~A))) (_ BitVec ~A)~%~4T(bvand~%~8Tx~%~8T(reverse~%~12T(bvsub~%~16T(reverse (bvnot x))~%~16T(_ bv1 ~A)))))~%" bvSize bvSize bvSize)
		(format k "~%(define-fun alwf ((x (_ BitVec ~A))) (_ BitVec ~A)~%~4T(alwfNL (concat (getbit (alwfNL x) i_loop) ((_ extract ~A 0) x))))~%" bvSize bvSize the-time)
		(format k "~%(define-fun alwp ((x (_ BitVec ~A))) (_ BitVec ~A)~%~4T(bvand~%~8Tx~%~8T(bvsub~%~12T(bvnot x)~%~12T(_ bv1 ~A))))~%" bvSize bvSize bvSize)
		(format k "~%(define-fun somfNL ((x (_ BitVec ~A))) (_ BitVec ~A)~%~4T(bvor~%~8Tx~%~8T(bvnot~%~12T(reverse~%~16T(bvsub~%~20T(reverse x)~%~20T(_ bv1 ~A))))))~%" bvSize bvSize bvSize)
		(format k "~%(define-fun somf ((x (_ BitVec ~A))) (_ BitVec ~A)~%~4T(somfNL (concat (getbit (somfNL x) i_loop) ((_ extract ~A 0) x))))~%" bvSize bvSize the-time)
		(format k "~%(define-fun somp ((x (_ BitVec ~A))) (_ BitVec ~A)~%~4T(bvor~%~8Tx~%~8T(bvnot~%~12T(bvsub~%~16Tx~%~16T(_ bv1 ~A)))))~%"bvSize bvSize bvSize)
		(format k "(define-fun bviff ((A (_ BitVec ~A)) (B (_ BitVec ~A))) (_ BitVec ~A)~%~4T(bvxnor A B))~%" bvSize bvSize bvSize)
		(format k ";;;;;;Used propositions and their loop constraints:~%")
		(loop for p in (kripke-prop *PROPS*)
		do (unless (eq p t) (format k "(declare-fun ~A () (_ BitVec ~A))~%" (string-downcase p) bvSize)
			(format k "(assert (loopConV ~A))~%" (string-downcase p))))
		(format k ";;;;;;Last state constraint on all past subformulae:~%")
		(loop for p in (kripke-past *PROPS*)
		do (format k "(assert (loopConF ~A))~%" (string-downcase (format nil "~A" (bvf p bvSize)))))
		(format k ";;;;;;The main formula is asserted to be true at the time instant 1:~%(assert (= (getbit ")
		(format k (string-downcase (format nil "~A" (bvf formula bvSize))))
		(format k " (_ bv1 ~A)) #b1))~%" bvSize)
		(format k "(check-sat-using (then simplify solve-eqs (repeat bit-blast) sat))~%")
		(format k "(get-model)~%")
	))
	(to-smt-and-back *PROPS* smt-solver :smt-lib :smt2 :bitvector :t)
)