; To install it:
; ln -s zot-dir/b-zot-sys.asd /usr/share/common-lisp/systems/

(defsystem ezot
	   :name "eZot"
	   :version "0.1"
	   :author "Matteo Pradella"
	   :license "GPL v2"
	   :long-description "A simple and adaptable satisfiability checker,
	   eventuality encoding"

	   :components ((:file "trio-utils")
			(:file "kripke")
			(:file "sat-interface" :depends-on ("trio-utils"
							    "kripke"))
			(:file "ezot" :depends-on 
			       ("trio-utils"
				"kripke"
				"sat-interface"))))
