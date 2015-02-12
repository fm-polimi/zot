(defsystem soloistoc
	   :name "Soloist over clocks"
	   :version "0.1"
	   :author "Srdjan Krstic"
	   :license "GPL v2"

	   :components ((:file "kripke")
			(:file "trio-utils")
			(:file "smt-interface" :depends-on 
				("kripke" "trio-utils"))				
			(:file "solzot" :depends-on 
			       ("trio-utils"
				"smt-interface"
				"kripke"))
			(:file "soloistoc" :depends-on
			       ("trio-utils"
				"solzot"))))


			
