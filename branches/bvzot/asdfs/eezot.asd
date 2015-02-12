; To install it:
; ln -s zot-dir/b-zot-sys.asd /usr/share/common-lisp/systems/

(defsystem eezot
	   :name "eeZot"
	   :version "0.1"
	   :author "Matteo Pradella"
	   :license "GPL v2"
	   :long-description "A simple and adaptable satisfiability checker,
	   eventuality encoding"
	  ; :depends-on (:bordeaux-threads)	
	   :components ((:file "trio-utils")
			(:file "kripke")
			(:file "sat-interface" :depends-on ("trio-utils"
							    "kripke"))
			(:file "eezot" :depends-on 
			       ("trio-utils"
				"kripke"
				"sat-interface"))))
