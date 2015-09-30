; To install it:
; ln -s zot-dir/b-zot-sys.asd /usr/share/common-lisp/systems/

(defsystem ae2bvzot
	   :name "ae2bvzot"
	   :version "0.1"
	   :author "Mohammad Mehdi Pourhashem Kallehbasti"
	   :license ""
	   :long-description "Extended bvzot to cover arithmetic constraints."
	  ; :depends-on (:bordeaux-threads)	
	   :components ((:file "trio-utils")
			(:file "kripke")
			(:file "smt-interface" :depends-on 
				("kripke" "trio-utils"))		
		
			(:file "ae2bvzot" :depends-on 
			       ("trio-utils"
				"smt-interface"
				"kripke"))))
