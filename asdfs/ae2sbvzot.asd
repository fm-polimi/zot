; To install it:
; ln -s zot-dir/b-zot-sys.asd /usr/share/common-lisp/systems/

(defsystem ae2sbvzot
	   :name "ae2sbvzot"
	   :version "0.1"
	   :author "Mohammad Mehdi Pourhashem Kallehbasti"
	   :license ""
	   :long-description "Extended sbvzot to cover arithmetic constraints."
	  ; :depends-on (:bordeaux-threads)	
	   :components ((:file "trio-utils")
			(:file "kripke")
			(:file "smt-interface" :depends-on 
				("kripke" "trio-utils"))		
		
			(:file "ae2sbvzot" :depends-on 
			       ("trio-utils"
				"smt-interface"
				"kripke"))))
