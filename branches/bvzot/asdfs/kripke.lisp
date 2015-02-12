; MPradella, data structures for ZOT and variants
; December 2006

; --------------------------------------------------------------------------
;
; Copyright (C) 2006 Matteo Pradella (pradella@elet.polimi.it)
;
; This program is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation; either version 2 of the License, or
; (at your option) any later version.
;
; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.
;
; You should have received a copy of the GNU General Public License
; along with this program; if not, write to the Free Software
; Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
;
; --------------------------------------------------------------------------

(in-package :cl-user)

(defpackage :kripke
  (:use :common-lisp)
  (:export :kripke
	   :kripke-k
	   :kripke-numvar
	   :kripke-list
	   :kripke-back
	   :kripke-prop
	   :kripke-bool
	   :kripke-futr
	   :kripke-past
	   :kripke-formula
	   :kripke-maximum
	   :call
	   :back-call
	   :back-call-time))



(in-package :kripke)

(defclass kripke ()
  ((the-k       :accessor kripke-k :type fixnum)	    ; this is the time bound i.e. [0..k]
   (numvar      :accessor kripke-numvar :type fixnum)    ; number of prop. variables used in the encoding
   (the-list    :accessor kripke-list :type hash-table) 	    ; formula -> integer (usually an hash-table)
   (the-back    :accessor kripke-back :type array) 	    ; integer -> formula (idem)
   (sf-prop     :accessor kripke-prop :type list)	    ; list of propositions used in the formula
   (sf-bool     :accessor kripke-bool :type list)	    ; list of used boolean subformulae
   (sf-futr     :accessor kripke-futr :type list)	    ; list of used future-tense subformulae
   (sf-past     :accessor kripke-past :type list)	    ; list of used past-tense subformulae
   (max-prop    :accessor kripke-maximum :type fixnum)   ; used propositions maximum
   (the-formula :accessor kripke-formula :type list))) ; this should contain the resulting prop. formula 
					    ; for the SAT-solver


; Call translates a formula/proposition and a time instant 
; into an integer (the SAT-solver proposition)
; self must be an instance of kripke (or of a subclass)
(defgeneric call (self obj the-time &rest other-stuff)
	    (:documentation 
	      "Call translates a formula/proposition and a time instant 
	      into an integer (the SAT-solver proposition)"))

; Back-Call translates an integer in [0..k] into the corresponding subformula
; self must be an instance of kripke (or of a subclass)
(defgeneric back-call (self x)
	    (:documentation 
	      "Back-call is used to obtain a formula/prop from an integer
	      (is used for back-parsing the SAT-solver output)"))


(defgeneric back-call-time (self x)
	    (:documentation 
	      "returns the time instant corresponding to value x
	      (is used for back-parsing the SAT-solver output)"))

