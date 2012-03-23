--------------------------------------------------------------
AP-ZOT: a dense- to discrete-time approximation module for ZOT
--------------------------------------------------------------

AP-ZOT is a ZOT module to perform approximations of dense-time
formulas so that they are amenable to discrete-time verification with
ZOT.  ZOT is available from its author's webpage
(http://www.elet.polimi.it/upload/pradella/).  For reference on the
techniques used by AP-ZOT see: Furia, Pradella, Rossi: ""; Technical
report 2007.xx Dipartimento di Elettronica e Informazione, Politecnico
di Milano, April 2007.

AP-ZOT functionalities are invoked within a ZOT script. Here's a summary.


First, AP-ZOT module is loaded:

(use-package :ap-zot)


Then, assume to have a set of n axioms:

(defvar ax1 ...)
(defvar ax2 ...)
...
(defvar axn ...)


and a theorem:

(defvar th ...)


In order to be discretized, formulas must be first put in normal form.
This is achieved through the two functions 'basicize' and
'normalized', to be invoked in this order (example for axiom ax1):

(setf ax1 (normalize (basicize ax1)))


Then, assuming all formulas are in normal form, one can compute their
granularity through the function 'compute-granularity':

(defvar rho (compute-granularity `(ax1 ax2 ... ax2 th)))


The value of the discretization parameter delta can be chosen by
giving two values h, k, so that:
     delta := (h-th divisor of r_\phi) / k*R_\phi
The above expression can be computed as follows:

(defvar delta (/ (nth-divisor h (car rho)) (* k (cadr rho))))


Finally, the functions 'over-approximation' and 'under-approximation'
compute the functions O() and \Omega() (example with axiom ax1):

(over-approximation ax1 delta)


See the included examples (in the "ap-examples" directory) for more
details about how to perform the discretization.
