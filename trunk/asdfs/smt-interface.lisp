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
  (:export 
  	:to-smt-and-back 
  	:smt
  	:smt2
  	:bitvector
  	:arith-bitvector
  	)) 


(in-package :smt-interface)

(defun to-smt-and-back (the-kripke smt-solver
	&key
	(smt-lib :smt)
	(bitvector nil)
	(arith-bitvector nil)
	)
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
				 (cons (ecase smt-lib (:smt "-smt") (:smt2 "-smt2")) '("-st" "output.smt.txt")) :input
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
			  (funcall call-shell "z3 -smt -st output.smt.txt > output.1.txt"))

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
      (cond
      	((eq bitvector :t) (translate-bvsmt2-output (kripke-k the-kripke)))
      	((eq arith-bitvector :t) (translate-abvsmt2-output (kripke-k the-kripke)))
		(t (translate-smt-output (kripke-k the-kripke))
      	)))
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
	 with foo-sat = (read ff)
	 with x   = (read ff)
	 with sep = (read ff)
	 with y   = (read ff)
	 	 
		  
	 when (and (not (eq y '{)) (not (realp x)) (if (>= (length (string x)) 4) (not (string= (string x) "ZOT-" :start1 0 :end1 4)) t))
	 do 
	   (setf (gethash x dict) y)
	 when (and (eq y '{) (not (realp x)))
	    do	    	    
	   (loop      
	      with tme = nil
	      with lst = '()
	      with ls  = nil
	      with test = (and ;(not (member  (string-trim '(#\0 #\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9) (string x)) '("P" "A") :test #'equal))
	 			        (if (and (not (realp x)) (>= (length (string x)) 4)) (not (string= (string x) "ZOT-" :start1 0 :end1 4)) t))
	      when (and test
	 		(numberp tme) 
	 		(<= 0 tme k)
	 		 (or (numberp ls) (eq ls 'true))
	 		 )
		 
	      do (cond
	 	  ((null lst)
	 	   (if (numberp ls)
	 	       (setf (aref time (floor tme)) (cons (list x ls) (aref time (floor tme))))
	 	     (setf (aref time (floor tme)) (cons x (aref time (floor tme))))))
	 	  (t
	 	   (if (numberp ls)
	 	       (setf (aref time (floor tme)) (cons (list x lst ls) (aref time (floor tme))))
	 	     (setf (aref time (floor tme)) (cons (list x lst) (aref time (floor tme)))))))
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
	      (setf temp_ls (read ff))
		  (setf ls (if (listp temp_ls) (eval temp_ls) temp_ls)))
		  
	    do
	   (setf x (read ff))
	   (when (listp x) (return dict))
	   (when (eq 'sat x) (return dict))
	   (when (eq 'unknown x) (setf unk t) (return dict))
	   (setf sep (read ff))
	   (setf y (read ff))))

    ;; set loop variables    
    (let* ((gh (gethash 'i_loop dict))
	   (tt (when (and gh (<= 0 gh k)) 
		 (aref time (floor gh)))))
      (when (and gh (<= 0 gh k))
	(setf (aref time (floor gh)) (cons '**LOOP** tt)))) 
    (let* ((gh (gethash 'i_pool dict))
	   (tt (when (and gh (<= 0 gh k)) 
		 (aref time (floor gh)))))
      (when (and gh (<= 0 gh k))
	(setf (aref time (floor gh)) (cons '**POOL** tt))))

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
    		 (format t "~s~s = ~s~%" (car val) (cadr val) (if (realp (caddr val)) (float (caddr val)) (caddr val)))
    		 ;; MR: next line added to write the value also in the output-hist.txt file
    		 (format ff "~s~s = ~s~%" (car val) (cadr val) (caddr val))))
    	      ((and (null (cddr val)) (numberp (cadr val)))
    	       (progn
    		 (format t "~s = ~f~%" (car val) (if (realp (cadr val)) (float (cadr val)) (cadr val)))
    		 ;; MR: next line added to write the value also in the output-hist.txt file
    		 (format ff "~s = ~f~%" (car val) (cadr val))))
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

;;<bitvector>
(defun trim-split (string)
    (let ((strtrim (string-trim " " string)))
    	(loop for i = 0 then (1+ j)
          as j = (position #\Space strtrim :start i)
          collect (subseq strtrim i j)
          while j)))

(defun replace-all (string part replacement &key (test #'char=))
    (with-output-to-string (out)
      (loop with part-length = (length part)
            for old-pos = 0 then (+ pos part-length)
            for pos = (search part string
                              :start2 old-pos
                              :test test)
            do (write-string string out
                             :start old-pos
                             :end (or pos (length string)))
            when pos do (write-string replacement out)
            while pos)))

(defun gen-bin (s)
	(if (string= "#b" (subseq s 0 2))
		(subseq s 3)
		(subseq (format nil (concatenate 'string "~" (write-to-string (* (- (length (string-trim ")" s)) 2) 4)) ",'0B") (read-from-string (string-trim ")" s))) 1)))

(defun translate-bvsmt2-output (k)
(setq var-bin  (make-hash-table :test #'equal))
 (with-open-file (stream "output.1.txt" :direction :input)
    (do ((line (read-line stream nil) (read-line stream nil)))
        ((null line))
      	(if (string= (car (trim-split line)) "(define-fun")
      		(progn 
      			(setf (gethash (cadr (trim-split line)) var-bin) nil)
      			(setq currentVar (cadr (trim-split line)))))
      	(if (string= (subseq (car (trim-split line)) 0 1) "#")
      		(setf (gethash currentVar var-bin) (gen-bin (car (trim-split line))))
      		)))
 (setq i_loop (read-from-string(format nil "~D" (read-from-string (concatenate 'string "#b" (gethash "i_loop" var-bin) )))))
 (remhash "i_loop" var-bin)
 (with-open-file (ff "output.hist.txt" 
    			:direction :output 
    			:if-exists :supersede 
    			:if-does-not-exist :create)
	 (loop for i from 0 to k
	 	do
	 	(format t  "------ time ~s ------~%" i)
	   	(format ff "------ time ~s ------~%" i)
	   	(if (= i i_loop) (progn (format t "**LOOP**~%")(format ff "**LOOP**~%")))
	   	(maphash #'(lambda (var bin) 
	   		(if (string= (subseq bin (- k i) (1+ (- k i))) "1")
	   			(progn
	   					(format t "  ~a~%" (string-upcase var))
	   					(format ff "  ~a~%" (string-upcase var))
	   				)
	   			)

	   		) var-bin)
	 	)
	(format t  "------ end of bvzot result ------~%")

	(format ff "------ end ------~%")))
;;</bitvector>
;;<arith-bitvector>
(defun string-to-list (s)
   (with-input-from-string (stream1 s) (read stream1)))

(defun prune-smt (f newf)
	(setf newf '())
	(loop for x from 0 to (- (list-length f) 1) do
		(if (or 
				(< (length (format nil "~A" (second (nth x f)))) 6) 
				(not (string= (subseq (format nil "~A" (second (nth x f))) 0 4) "ZOT-")))
			(setf newf (append newf (list (nth x f))))))
	(values newf))

(defun mvp-binary-from-decimal (n r)
    (if (zerop n)
    r
    (multiple-value-bind (a b)
        (floor n 2)
        (mvp-binary-from-decimal a (cons b r)))))

(defun dec2bin (n)
    (if (and (numberp n) (plusp n))
    (mvp-binary-from-decimal n '())
    (if (eql n 0) '(0) nil)))

(defun get-bv-val (bv i)
	(let ((bvl (dec2bin bv)))
		(if	(> i (1- (length bvl))) 0 
			(nth (- (length bvl) (1+ i)) bvl))))

(defun proc-val (f h)
	(progn
		(setf tmp f)
		(loop while (and (consp (fourth tmp)) (not (eq (first (fourth tmp)) '/)) (not (eq (first (fourth tmp)) '-))) do
			(progn 
				(setf h (append h (list (list (third (second tmp))
					(if (atom (third tmp)) (third tmp) (eval (third tmp)))))))
				(setf tmp (fourth tmp))))
		(if (or (atom (fourth tmp)) (eq (first (fourth tmp)) '/) (eq (first (fourth tmp)) '-))
			(progn (setf h (append h (list (list (third (second tmp))
				(if (atom (third tmp)) (third tmp) (eval (third tmp)))))))
			(setf h (append h (list (list 'else 
				(if (atom (fourth tmp)) (fourth tmp) (eval (fourth tmp))))))))))
	(values h))

(defun get-ar-val (ar i)
	(let ((val-list (proc-val (gethash ar ar-val) '())))
	(loop for x from 0 to (- (list-length val-list) 1) do
		(if (or (eq (first (nth x val-list)) i) (eq (first (nth x val-list)) 'else)) (progn (setq i (second (nth x val-list))) (return)))))
	(values i))

(defun translate-abvsmt2-output (k) nil
(setq ap-val  (make-hash-table :test #'equal))
(setq ar-val  (make-hash-table :test #'equal))
(setq smtstr "")
(with-open-file (stream "output.1.txt" :direction :input)
   (do ((line (read-line stream nil) (read-line stream nil)))
        ((null line))
         (if (string= line "sat")
               (do ((line1 (read-line stream nil) (read-line stream nil)))
                  ((null line1))
                  (setq smtstr (concatenate 'string smtstr line1))))))

(setq smtlist (string-to-list smtstr))
(setq smtlist (cdr smtlist))
(setf smtlist (prune-smt smtlist smtlist))

(loop for var in smtlist do
	(if (consp (fourth var))
		(progn (if (eq (second (fourth var)) (read-from-string "BITVEC")) (setf (gethash (second var) ap-val) (fifth var)))
			(if (eq (first (fourth var)) (read-from-string "ARRAY")) (setf (gethash (second var) ar-val) (third (fifth var)))))))
(loop for key being the hash-keys of ar-val do
	(loop for var in smtlist do 
		 (if (eq (gethash key ar-val) (second var)) (setf (gethash key ar-val) (fifth var)))))

(setq i_loop (gethash 'I_LOOP ap-val))
(remhash 'I_LOOP ap-val)
(with-open-file (ff "output.hist.txt" 
    			:direction :output 
    			:if-exists :supersede 
    			:if-does-not-exist :create)
	 (loop for i from 0 to k
	 	do
	 	(format t  "------ time ~s ------~%" i)
	   	(format ff "------ time ~s ------~%" i)
	   	(if (= i i_loop) (progn (format t "**LOOP**~%")(format ff "**LOOP**~%")))
	   	(maphash #'(lambda (ap bin) 
	   		(if (eq (get-bv-val bin i) '1)
	   			(progn
	   					(format t "  ~a~%" (string-upcase ap))
	   					(format ff "  ~a~%" (string-upcase ap))))
	   		) ap-val)
	   	(maphash #'(lambda (ar val) 
   			(progn
   					(format t "  ~a = ~a~%" ar (get-ar-val ar i))
   					(format ff "  ~a = ~a~%" ar (get-ar-val ar i)))
	   		) ar-val)
	 	)
	(format t  "------ end of ae2bvzot result ------~%")
	(format ff "------ end ------~%")))
;;</arith-bitvector>