This is SBCL 1.2.4.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
IPC-terms: (X2_22 (NEXT X2_22) X1_22 (NEXT X1_22) (NEXT X0_22) X0_22
            (NEXT Z1_22) (NEXT Z0_22) Z1_22 Z0_22 (NEXT Z1_62) 1 (NEXT Z0_62)
            Z1_62 Z0_62 X2_0 (NEXT X2_0) X1_0 (NEXT X1_0) (NEXT X0_0) X0_0
            (NEXT Z1_0) 2 (NEXT Z0_0) Z1_0 Z0_0 0)
IPC-constraints: ((= 2 X2_0) (= 2 X1_0) (= 2 X0_0) (<= X2_0 2) (< 0 X2_0)
                  (<= X1_0 2) (< 0 X1_0) (<= X0_0 2) (< 0 X0_0) (< X0_0 2)
                  (< X2_0 2) (< X1_0 2) (= X2_22 2) (< X2_22 2) (< 0 X2_22)
                  (= X1_22 2) (< X1_22 2) (< 0 X1_22) (= X0_0 2) (= X2_0 2)
                  (= X1_0 2) (= X0_22 2) (< X0_22 2) (< 0 X0_22) (> X1_22 0)
                  (> X2_22 0) (> X0_22 0) (< X2_22 X1_22) (< X0_22 X2_22)
                  (> X2_22 2) (= X2_22 0) (> (NEXT X2_22) X2_22)
                  (= (NEXT X2_22) 0) (> X1_22 2) (= X1_22 0)
                  (> (NEXT X1_22) X1_22) (= (NEXT X1_22) 0) (> X0_22 2)
                  (> (NEXT X0_22) X0_22) (= (NEXT X0_22) 0) (= X0_22 0)
                  (>= Z1_22 0) (>= Z0_22 0) (> Z1_22 2) (> (NEXT Z1_22) Z1_22)
                  (= (NEXT Z1_22) 0) (> Z0_22 2) (> (NEXT Z0_22) Z0_22)
                  (= (NEXT Z0_22) 0) (> Z1_22 0) (> Z0_22 0) (= Z1_22 0)
                  (= Z0_22 0) (= Z1_0 1) (= Z0_0 1) (<= Z1_0 1) (<= Z0_0 1)
                  (>= Z1_0 1) (>= Z0_0 1) (< Z0_62 1) (= Z1_62 1) (> Z1_0 1)
                  (> Z0_0 1) (= Z0_62 1) (>= Z1_62 0) (>= Z0_62 0) (> Z1_62 1)
                  (> (NEXT Z1_62) Z1_62) (= (NEXT Z1_62) 0) (> Z0_62 1)
                  (> (NEXT Z0_62) Z0_62) (= (NEXT Z0_62) 0) (> Z1_62 0)
                  (> Z0_62 0) (= Z1_62 0) (= Z0_62 0) (> X1_0 0) (> X2_0 0)
                  (> X0_0 0) (< X2_0 X1_0) (< X0_0 X2_0) (> X2_0 2) (= X2_0 0)
                  (> (NEXT X2_0) X2_0) (= (NEXT X2_0) 0) (> X1_0 2) (= X1_0 0)
                  (> (NEXT X1_0) X1_0) (= (NEXT X1_0) 0) (> X0_0 2)
                  (> (NEXT X0_0) X0_0) (= (NEXT X0_0) 0) (= X0_0 0) (>= Z1_0 0)
                  (>= Z0_0 0) (> Z1_0 2) (> (NEXT Z1_0) Z1_0) (= (NEXT Z1_0) 0)
                  (> Z0_0 2) (> (NEXT Z0_0) Z0_0) (= (NEXT Z0_0) 0) (> Z1_0 0)
                  (> Z0_0 0) (= Z1_0 0) (= Z0_0 0))
This is AE2SBVZOT.

