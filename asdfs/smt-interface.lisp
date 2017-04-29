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
  	:loops
  	:arith-bitvector
  	)) 


(in-package :smt-interface)

(defun to-smt-and-back (the-kripke smt-solver
	&key
	(smt-lib :smt)
	(bitvector nil)
	(loops nil)
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
				 (ecase smt-lib (:smt (cons "-smt" '("-st" "output.smt.txt"))) (:smt2 (cons "-smt2" '("-st" "pp.decimal=true" "output.smt.txt")))) :input
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
			 (funcall call-shell "z3 -smt -st output-hist.smt.txt > output.1.txt"))

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
      	((eq arith-bitvector :t) (translate-abvsmt2-output (kripke-k the-kripke) loops))
			((eq smt-lib :smt2) (translate-smt2-output (kripke-k the-kripke)))
			((eq smt-lib :smt) (translate-smt-output (kripke-k the-kripke)))
			(t (translate-smt-output (kripke-k the-kripke)))
      	))
    val)
  )

(defun cut-name (l)
	(let* ( 	(stripped-l (string-trim " " l))
				(after (subseq stripped-l (1+  (position #\Space stripped-l)) (length stripped-l))) )
		(format nil (subseq after 0 (position #\Space after)))))

(defun get-values (l)
	(let* ( 	(stripped-l (string-trim " " l)) 
				(sfirst (subseq stripped-l (1+  (position #\Space stripped-l)) (length stripped-l)))
				(ssecond (subseq sfirst (1+  (position #\Space sfirst)) (length sfirst)))
				(sthird (subseq ssecond (1+  (position #\Space ssecond)) (length ssecond))) 
				(value (subseq sthird (+ 2 (position #\) sthird)) (length sthird)) ) 
				(time (subseq sthird 0 (position #\) sthird))) )
		(list time value ) ))

(defun translate-smt2-output (k)
  (let (	(time (make-array (1+ k) :initial-element nil)) )
	
    
    (with-open-file (ff "output.1.txt" :direction :input)	
	    (loop for line = (read-line ff nil)
          while line
          do 
				(if (and (search "define-fun" line) (not (search "zot-" line)))
					(cond
						((search "loopex" line) ) 
						((search "i_loop" line) 
							(let* ( (i-loop-str (string-trim " )" (read-line ff nil))) 
									  (i-loop-num (floor (read-from-string i-loop-str))) )
								(if (and (<= 0 i-loop-num) (<= i-loop-num k)) 
									(setf (aref time i-loop-num) (append (aref time i-loop-num) (list (list "loopex")))))))
											
						(t 
							(let ( (varname (cut-name line) ) (defined-positions (list)) ) 
								(loop
									for i from 0 to (1+ k)  
									for line = (read-line ff nil)
									for elem = (if (search "ite" line) (get-values line) `(,(format nil "~a" -1) ,(string-trim " )" line))) 
									for index = (floor (read-from-string (car elem)))
									while (not (eq index -1))

									do (if (not (eq index -1)) (setq defined-positions (append defined-positions (list index))))
									when (and (<= index k) (<= 0 index))
									do (let ( (vect-el (aref time index)) )
											(setf (aref time index) (append vect-el (list (cons varname (cdr elem))))))
									
									finally (loop for j from 0 to k
											do (if (not (member j defined-positions))
												(setf (aref time j) (append (aref time j) (list (cons varname (cdr elem))))))))
))))))
	;	(loop for i from 0 to k
	;			do (format t "~a ~%" (aref time i) :pretty t))

		(with-open-file (ff "output.hist.txt" 
    			:direction :output 
    			:if-exists :supersede 
    			:if-does-not-exist :create)

      ;; translate encoded items/arrays and dump the history
      (loop
    	 	for i from 0 to k
    	 	do 
    	   	(format t  "------ time ~s ------~%" i)
    	   	(format ff "------ time ~s ------~%" i)
    	   	(loop 
					for e in (aref time i)
					for item = (car e)
					for val = (string-right-trim "?" (cadr e))
					do
						(cond 
							((string= item "loopex") (format t "**LOOP**~%"))
							((numberp (read-from-string val)) (format t "~a = ~a~%" item val) (format ff "~a = ~a~%" item val))
							((string= val "true") (format t "~a~%" (string-upcase item)) (format ff "~a~%" (string-upcase item) ) ) ) )  

			finally
    	   	(format t  "------ end ------~%")
    	   	(format ff "------ end ------~%") ) ) ) )




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
	(force-output)
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
	   		(if (and (not (string= "T" (string-upcase var))) (or (< (length (string-upcase var)) 5) (not (string= "ZOT-" (subseq (string-upcase var) 0 4)))) (string= (subseq bin (- k i) (1+ (- k i))) "1"))
	   			(progn
	   					(format t "  ~a~%" (string-upcase var))
	   					(format ff "  ~a~%" (string-upcase var))
	   				)
	   			)

	   		) var-bin)
	 	)
	(format t  "------ end ------~%")

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

;;<pp.decimal=true>
(defun proc-val (f h)
	(progn
		(setf tmp f)
		(loop while (and (consp (fourth tmp)) (not (eq (first (fourth tmp)) '/)) (not (eq (first (fourth tmp)) '-))) do
			(progn 
				(setf h (append h (list (list (third (second tmp))
					(if (atom (third tmp)) (write-to-string (third tmp)) (write-to-string (third tmp)))))))
				(setf tmp (fourth tmp))))
		(if (or (atom (fourth tmp)) (eq (first (fourth tmp)) '/) (eq (first (fourth tmp)) '-))
			(progn (setf h (append h (list (list (third (second tmp))
				(if (atom (third tmp)) (write-to-string (third tmp)) (write-to-string (third tmp)))))))
			(setf h (append h (list (list 'else 
				(if (atom (fourth tmp)) (write-to-string (fourth tmp)) (write-to-string (fourth tmp))))))))))
	(values h))

(defun proc-mdarfval (f h)
	(progn
		(setf tmp f)
		(loop while (and (consp (fourth tmp)) (not (eq (first (fourth tmp)) '/)) (not (eq (first (fourth tmp)) '-))) do
			(progn
				(setf index-T-V '())
				(loop for x from 1 to (1- (list-length (second tmp))) do
					(setf index-T-V (append index-T-V (list (third (nth x (second tmp)))))))
				(setf h (append h (list (append index-T-V (list (third tmp))))))
				(setf tmp (fourth tmp))))
		(if (or (atom (fourth tmp)) (eq (first (fourth tmp)) '/) (eq (first (fourth tmp)) '-))
			(progn 
				(setf index-T-V '())
				(loop for x from 1 to (1- (list-length (second tmp))) do
					(setf index-T-V (append index-T-V (list (third (nth x (second tmp)))))))
				(setf h (append h (list (append index-T-V (list (third tmp))))))
			(setf h (append h (list (list 'else 
				(if (atom (fourth tmp)) (fourth tmp) (fourth tmp)))))))))
	(values h))
;;</pp.decimal=true>

(defun get-ar-val (ar i)
	(let ((val-list (proc-val (gethash ar ar-val) '())))
	(loop for x from 0 to (1- (list-length val-list)) do
		(if (or (eq (first (nth x val-list)) i) (eq (first (nth x val-list)) 'else)) (progn (setq i (second (nth x val-list))) (return)))))
	(values i))

(defun get-arf-val (ar i)
	(let ((val-list (proc-val (gethash ar arf-val) '())))
	(loop for x from 0 to (1- (list-length val-list)) do
		(if (or (eq (first (nth x val-list)) i) (eq (first (nth x val-list)) 'else)) (progn (setq i (second (nth x val-list))) (return)))))
	(values i))

(defun get-mdarf-val (ar i elements) ;; input: array name, time instant; output format: ((index1 index2 ... indexn value) ...)
	(let ((val-list (proc-mdarfval (gethash ar mdarf-val) '())))
	(loop for x from 0 to (- (list-length val-list) 2) do 
		(when (eq (nth (- (list-length (nth x val-list)) 2) (nth x val-list)) i)
		 (setf elements (append elements (list (append (butlast (butlast (nth x val-list))) (last (nth x val-list)))))))))
	(values elements))


(defun translate-abvsmt2-output (k loops) nil
	;;Checks if the plugin is used only for completeness check where the output.1.txt does not contain any model.
(setf nomodel t)
(with-open-file (stream "output.1.txt" :direction :input)
   (do ((line (read-line stream nil) (read-line stream nil)))
        ((null line))
         (if (string= line "sat")
               (do ((line1 (read-line stream nil) (read-line stream nil)))
                  ((null line1))
                  (when (> (length line1) 5) (when (string= (subseq line1 0 6) "(model") (progn (setf nomodel nil) (return))))))))
(when nomodel (progn (format t "The plugin is used for completeness check, and by default no model is returned. Enable the flag getLFmodel in order to include the model.") (return-from translate-abvsmt2-output nil)))
                  	
(setf *read-default-float-format* 'double-float)
(setq ap-val  (make-hash-table :test #'equal))		;; Key: AP name,											Value: value
(setq ar-val  (make-hash-table :test #'equal))		;; Key: array name,											Value: Z3 output (a chronologically ordered list)
(setq arf-val  (make-hash-table :test #'equal))		;; Key: name of the array as a function,					Value: Z3 output (a chronologically ordered list)
(setq mdarf-val  (make-hash-table :test #'equal))	;; Key: name of the multidimensional array as a function,	Value: Z3 output (a list of lists whose elements are indexes and the value, the last index is the time, and the last element is the value)
(setq smtstr "")
(with-open-file (stream "output.1.txt" :direction :input)
   (do ((line (read-line stream nil) (read-line stream nil)))
        ((null line))
         (if (string= line "sat")
               (do ((line1 (read-line stream nil) (read-line stream nil)))
                  ((null line1))
                  (setq smtstr (concatenate 'string smtstr line1))))))
(setq smtlist (cdr (string-to-list smtstr)))
(setf smtlist (prune-smt smtlist smtlist))
(loop for var in smtlist do
	(if (consp (fourth var))
		(progn (if (eq (second (fourth var)) (read-from-string "BITVEC")) (setf (gethash (second var) ap-val) (fifth var)))
			(if (eq (first (fourth var)) (read-from-string "ARRAY")) (setf (gethash (second var) ar-val) (third (fifth var))))))
	(when (consp (third var))
		(if (= (length (third var)) 1)
			(setf (gethash (second var) arf-val) (fifth var))
			(setf (gethash (second var) mdarf-val) (fifth var)))))
(loop for key being the hash-keys of ar-val do
	(loop for var in smtlist do 
		 (if (eq (gethash key ar-val) (second var)) (setf (gethash key ar-val) (fifth var)))))
(if (eq loops :t)
	(setq iloops (gethash 'ILOOPS ap-val))
	(setq i_loop (gethash 'I_LOOP ap-val)))
(remhash 'I_LOOP ap-val)
(with-open-file (ff "output.hist.txt" 
    			:direction :output 
    			:if-exists :supersede 
    			:if-does-not-exist :create)
	 (loop for i from 0 to k
	 	do
	 	(format t  "------ time ~s ------~%" i)
	   	(format ff "------ time ~s ------~%" i)
	   	
	   	(if (eq loops :t)
	   		(if (eq (get-bv-val (gethash 'ILOOPS ap-val) i) '1) (progn (format t "**LOOP**~%")(format ff "**LOOP**~%")))
	   		(if (= i i_loop) (progn (format t "**LOOP**~%")(format ff "**LOOP**~%"))))

	   	(maphash #'(lambda (ap bin) 
	   		(if (and (eq (get-bv-val bin i) '1) (not (eq ap t)))
	   			(progn
	   					(format t "  ~a~%" (string-upcase ap))
	   					(format ff "  ~a~%" (string-upcase ap))))
	   		) ap-val)
	   	(maphash #'(lambda (ar val) 
   			(progn
   					(format t "  ~a = ~a~%" ar (get-ar-val ar i))
   					(format ff "  ~a = ~a~%" ar (get-ar-val ar i)))
	   		) ar-val)
	   	(maphash #'(lambda (ar val) 
   			(progn
   					(format t "  ~a = ~a~%" ar (get-arf-val ar i))
   					(format ff "  ~a = ~a~%" ar (get-arf-val ar i)))
	   		) arf-val)

	   	(maphash #'(lambda (ar val) 
   			(progn
   				(let ((val-list (get-mdarf-val ar i '())))
   				(loop for x from 0 to (1- (list-length val-list)) do 
				(format t "  ~a~a = ~s~%" ar (butlast (nth x val-list)) (first (last (nth x val-list))))
				(format ff "  ~a~a = ~s~%" ar (butlast (nth x val-list)) (first (last (nth x val-list))))
				)))
	   		) mdarf-val)

	 	)
	(format t  "------ end ------~%")
	(format ff "------ end ------~%"))
)
;;</arith-bitvector>
(defun pht (h) (maphash 'print-hash-entry h))

(defun print-hash-entry (key value)
  (fresh-line)
  (format t "Key: ~S " key)
  (format t "Value: ~S" value)
  (fresh-line))
