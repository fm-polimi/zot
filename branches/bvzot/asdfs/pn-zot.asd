(defsystem pn-zot
	   :name "Pn-Zot"
	   :version "0.1"
	   :author "Marcello Bersani"
	   :license "GPL v2"

	   :components ((:file "trio-utils")
			(:file "ap-zot")
			(:file "pn-zot" :depends-on
			       ("trio-utils"
				"ap-zot"))))



