; To install it:
; ln -s zot-dir/b-zot-sys.asd /usr/share/common-lisp/systems/

(defsystem "ae2zotdreal"
	   :name "ae2zotdreal"
	   :version "0.1"
	   :author "Matteo Pradella"
	   :license "GPL v2"
	   :long-description "A simple and adaptable satisfiability checker,
	   eventuality encoding"
	  ; :depends-on (:bordeaux-threads)	
	   :components ((:file "trio-utils")
			(:file "kripke")
			(:file "smt-interface" :depends-on ("kripke" "trio-utils"))		
		
			(:file "ae2zotdreal" :depends-on ("trio-utils" "smt-interface" "kripke"))))
