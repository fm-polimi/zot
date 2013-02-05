(defsystem soloist
	   :name "Soloist"
	   :version "0.1"
	   :author "Srdjan Krstic"
	   :license "GPL v2"

	   :components ((:file "trio-utils")
			(:file "soloist" :depends-on
			       ("trio-utils"))))



