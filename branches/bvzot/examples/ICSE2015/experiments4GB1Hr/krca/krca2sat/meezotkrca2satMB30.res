This is SBCL 1.0.57.0.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
This is meeZot

Used propositions: 
(INI EI_EXI_14 EI_EXI_13 EI_EXI_12 EI_EXI_11 EI_EXI_10 EI_EXI_9 EI_EXI_8
 ER_EI_22 ER_EI_21 ER_EI_20 ER_EI_19 ER_EI_18 ER_EI_17 ENTERI ER_EI_16 BAR_1
 BAR_0 GREEN RED EXITI GO_1 GO_0 ENTERR)

Time bound: 1
loopconstraints...gen-bool...gen-futr...lastState...gen-evt-futr...gen-past1...gen-past2...stabilize...metric-constraints...
done processing formula
Evaluation took:
  0.045 seconds of real time
  0.044003 seconds of total run time (0.044003 user, 0.000000 system)
  97.78% CPU
  154,022,596 processor cycles
  2,882,800 bytes consed
  
translating into CNF...
0%    100%
----------
**********
Reused variables: 336 
Greatest used variable: 15847 
Generated clauses: 43350 
Evaluation took:
  0.065 seconds of real time
  0.064004 seconds of total run time (0.064004 user, 0.000000 system)
  98.46% CPU
  221,214,904 processor cycles
  5,561,248 bytes consed
  
This was zot2cnf. Solver time coming next.
WARNING: for repeatability, setting FPU to use double precision
============================[ Problem Statistics ]=============================
|                                                                             |
|  Number of variables:         15847                                         |
|  Number of clauses:           43349                                         |
|  Parse time:                   0.00 s                                       |
|                                                                             |
============================[ Search Statistics ]==============================
| Conflicts |          ORIGINAL         |          LEARNT          | Progress |
|           |    Vars  Clauses Literals |    Limit  Clauses Lit/Cl |          |
===============================================================================
===============================================================================
restarts              : 1
conflicts             : 0              (0 /sec)
decisions             : 23             (0.00 % random) (5750 /sec)
propagations          : 15847          (3961750 /sec)
conflict literals     : 0              (-nan % deleted)
Memory used           : 9.00 MB
CPU time              : 0.004 s

SATISFIABLE
Evaluation took:
  0.016 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  25.00% CPU
  52,867,890 processor cycles
  28,960 bytes consed
  

------ time 0 ------
  GO_0
  GO_1
  GREEN

------ time 1 ------
  **LOOP**
  GO_0
  GO_1
  GREEN

------ end ------

Found: 1