1. processing formula
Used boolean propositions: 
(H_4 P_4 H_13 H_10 P_13 P_10 H_14 P_14 (= 2 X2_0) (= 2 X1_0) (= 2 X0_0)
 (<= X2_0 2) (< 0 X2_0) (<= X1_0 2) (< 0 X1_0) (<= X0_0 2) (< 0 X0_0)
 (< X0_0 2) (< X2_0 2) (< X1_0 2) (= X2_22 2) (< X2_22 2) (< 0 X2_22)
 (= X1_22 2) (< X1_22 2) (< 0 X1_22) (= X0_0 2) (= X2_0 2) (= X1_0 2)
 (= X0_22 2) (< X0_22 2) (< 0 X0_22) (> X1_22 0) (> X2_22 0) (> X0_22 0)
 (< X2_22 X1_22) (< X0_22 X2_22) (> X2_22 2) (= X2_22 0) (> (NEXT X2_22) X2_22)
 (= (NEXT X2_22) 0) (> X1_22 2) (= X1_22 0) (> (NEXT X1_22) X1_22)
 (= (NEXT X1_22) 0) (> X0_22 2) (> (NEXT X0_22) X0_22) (= (NEXT X0_22) 0)
 (= X0_22 0) (>= Z1_22 0) (>= Z0_22 0) (> Z1_22 2) (> (NEXT Z1_22) Z1_22)
 (= (NEXT Z1_22) 0) (> Z0_22 2) (> (NEXT Z0_22) Z0_22) (= (NEXT Z0_22) 0)
 (> Z1_22 0) (> Z0_22 0) (= Z1_22 0) (= Z0_22 0) H_22 P_22 H_25 P_25 H_36 H_32
 P_36 P_32 H_37 P_37 P_1 H_1 (= Z1_0 1) (= Z0_0 1) (<= Z1_0 1) (<= Z0_0 1)
 (>= Z1_0 1) (>= Z0_0 1) (< Z0_62 1) (= Z1_62 1) (> Z1_0 1) (> Z0_0 1)
 (= Z0_62 1) (>= Z1_62 0) (>= Z0_62 0) (> Z1_62 1) (> (NEXT Z1_62) Z1_62)
 (= (NEXT Z1_62) 0) (> Z0_62 1) (> (NEXT Z0_62) Z0_62) (= (NEXT Z0_62) 0)
 (> Z1_62 0) (> Z0_62 0) (= Z1_62 0) (= Z0_62 0) (> X1_0 0) (> X2_0 0)
 (> X0_0 0) (< X2_0 X1_0) (< X0_0 X2_0) (> X2_0 2) (= X2_0 0)
 (> (NEXT X2_0) X2_0) (= (NEXT X2_0) 0) (> X1_0 2) (= X1_0 0)
 (> (NEXT X1_0) X1_0) (= (NEXT X1_0) 0) (> X0_0 2) (> (NEXT X0_0) X0_0)
 (= (NEXT X0_0) 0) (= X0_0 0) (>= Z1_0 0) (>= Z0_0 0) (> Z1_0 2)
 (> (NEXT Z1_0) Z1_0) (= (NEXT Z1_0) 0) (> Z0_0 2) (> (NEXT Z0_0) Z0_0)
 (= (NEXT Z0_0) 0) (> Z1_0 0) (> Z0_0 0) (= Z1_0 0) O (= Z0_0 0) H_62 H_0 P_62
 P_0 H_102 P_102 H_113 H_109 P_113 P_109 H_15 H_38 H_114 H_150 P_15 P_38 P_114
 P_150)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(X2_22 X1_22 X0_22 Z1_22 Z0_22 Z1_62 Z0_62 X2_0 X1_0 X0_0 Z1_0 Z0_0)

Graph dependency over terms 
((0 0 0 (NEXT Z0_0) 0 0 0 0 0 (NEXT Z0_62) 0 0 0 0 (NEXT Z1_62) 0 Z0_62 Z1_62
  Z0_62 Z0_0 Z1_62 Z0_62 Z0_0 Z0_0 Z0_0 0 0 (NEXT Z1_0) 0 1 1 1 1 0 0
  (NEXT X0_0) 0 0 0 (NEXT X1_0) 0 0 0 0 (NEXT X2_0) 0 X0_0 X1_0 0 0 0 0 0
  (NEXT Z0_22) 0 0 0 0 (NEXT Z1_22) 0 Z0_0 Z1_0 X0_0 X1_0 X2_0 Z0_22 Z1_22 X1_0
  X2_0 X0_0 X1_0 X2_0 X0_0 X0_0 X1_0 X2_0 X0_0 X1_0 X2_0 0 0 (NEXT X0_22) 2 0 0
  2 2 0 (NEXT X1_22) 0 2 0 0 2 2 0 (NEXT X2_22) 0 2 X0_22 X1_22 0 0 2 2 X2_22))

Related variables 
((Z1_62 Z0_62 1 Z0_0 Z1_0 Z0_22 Z1_22 X0_0 X1_0 X2_0 X0_22 X1_22 0 2 X2_22))

Time bound: 25

Number of Boolean variables: 
39
define FO future formulae Xt
define FO future formulae Yt
define for interpreted relations: <,>,=,<=,>= 
define FO terms for +,-,*,/,mod 
define loop constraints

done processing formula
define LTL future formulae X, U, R
define LTL future formulae X, U, R
gen-past2...
gen-past2...
define LTL boolean connectives
define LTL boolean connectives

no CNF
  0.000 seconds of real time

2. SMT solving: z3...
 
Evaluation took:
  0.849 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  2,888,380,132 processor cycles
  32,624 bytes consed
  
---SAT---
------ time 0 ------
Evaluation took:
  1.015 seconds of real time
  0.172000 seconds of total run time (0.136000 user, 0.036000 system)
  [ Run times consist of 0.032 seconds GC time, and 0.140 seconds non-GC time. ]
  16.95% CPU
  3,449,484,177 processor cycles
  392,778,608 bytes consed
  
  before it was aborted by a non-local transfer of control.
  
