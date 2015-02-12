; Sat-Interface, version 20080308

; --------------------------------------------------------------------------
;
; Copyright (C) 2006-2008 Matteo Pradella (pradella@elet.polimi.it)
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

(defpackage :sat-interface
  (:use :common-lisp
	:kripke
	:trio-utils)
  (:export :to-sat-and-back
	   :*zot-solver*
	   :*n-threads*
	   :*zot-debug*
	   :*just-back*
	   :*show-pre-cnf-size*
	   :minisat
	   :miraxt
	   :zchaff
	   :picosat
	   )) 
 

(in-package :sat-interface)

;(declaim (optimize (speed 3)(space 1)(safety 0)(debug 0)))


; --- parameters ---
(defvar *zot-solver* :minisat) ; one of (:miraxt :minisat :zchaff :picosat)
(defvar *n-threads*  2)        ; number of used threads with :miraxt
(defvar *zot-debug*  nil)      ; output history in debugging form?
(defvar *just-back*  nil)      ; if t, bypass call to sat2cnf and sat-solver
                               ; (useful to re-parse an existing output.sat.txt)
(defvar *show-pre-cnf-size* nil)    ; for internal use


; --- Back-parser ---

(defun tohist-debug (ff h the-kripke)
  (loop
     with val = 0
     with tme = -1
     with nv  = (kripke-numvar the-kripke)
     for x in h
     do 
       (setf val (back-call the-kripke x))
     when (= (back-call-time the-kripke x) 
	     (1+ tme))
     do
       (incf tme)
       (unless (> tme (1+ (kripke-k the-kripke)))
	 (format t  "~%------ time ~S ------~%" tme)
	 (format ff "~%------ time ~S ------~%" tme))

     when  ; low level debugging
       (and (or (eq *zot-debug* :indeed)
		(symbolp val)) 
	    (>= (1+ (kripke-k the-kripke)) tme 0))
     do 
       (format t  "~S : ~S > ~S ~%" x (mod x nv) 
	       (if (symbolp val) 
		   val 
		   (if (numberp (car val))
		       (cdr val)
		       (list (car val)))))
       (format ff "~S : ~S > ~S ~%" x (mod x nv)
	       (if (symbolp val) 
		   val 
		   (if (numberp (car val))
		       (cdr val)
		       (list (car val)))))

     finally
       (format t  "~%------ end ------~%")
       (format ff "~%------ end ------~%")))


