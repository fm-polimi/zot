; SMT-Interface, version 20100812
; Matteo Pradella
; --------------------------------------------------------------------------
;
; Copyright (C) 2010 Matteo Pradella (pradella@elet.polimi.it)
;
; This program is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation; either version 2 of the License, or
; (at your option) any later version.
;
; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.
;
; You should have received a copy of the GNU General Public License
; along with this program; if not, write to the Free Software
; Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
;
; -------------------------------------------------------------------------

(in-package :cl-user)

(defpackage :smt-interface
  (:use :common-lisp
	:kripke
	:trio-utils
	)
  (:export :to-smt-and-back )) 


(in-package :smt-interface)

(defun to-smt-and-back (the-kripke smt-solver)
  "calls the SMT solver and gets its output"

  (format t "~%no CNF~% ") 
  (format t " 0.000 seconds of real time~%") ;; just for testing...
  (format t "~%2. SMT solving: ")

  (when (probe-file "output.1.txt")
    (delete-file "output.1.txt"))

  #+sbcl (time 
	  (ecase smt-solver
	    (:z3 
	     (format t "z3...~% ")(force-output)
	     (sb-ext:run-program "z3"
				 '("-smt" "-st" "-m" "output.smt.txt") :input
				 t :output "output.1.txt" :error t :search t :if-output-exists :supersede))

	    (:yices 
	     (format t "yices...~% ")(force-output)
	     (sb-ext:run-program "yices"
				 '("-m" "output.smt.txt") :input
				 t :output "output.1.txt" :error t :search t :if-output-exists :supersede))
	    (:cvc3
	     (format t "cvc3...~% ")(force-output)
	     (time (sb-ext:run-program "cvc3"
				       '("-lang" "smtlib" "-stats" "+model" "output.smt.txt" ) :input
				       t :output "output.1.txt" :error t :search t :if-output-exists :supersede)))
	    (:mathsat
	     (format t "mathsat... ~% ")(force-output)
	     (time (sb-ext:run-program "mathsat"
				       '("-input=smt" "-solve" "-print_model" "-logic=QF_IDL" "output.smt.txt") :input
				       t :output "output.1.txt" :error t :search t :if-output-exists :supersede)))))


  (let ((call-shell #+clisp   #'ext:shell
		    #+ecl     #'ext:system
		    #+gcl     #'system
		    #+abcl    #'ext:run-shell-command
		    #+clozure #'ccl::os-command))

    #+(or :sbcl :cmu) (declare (ignore call-shell))
    #-(or :sbcl :cmu) (time 
		       (ecase smt-solver
			 (:z3 
			  (format t "z3...~% ")(force-output)
			  (funcall call-shell "z3 -smt -st -m output.smt.txt > output.1.txt"))

			 (:yices 
			  (format t "yices...~% ")(force-output)
			  (funcall call-shell "yices -m output.smt.txt > output.1.txt"))

			 (:cvc3
			  (format t "cvc3...~% ")(force-output)
			  (funcall call-shell "cvc3 -lang smtlib -stats output.smt.txt +model > output.1.txt"))

			 (:mathsat
			  (format t "mathsat... ~% ")(force-output)
			  (funcall call-shell "mathsat -input=smt -solve -print_model -logic=QF_UFIDL output.smt.txt > output.1.txt"))))


    (unless (probe-file "output.1.txt")
      (error "Error: the SMT-solver is not installed"))

    ;; --- dump the output of the SMT ---
    #-(or :sbcl :clisp) (funcall call-shell "cat output.1.txt"))


  ;; --- parse the output of the SMT ---
  (let ((val (with-open-file (ff "output.1.txt" :direction :input)
	       (not (eq 'unsat (read ff))))))
    (format t (if val "---SAT---~%" "---UNSAT---~%"))
    (force-output)
    (when (and val (eq smt-solver :z3))
      (translate-smt-output (kripke-k the-kripke)))
    val)
  )


(defun translate-smt-output (k)
  (let ((dict (make-hash-table :test #'equal))
	(time (make-array (1+ k) :initial-element nil))
	(iht  (make-hash-table :test #'equal))
	(unk nil))

    (maphash (lambda (key val) (declare (ignore val)) ;; hash table for translating items
		     (setf (gethash key iht) 0)) *items*)
    
    (with-open-file (ff "output.1.txt" :direction :input)
      (loop 
	 with x   = (read ff)
	 with sep = (read ff)
	 with y   = (read ff)
	 when (and (not (eq y '{))  (if (>= (length (string x)) 4) (not (string= (string x) "ZOT-" :start1 0 :end1 4)) t))
	 do 
	   (setf (gethash x dict) y)
	 when (eq y '{)
	 do	    	    
	   (loop      
	      with tme = nil
	      with lst = '()
	      with ls  = nil
	      with test = (and (not (member  (string-trim '(#\0 #\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9) (string x)) '("P" "A") :test #'equal))
				        (if (>= (length (string x)) 4) (not (string= (string x) "ZOT-" :start1 0 :end1 4)) t))
	      when (and test
			(numberp tme) 
			(<= 0 tme k)
			 (or (numberp ls) (eq ls 'true)))
		 
	      do (cond
		  ((null lst)
		   (if (numberp ls)
		       (setf (aref time tme) (cons (list x ls) (aref time tme)))
		     (setf (aref time tme) (cons x (aref time tme)))))
		  (t
		   (if (numberp ls)
		       (setf (aref time tme) (cons (list x lst ls) (aref time tme)))
		     (setf (aref time tme) (cons (list x lst) (aref time tme))))))
	      do 	
	      (loop 
	       initially (setf lst '())
	       until (or (member '} lst) (member '-> lst))
	       do (setf lst (append lst (list (read ff)))))
	      
	      (when (member '} lst)  (return))
	      (setf lst (remove '-> lst))
	      (setf tme (car (last lst)))
	      (setf lst (loop for el in lst 
			      with i = 0
			      until (eq i (1- (length lst)))
			      collect el
			      do (incf i)))
	      (setf ls  (read ff)))
	   do
	   (setf x (read ff))
	   (when (eq 'sat x) (return dict))
	   (when (eq 'unknown x) (setf unk t) (return dict))
	   (setf sep (read ff))
	   (setf y (read ff))))


    ;; set loop variables    
    (let* ((gh (gethash 'i_loop dict))
	   (tt (when (and gh (<= 0 gh k)) 
		 (aref time gh))))
      (when (and gh (<= 0 gh k))
	(setf (aref time gh) (cons '**LOOP** tt)))) 
    (let* ((gh (gethash 'i_pool dict))
	   (tt (when (and gh (<= 0 gh k)) 
		 (aref time gh))))
      (when (and gh (<= 0 gh k))
	(setf (aref time gh) (cons '**POOL** tt))))

    (with-open-file (ff "output.hist.txt" 
			:direction :output 
			:if-exists :supersede 
			:if-does-not-exist :create)

      ;; translate encoded items/arrays and dump the history
      (loop
       initially (maphash #'(lambda (key val) 
			      (when (not (member (string-trim '(#\0 #\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9) 
						       (string key)) '("P" "A" "I_EVE_P") :test #'equal))
				(format t "~s = ~s~%" key val))) dict)
	 for i from 0 to k
	 do 
	   (format t  "------ time ~s ------~%" i)
	   (format ff "------ time ~s ------~%" i)
	   (loop 
	     with name = nil
	     for val in (aref time i)
	     ;manage non-symbol items
	     unless (symbolp val) do	     
	     (cond 
	      ((cddr val)
	       (progn
		 (format t "~s~s = ~s~%" (car val) (cadr val) (caddr val))
		 ;; MR: next line added to write the value also in the output-hist.txt file
		 (format ff "~s~s = ~s~%" (car val) (cadr val) (caddr val))))
	      ((and (null (cddr val)) (numberp (cadr val)))
	       (progn
		 (format t "~s = ~s~%" (car val) (cadr val))
		 ;; MR: next line added to write the value also in the output-hist.txt file
		 (format ff "~s = ~s~%" (car val) (cadr val))))
	      (t
	       (progn
		 (format t "~s~s~%" (car val) (cadr val))
		 ;; MR: next line added to write the value also in the output-hist.txt file
		 (format ff "~s~s~%" (car val) (cadr val)))))

	     ;manage symbol items
	     when (and (symbolp val) (<= 0 i k))
	     do
	     (setf name (string-trim '(#\_) 
				     (string-trim '(#\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9 #\0) 
						  (string val))))
	     (let ((ogh (gethash name iht)))
	       (if ogh
		 (setf (gethash name iht) 
		       (+ ogh (expt 2 (parse-integer (subseq (string val)(1+ (length name)))))))
		 (progn
		   (format t  "  ~s~%" val) 
		   (format ff "  ~s~%" val)) 
		 )
	       ))
	   (maphash (lambda (x y) 
		      (format t   "  ~S = ~S~%" (intern x) (elt (gethash x *items*) y))
		      (format ff  "  ~S = ~S~%" (intern x) (elt (gethash x *items*) y))
		      (setf (gethash x iht) 0)) 
		    iht)
	 finally
	   (format t  "------ end ------~%")
	   (format ff "------ end ------~%")
	   (when unk 
	     (format t  ">>> UNKNOWN <<<") 
	     (format ff ">>> UNKNOWN <<<")) 
	   ))
    ))

