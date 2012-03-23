; Alternating Bit Protocol 4 example -- taken and adapted from NuSMV

(asdf:operate 'asdf:load-op 'ezot)
(use-package :trio-utils)

(defvar sender.state-d '(get send wait_for_ack))
(define-variable sender.state sender.state-d)

(defvar data-d (loop for x from 0 to 15 collect x))
(define-variable sender.data data-d)

(defvar s2r-tag-d '(mt data0 data1 error))
(defvar r2s-tag-d '(mt ack0 ack1 error))

(define-variable s2r_in.tag s2r-tag-d)
(define-variable r2s_in.tag r2s-tag-d)
(define-variable s2r_out.tag s2r-tag-d)
(define-variable r2s_out.tag r2s-tag-d)

(define-variable s2r_in.data data-d)
(define-variable s2r_out.data data-d)
(define-variable r2s_in.data data-d)
(define-variable r2s_out.data data-d)

(defvar receiver.state-d '(receive deliver send_ack))
(define-variable receiver.state receiver.state-d)

(define-variable receiver.data data-d)



; --- SENDER CODE ---

(defvar sender 
  (list
    (case-clause ; -- state
      (sender.state-is 'get)		(next (sender.state-is 'send))
      (&& (sender.state-is 'send)
	  (s2r_in.tag-is 'mt))		(next (sender.state-is 'wait_for_ack))
      (&& (sender.state-is 'send)
	  (!! (s2r_in.tag-is 'mt)))	(next (sender.state-is 'send))

      (&& (sender.state-is 'wait_for_ack)
	  (|| (&& (!! 'sender.abp) (r2s_out.tag-is 'ack0))
	      (&& 'sender.abp (r2s_out.tag-is 'ack1))))	(next (sender.state-is 'get))

      (&& (sender.state-is 'wait_for_ack)
	  (|| (&& 'sender.abp (r2s_out.tag-is 'ack0))
	      (&& (!! 'sender.abp) (r2s_out.tag-is 'ack1))
	      (r2s_out.tag-is 'error)))	(next (sender.state-is 'send))

      (&& (sender.state-is 'wait_for_ack)
	  (r2s_out.tag-is 'mt))		(next (sender.state-is 'wait_for_ack)))

    (case-clause ; --- abp
      (&& (sender.state-is 'wait_for_ack)
	  (|| (&& (!! 'sender.abp) (r2s_out.tag-is 'ack0))
	      (&& 'sender.abp (r2s_out.tag-is 'ack1))))  (<-> 'sender.abp (next (!! 'sender.abp)))

      :else-clause		(<-> 'sender.abp (next 'sender.abp)))

    (case-clause ; --- data
      (&& (sender.state-is 'wait_for_ack)
	  (|| (&& (!! 'sender.abp)(r2s_out.tag-is 'ack0))
	      (&& 'sender.abp (r2s_out.tag-is 'ack1)))) (-E- x data-d (sender.data-is x))
      :else-clause		(-A- x data-d (-> (sender.data-is x)
						  (next (sender.data-is x)))))

    (case-clause ; --- s2r_in.tag
      (&& (sender.state-is 'send)
	  (s2r_in.tag-is 'mt))
      (case-clause 
	'sender.abp 		(next (s2r_in.tag-is 'data1))
	(!! 'sender.abp) 	(next (s2r_in.tag-is 'data0)))

      :else-clause		(-A- x s2r-tag-d (-> (s2r_in.tag-is x)
						     (next (s2r_in.tag-is x)))))

    (case-clause ; --- s2r_in.data
      (&& (sender.state-is 'send)
	  (s2r_in.tag-is 'mt))	(-A- x data-d (-> (sender.data-is x)
						  (next (s2r_in.data-is x))))
      :else-clause		(-A- x data-d (-> (s2r_in.data-is x)
						  (next (s2r_in.data-is x)))))

    (case-clause ; --- r2s_out.tag
      (sender.state-is 'wait_for_ack)	(next (r2s_out.tag-is 'mt))
      :else-clause			(-A- x r2s-tag-d (-> (r2s_out.tag-is x)
							     (next (r2s_out.tag-is x)))))))



; --- RECEIVER CODE ---

(defvar receiver
  (list
    (case-clause ; --- state
      (&& (receiver.state-is 'receive)
	  (|| (&& (!! 'receiver.abp)(s2r_out.tag-is 'data0))
	      (&& 'receiver.abp (s2r_out.tag-is 'data1))))	(next (receiver.state-is 'deliver))

      (&& (receiver.state-is 'receive)
	  (|| (&& 'receiver.abp (s2r_out.tag-is 'data0))
	      (&& (!! 'receiver.abp) (s2r_out.tag-is 'data1))
	      (s2r_out.tag-is 'error)))				(next (receiver.state-is 'send_ack))

      (&& (receiver.state-is 'receive)
	  (s2r_out.tag-is 'mt))		(next (receiver.state-is 'receive))

      (receiver.state-is 'deliver)	(next (receiver.state-is 'send_ack))

      (&& (receiver.state-is 'send_ack)
	  (r2s_in.tag-is 'mt))		(next (receiver.state-is 'receive))

      (&& (receiver.state-is 'send_ack)
	  (!! (r2s_in.tag-is 'mt)))	(next (receiver.state-is 'send_ack)))

    (case-clause ; --- abp
      (receiver.state-is 'deliver)	(<-> 'receiver.abp (next (!! 'receiver.abp)))
      :else-clause			(<-> 'receiver.abp (next 'receiver.abp)))

    (case-clause ; --- data
      (&& (receiver.state-is 'receive)
	  (|| (&& (!! 'receiver.abp)(s2r_out.tag-is 'data0))
	      (&& 'receiver.abp (s2r_out.tag-is 'data1))))	(-A- x data-d
								     (-> (s2r_out.data-is x)
									 (next (receiver.data-is x))))
      :else-clause		(-A- x data-d (-> (receiver.data-is x)
						  (next (receiver.data-is x)))))

    (case-clause ; --- s2r_out.tag
      (receiver.state-is 'receive)	(next (s2r_out.tag-is 'mt))
      :else-clause			(-A- x s2r-tag-d (-> (s2r_out.tag-is x)
							     (next (s2r_out.tag-is x)))))

    ; ??
    ;(-A- x data-d (-> (s2r_out.data-is x) (next (s2r_out.data-is x))))

    (case-clause ; --- r2s_in.tag
      (&& (receiver.state-is 'send_ack)
	  (r2s_in.tag-is 'mt))	
      (case-clause 
	'receiver.abp 	 	(next (r2s_in.tag-is 'ack0))
	(!! 'receiver.abp) 	(next (r2s_in.tag-is 'ack1)))

      :else-clause		(-A- x r2s-tag-d (-> (r2s_in.tag-is x)
						     (next (r2s_in.tag-is x)))))))



(defvar r2s/s2r
  (list
    ; --- R2S ---
    (case-clause
      (&& (r2s_out.tag-is 'mt)
	  (!! (r2s_in.tag-is 'mt)))	
      (|| (next (r2s_out.tag-is 'error))
	  (-A- x r2s-tag-d (-> (r2s_in.tag-is x)
			       (next (r2s_out.tag-is x)))))

      :else-clause		(-A- x r2s-tag-d (-> 
						   (r2s_out.tag-is x)
						   (next (r2s_out.tag-is x)))))
    (case-clause
      (&& (r2s_out.tag-is 'mt)
	  (!! (r2s_in.tag-is 'mt)))	(next (r2s_in.tag-is 'mt))
      :else-clause		(-A- x r2s-tag-d (-> 
						   (r2s_in.tag-is x)
						   (next (r2s_in.tag-is x)))))

    ; --- S2R ---
    (case-clause
      (&& (s2r_out.tag-is 'mt)
	  (!! (s2r_in.tag-is 'mt)))	
      (|| (next (s2r_out.tag-is 'error))
	  (-A- x s2r-tag-d (-> (s2r_in.tag-is x)
			       (next (s2r_out.tag-is x)))))

      :else-clause		(-A- x s2r-tag-d (-> 
						   (s2r_out.tag-is x)
						   (next (s2r_out.tag-is x)))))
    (case-clause
      (&& (s2r_out.tag-is 'mt)
	  (!! (s2r_in.tag-is 'mt)))	(next (s2r_in.tag-is 'mt))
      :else-clause		(-A- x s2r-tag-d (-> 
						   (s2r_in.tag-is x)
						   (next (s2r_in.tag-is x)))))
    (case-clause
      (&& (s2r_out.tag-is 'mt)
	  (!! (s2r_in.tag-is 'mt)))	(-A- x data-d (->
							(s2r_in.data-is x)
							(next (s2r_out.data-is x))))
      :else-clause			(-A- x data-d (->
							(s2r_out.data-is x)
							(next (s2r_out.data-is x)))))))


(defvar rand-init
  (&& (sender.state-is 'get) ;(-E- x sender.state-d (sender.state-is x))
      (!! 'sender.abp)
      (-E- x data-d (sender.data-is x))
      ;(receiver.state-is 'receive) 
      (-E- x receiver.state-d (receiver.state-is x))
      (!! 'receiver.abp)
      (-E- x data-d (receiver.data-is x))
      (-E- x s2r-tag-d (s2r_in.tag-is x))
      (-E- x data-d (s2r_in.data-is x))
      (-E- x s2r-tag-d (s2r_out.tag-is x))
      (-E- x data-d (s2r_out.data-is x))
      (-E- x r2s-tag-d (r2s_in.tag-is x))
      (-E- x r2s-tag-d (r2s_out.tag-is x))))

(defvar init
  (&& ;(sender.state-is 'get)
      (-E- x sender.state-d (sender.state-is x))
      (!! 'sender.abp)
      (sender.data-is 0)
      ;(receiver.state-is 'receive)
      (-E- x receiver.state-d (receiver.state-is x))
      (!! 'receiver.abp)
      (receiver.data-is 0)
      (s2r_in.tag-is 'mt)
      (s2r_in.data-is 0)
      (s2r_out.tag-is 'mt)
      (s2r_out.data-is 0)
      (r2s_in.tag-is 'mt)
      (r2s_out.tag-is 'mt) ))


(defvar fair
  (&&
    ;(alwf (somf (sender.state-is 'get)))

    (somf (||  ; questa "proprieta`" sembra evidenziare il problema...
	    (r2s_in.tag-is 'mt)
	    (s2r_in.tag-is 'mt)
	    (r2s_out.tag-is 'mt)
	    (s2r_out.tag-is 'mt)))
      
    (alwf (somf (|| (r2s_out.tag-is 'ack0)
		    (r2s_out.tag-is 'ack1))))
    (alwf (somf (|| (s2r_out.tag-is 'data0)
		    (s2r_out.tag-is 'data1))))))



(ezot:zot 
  20
  (&& (yesterday rand-init) fair)
  :transitions (append sender receiver r2s/s2r)
  ;:loop-free t
  )

