(defsystem ta-zot
	   :name "Ta-Zot"
	   :version "0.1"
	   :author "Matteo Pradella"
	   :license "GPL v2"

	   :components ((:file "trio-utils")
			(:file "ap-zot")
			(:file "ta-zot" :depends-on
			       ("trio-utils"
				"ap-zot"
				))))
