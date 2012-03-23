; To install it:
; ln -s zot-dir/b-zot-sys.asd /usr/share/common-lisp/systems/

(defsystem ae2zot-r
	   :name "SMTeeZot"
	   :version "0.1"
	   :author "Matteo Pradella"
	   :license "GPL v2"
	   :long-description "A simple and adaptable satisfiability checker,
	   eventuality encoding"
	  ; :depends-on (:bordeaux-threads)	
	   :components ((:file "trio-utils-r")
			(:file "kripke")
			(:file "smt-interface" :depends-on 
				("kripke" "trio-utils-r"))		
		
			(:file "ae2zot-r" :depends-on 
			       ("trio-utils-r"
				"smt-interface"
				"kripke"))))