(defun tohist (ff h the-kripke)
  (let ((ht (make-hash-table :test #'equal))
	(name nil))

    (maphash (lambda (key val) (declare (ignore val))
	       (setf (gethash key ht) 0)) *items*)
    (loop
      with val = 0
      with tme = -1
      for x in h
      do 
      (setf val (back-call the-kripke x))
      when (= (back-call-time the-kripke x) 
	      (1+ tme))
      do
      (incf tme)
      (unless (= tme 0)
	(maphash (lambda (item val)
		   (format t  "  ~S = ~S~%" (intern item) (elt (gethash item *items*) val))
		   (format ff "  ~S = ~S~%" (intern item) (elt (gethash item *items*) val))
		   (setf (gethash item ht) 0)
		   ) ht))
      (unless (> tme (kripke-k the-kripke))
	(format t  "~%------ time ~S ------~%" tme)
	(format ff "~%------ time ~S ------~%" tme))
      when (and (symbolp val) 
		(>= (kripke-k the-kripke) tme 0))
      do 
      (setf name (string val))
      (setf name (string-trim '(#\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9 #\0) name))
      (setf name (string-trim '(#\_) name))
      (if (gethash name ht)
	(setf (gethash name ht) 
	      (+ (gethash name ht) 
		 (expt 2 (parse-integer (subseq (string val)(1+ (length name)))))))
	(progn  
	  (format t  "  ~S~%" val)
	  (format ff "  ~S~%" val)))
      finally
      (format t  "~%------ end ------~%")
      (format ff "~%------ end ------~%"))))



(defun read-solver-output (port maxval)
  "returns either nil, when UNSAT, or (t list-of-numbers) when SAT"  
  (ecase *zot-solver*
    
    (:minisat
     (if (not (eq (read port) 'UNSAT))
	 (labels ((the-loop  (c lst)
		    (if (<= (abs c) maxval) 
			(the-loop 
			 (read port) 
			 (if (>= c 0) 
			     (append lst (list c))
			     lst))
			(list t lst)))) ; sat + list
	   (the-loop (read port) nil))
	 nil))
  
    (:miraxt
     (if
      (loop with data = nil
	 do (setf data (read-line port))
	 when (eql #\s (elt data 0)) do
	   (if (eql #\U (elt data 2)) ; unsat
	       (return nil)
	       (return t)))
      
      (progn  ; sat
	(read port) ; first 'v'
	(loop with out = nil
	   with data = nil
	   do (setf data (read port))
	   when (> (abs data) maxval) do
	     (return (list t out)) ; t for sat, results in out
	   when (>= data 0) do
	     (setf out (append out (list data)))))
    
      nil ; unsat
      ))

    (:picosat
     (if
      (loop with data = nil
	 do (setf data (read-line port))
	 when (eql #\s (elt data 0)) do
	   (if (eql #\U (elt data 2)) ; unsat
	       (return nil)
	       (return t)))
      
      (progn  ; sat
	(loop with out = nil
	   with data = nil
	   do (setf data (read port))
	   when (and (numberp data)
		     (> (abs data) maxval)) do
	     (return (list t out)) ; t for sat, results in out
	   when (and (numberp data)(>= data 0)) do
	     (setf out (append out (list data)))))
    
      nil ; unsat
      ))

    (:zchaff
     (if
      (loop with data = nil
	 do (setf data (read-line port))
	 when (and (> (length data) 0) 
		   (eql #\I (elt data 0))) do
	   (if (eql #\S (elt data 9)) ; sat
	       (return t)
	       (return nil)))
      
      (progn  ; sat
	(loop with out = nil
	   with data = nil
	   do (setf data (read port))
	   when (> (abs data) maxval) do
	     (return (list t out))  ; t for sat, results in out
	   when (>= data 0) do
	     (setf out (append out (list data)))))
      
      nil ; unsat
      ))))


(defun back-parse-it (the-kripke infile)
  (let ((port0 (open infile :direction :input)))
    
    (unwind-protect
	 (let ((h (read-solver-output port0 (kripke-maximum the-kripke))))
	   (if h ; nil = unsat, (t list-of-values) = sat with constraints list-of-values
	       (with-open-file (ff "output.hist.txt" 
				   :direction :output 
				   :if-exists :supersede 
				   :if-does-not-exist :create)
		 (if *zot-debug* 
		     (tohist-debug ff (cadr h) the-kripke) 
		     (tohist       ff (cadr h) the-kripke))
		 t)
	       (progn
		 (format t "~%---------UNSAT---------~%")
		 nil)))
      (close port0))))


;; old, original version
;; (defun formula-size-old (f) ;; Number of nodes
;;   (if (atom f) 1
;;       (1+ (apply #'+ (mapcar #'formula-size (cdr f))))))

;; alternative version with explicit stack
(defun formula-size (f) 
  "returns # of nodes of formula f"

  (declare (optimize (safety 0)(debug 0)(speed 3)))
  (loop 
     with stack = (list f)
     with res = (the (signed-byte 32) 0)  ;; result
     with curr = nil  ;; current node
     do
       (setq curr (pop stack))
       (incf (the (signed-byte 32) res))
       (unless (atom curr)
	 (loop for x in (cdr curr) do 
	      (push x stack)))
     unless stack do
       (return res)))


; --- interface: main procedure ---

(defun to-sat-and-back (the-kripke)

  (when *zot-debug*
    (format t "~%~S~%"
	    (kripke-list the-kripke)))

  (when *show-pre-cnf-size*  ;; for internal use
    (format t "~%Pre-CNF formula size: ~S nodes, number of literals: ~S ~%"
	    (formula-size (kripke-formula the-kripke))
	    (kripke-maximum the-kripke)))
  
  (unless *just-back*
    (when (probe-file "output.sat.txt")
      (delete-file "output.sat.txt"))

    (let ((mst 
	    (ecase *zot-solver*
	      (:picosat "picosat -v output.cnf.txt -o output.sat.txt")
	      (:minisat "minisat output.cnf.txt output.sat.txt")
	      (:miraxt  
		(format nil "MiraXTSimp output.cnf.txt ~S > output.sat.txt" *n-threads*))
	      (:zchaff  "zchaff output.cnf.txt > output.sat.txt"))))
      #+(or :sbcl :cmu) (declare (ignore mst))
      #+(or :sbcl :cmu) 
      (let ((run-it #+sbcl #'sb-ext:run-program #+cmu #'extensions:run-program))
	(format t "translating into CNF...")
	(time (translate-to-CNF the-kripke))
	(format t "This was zot2cnf. Solver time coming next.~%")
	(time
	  (ecase *zot-solver*
	    (:picosat
	      (funcall run-it "picosat" '("-v" "output.cnf.txt" "-o" "output.sat.txt") 
		       :input t :output t :error t #+sbcl :search #+sbcl t))
	    (:minisat
	      (funcall run-it "minisat" '("output.cnf.txt" "output.sat.txt") 
		       :input t :output t :error t #+sbcl :search #+sbcl t))

	    (:miraxt
	      (funcall run-it "MiraXTSimp" (list "output.cnf.txt" (format nil "~S" *n-threads*)) 
		       :input t 
		       #+sbcl :search #+sbcl t 
		       :output "output.sat.txt"
		       :if-output-exists :supersede))
	    (:zchaff
	      (funcall run-it "zchaff" '("output.cnf.txt") 
		       :input t 
		       #+sbcl :search #+sbcl t 
		       :output "output.sat.txt"
		       :if-output-exists :supersede)))))

      #-(or :sbcl :cmu)
      (let ((call-shell #+clisp   #'ext:shell
			#+ecl     #'ext:system
			#+gcl     #'system
			#+abcl    #'ext:run-shell-command
			#+clozure #'ccl::os-command))

	(time (translate-to-CNF the-kripke))
	(format t "This was zot2cnf. Solver time coming next.~%")
	(time (funcall call-shell mst)))))

  (unless (probe-file "output.sat.txt")
    (error "Error: the SAT-solver is not installed"))

  (back-parse-it the-kripke "output.sat.txt"))




; --- LPROP2CNF ---
; written by Stefano Riboni (stefano_riboni@hotmail.com)
; optimized by Matteo Pradella

(defun translate-to-CNF (the-kripke)
  (declare (optimize (safety 0)(debug 0)(speed 3)))

  (let ((file (open "output.cnf.txt" 
		    :direction :output :if-exists :supersede :if-does-not-exist :create)))
    (if file
      (let ((max-n       (list-length (cdr (the cons (kripke-formula the-kripke)))))
	    (n           (the (signed-byte 32) 0))
	    (num-clauses (the (signed-byte 32) 0))
	    (max-cnf-var (the (signed-byte 32) (kripke-maximum the-kripke)))
	    (reused-var  (the (signed-byte 32) 0))
	    (cont-p      (the (signed-byte 32) 0))
	    (clause-hash (make-hash-table :test #'equal)))

	(labels ((opposite-literals (ids) ; return true if n and -n are in the same clause
		   (declare (type cons ids))
		   (let ((i 0) (j (- (list-length ids) 1)) (elem-i 0) (elem-j 0)) 
		     (loop
			(setf elem-i (nth i ids))
			(setf elem-j (nth j ids))
			(if (or (>= i j) 
				(> (the (signed-byte 32) elem-i) 0) 
				(< (the (signed-byte 32) elem-j) 0))
			    (return nil))
			(if (= (+ elem-j elem-i) 0)
			    (return t))
			(if (< (- elem-i) elem-j)
			    (decf j)
			    (incf i)))))

		 (write-and (id-code ids)
		   (declare (type cons ids)
			    (type (signed-byte 32) id-code))

		   (incf (the (signed-byte 32) num-clauses) (1+ (list-length ids)))
		   (format (the stream file) "~a " id-code)
		   (mapcar (lambda (id) (format (the stream file) "~a " (- (the (signed-byte 32) id)))) ids)
		   (format (the stream file) "0~%")
		   (dolist (id ids)
		     (format (the stream file) "~a ~a 0~%" (- id-code) id)))

		 (write-or (id-code ids)
		   (declare (type (signed-byte 32) 
				  id-code)
			    (type cons ids))

		   (incf (the (signed-byte 32) num-clauses) (1+ (list-length ids)))
		   (format (the stream file) "~a " (- id-code))
		   (mapcar (lambda (id) (format (the stream file) "~a " (the (signed-byte 32) id))) ids)
		   (format (the stream file) "0~%")       
		   (dolist(id ids)
		     (format (the stream file) "~a ~a 0~%" id-code (- (the (signed-byte 32) id)))))

		 (toCNF-file (f &optional (top-level nil))
		   (cond
		     ((or (typep f 'boolean)
			  (integerp f))      f)
		     (t 
		      (let ((car-f (car f))
			    (cdr-f (cdr f)))
			(ecase car-f
			  (not       
			   (cond 
			     ((typep (second f) 'boolean) (not (second f)))
			     ((integerp (second f)) (- (the (signed-byte 32) (second f))))
			     (t
			      (let ((ris (toCNF-file (second f))))
				(cond
				  ((typep ris 'boolean) (not ris))
				  ((integerp ris) (- (the (signed-byte 32) ris))))))))
			  ((and or)
			   (let ((ids nil))
			     (when top-level
			       (format t "~%0%    100%~%")
			       (format t "----------~%"))
			     (if (eq car-f 'and)
				 (if (null cdr-f)       ;(car f) equal to 'and
				     (return-from toCNF-file t)
				     (dolist (fi cdr-f)
				       (when top-level
					 (incf (the (signed-byte 32) n)) 
					 (let ((new (the (signed-byte 32) (floor (* 10 n) max-n))))
					   (when (> new cont-p)
					     (format t "*")
					     (force-output)
					     (setf cont-p new))))
				       (let ((ris (toCNF-file fi)))
					 (cond 
					   ((eql nil ris) (return-from toCNF-file nil))
					   ((eql t   ris) t) ;a true literal is ignored in AND expressions
					   ((integerp ris) (push ris ids))))))
				 (if (null cdr-f)        ;(car f) equal to 'or
				     (return-from toCNF-file nil)
				     (dolist (fi cdr-f)
				       (let ((ris (toCNF-file fi)))
					 (cond 
					   ((eql nil ris) t) ;a false literal is ignored in OR expressions
					   ((eql t   ris) (return-from toCNF-file t))
					   ((integerp ris) (push ris ids)))))))
			     (cond
			       ((null ids) (eq car-f 'and))
			       ((= (list-length (the cons ids)) 1) (car ids))
			       (t (setf ids (remove-duplicates (sort ids #'<)))
				  (cond
				    ((= (list-length ids) 1) (car ids))
				    ((opposite-literals ids)
				     (ecase car-f
				       (and nil)
				       (or  t)))
				    (t  (let* ((hash-item (cons car-f ids))
					       (reuse-code (gethash  hash-item clause-hash)))
					  (if reuse-code
					      (progn 
						(incf (the (signed-byte 32) reused-var))
						reuse-code)
					      (let ((id-code (setf (gethash hash-item clause-hash) 
								   (incf (the (signed-byte 32) max-cnf-var)))))
						(ecase car-f
						  (and (write-and id-code ids))
						  (or  (write-or id-code ids)))
						id-code)))))))))))))))  ;  functions definition end

	  ;; padding to be re-written with p cnf ...
	  (format (the stream file) "                                                                               ~%")
	  (let ((root (toCNF-file (kripke-formula the-kripke) t)))
	    (format (the stream file) "~a 0~%" root)
	    (incf (the (signed-byte 32) num-clauses))
	    (close (the stream file))
	    (when (integerp root) 
	      (setf (the stream file) (open "output.cnf.txt" :direction :output :if-exists :overwrite))
	      (format (the stream file) "p cnf ~a ~a" (1+ (the (signed-byte 32) max-cnf-var)) num-clauses)
	      (format t "~%")
	      (format t "Reused variables: ~a ~%" reused-var)
	      (format t "Greatest used variable: ~a ~%" max-cnf-var)
	      (format t "Generated clauses: ~a ~%" num-clauses)
	      )
	    (when (or (eql root nil) (eql root t))
	      (setf (the stream file) (open "output.cnf.txt" :direction :output :if-exists :supersede))
	      (when (eql root nil)
		(format (the stream file) "p cnf 1 2~%1 0~%-1 0~%")
		(format t "ROOT FALSE~%"))
	      (when (eql root t)
		(format (the stream file) "p cnf 1 1~%1 -1 0~%")
		(format t "ROOT TRUE~%")))
	    (close file))))

      ;; file == null
      (error "Sorry, I cannot create the output file~%"))))


