; To install it:
; ln -s zot-dir/b-zot-sys.asd /usr/share/common-lisp/systems/

(defsystem bvzot
	   :name "BVZot"
	   :version "0.1"
	   :author "Mohammad Mehdi Pourhashem Kallehbasti"
	   :license ""
	   :long-description "A Satisfiability checker based on QF_BV"
	   :components ((:file "trio-utils")
			(:file "kripke")
			(:file "smt-interface"
			       :depends-on 
			       ("trio-utils"
				"kripke"))
		
			(:file "bvzot" :depends-on 
			       ("trio-utils"
				"kripke"
				"smt-interface"))))
