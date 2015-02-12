(defsystem ap-zot
	   :name "Ap-Zot"
	   :version "0.1"
	   :author "Matteo Pradella"
	   :license "GPL v2"

	   :components ((:file "trio-utils")
			(:file "ap-zot" :depends-on
			       ("trio-utils"))))



