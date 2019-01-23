; To install it:
; ln -s zot-dir/b-zot-sys.asd /usr/share/common-lisp/systems/

(defsystem ae2zot-i
	   :name "Arithmetical Interpolating Zot"
	   :version "0.1"
	   :author "Marcello M. Bersani"
	   :license "GPL v2"
	   :long-description "A simple and adaptable satisfiability checker, eventuality encoding"
	  ; :depends-on (:bordeaux-threads)	
	   :components (					
							(:file "trio-utils")
							(:file "kripke-i")
							(:file "smt-interface-i" :depends-on ("kripke-i" "trio-utils"))			
							(:file "ae2zot-i" :depends-on ("trio-utils" "smt-interface-i" "kripke-i"))))
