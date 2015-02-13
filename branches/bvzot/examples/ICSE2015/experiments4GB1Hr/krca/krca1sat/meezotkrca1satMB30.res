This is SBCL 1.0.57.0.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
This is meeZot

Used propositions: 
(INI EI_EXI_5 EI_EXI_4 EI_EXI_3 ER_EI_8 ER_EI_7 ENTERI ER_EI_6 BAR_1 BAR_0
 GREEN RED EXITI GO_1 GO_0 ENTERR)

Time bound: 1
loopconstraints...gen-bool...gen-futr...lastState...gen-evt-futr...gen-past1...gen-past2...stabilize...metric-constraints...
done processing formula
Evaluation took:
  0.001 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  400.00% CPU
  5,645,293 processor cycles
  819,008 bytes consed
  
translating into CNF...
0%    100%
----------
**********
Reused variables: 48 
Greatest used variable: 4677 
Generated clauses: 12683 
Evaluation took:
  0.014 seconds of real time
  0.012001 seconds of total run time (0.012001 user, 0.000000 system)
  85.71% CPU
  44,595,851 processor cycles
  1,568,032 bytes consed
  
This was zot2cnf. Solver time coming next.
WARNING: for repeatability, setting FPU to use double precision
============================[ Problem Statistics ]=============================
|                                                                             |
|  Number of variables:          4677                                         |
|  Number of clauses:           12682                                         |
|  Parse time:                   0.00 s                                       |
|                                                                             |
============================[ Search Statistics ]==============================
| Conflicts |          ORIGINAL         |          LEARNT          | Progress |
|           |    Vars  Clauses Literals |    Limit  Clauses Lit/Cl |          |
===============================================================================
===============================================================================
restarts              : 1
conflicts             : 0              (-nan /sec)
decisions             : 23             (0.00 % random) (inf /sec)
propagations          : 4677           (inf /sec)
conflict literals     : 0              (-nan % deleted)
Memory used           : 7.00 MB
CPU time              : 0 s

SATISFIABLE
Evaluation took:
  0.005 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  17,976,871 processor cycles
  32,592 bytes consed
  

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
