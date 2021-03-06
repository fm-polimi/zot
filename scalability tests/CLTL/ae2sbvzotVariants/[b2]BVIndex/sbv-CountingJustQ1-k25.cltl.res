This is SBCL 1.2.4.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
IPC-terms: (X2_22 (NEXT X2_22) X1_22 (NEXT X1_22) (NEXT X0_22) X0_22
            (NEXT Z1_22) (NEXT Z0_22) Z1_22 Z0_22 X2_0 (NEXT X2_0) X1_0
            (NEXT X1_0) (NEXT X0_0) X0_0 (NEXT Z1_0) 2 (NEXT Z0_0) Z1_0 Z0_0
            (NEXT Z1_62) 1 (NEXT Z0_62) Z1_62 Z0_62 0)
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
                  (= Z0_22 0) (> X1_0 0) (> X2_0 0) (> X0_0 0) (< X2_0 X1_0)
                  (< X0_0 X2_0) (> X2_0 2) (= X2_0 0) (> (NEXT X2_0) X2_0)
                  (= (NEXT X2_0) 0) (> X1_0 2) (= X1_0 0) (> (NEXT X1_0) X1_0)
                  (= (NEXT X1_0) 0) (> X0_0 2) (> (NEXT X0_0) X0_0)
                  (= (NEXT X0_0) 0) (= X0_0 0) (>= Z1_0 0) (>= Z0_0 0)
                  (> Z1_0 2) (> (NEXT Z1_0) Z1_0) (= (NEXT Z1_0) 0) (> Z0_0 2)
                  (> (NEXT Z0_0) Z0_0) (= (NEXT Z0_0) 0) (= Z1_0 0) (= Z0_0 0)
                  (= Z1_0 1) (= Z0_0 1) (<= Z1_0 1) (> Z1_0 0) (<= Z0_0 1)
                  (> Z0_0 0) (>= Z1_0 1) (>= Z0_0 1) (< Z0_62 1) (= Z1_62 1)
                  (> Z1_0 1) (> Z0_0 1) (= Z0_62 1) (>= Z1_62 0) (>= Z0_62 0)
                  (> Z1_62 1) (> (NEXT Z1_62) Z1_62) (= (NEXT Z1_62) 0)
                  (> Z0_62 1) (> (NEXT Z0_62) Z0_62) (= (NEXT Z0_62) 0)
                  (> Z1_62 0) (> Z0_62 0) (= Z1_62 0) (= Z0_62 0))
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
 P_36 P_32 H_37 P_37 (> X1_0 0) (> X2_0 0) (> X0_0 0) (< X2_0 X1_0)
 (< X0_0 X2_0) (> X2_0 2) (= X2_0 0) (> (NEXT X2_0) X2_0) (= (NEXT X2_0) 0)
 (> X1_0 2) (= X1_0 0) (> (NEXT X1_0) X1_0) (= (NEXT X1_0) 0) (> X0_0 2)
 (> (NEXT X0_0) X0_0) (= (NEXT X0_0) 0) (= X0_0 0) (>= Z1_0 0) (>= Z0_0 0)
 (> Z1_0 2) (> (NEXT Z1_0) Z1_0) (= (NEXT Z1_0) 0) (> Z0_0 2)
 (> (NEXT Z0_0) Z0_0) (= (NEXT Z0_0) 0) (= Z1_0 0) (= Z0_0 0) (= Z1_0 1)
 (= Z0_0 1) (<= Z1_0 1) (> Z1_0 0) (<= Z0_0 1) (> Z0_0 0) (>= Z1_0 1)
 (>= Z0_0 1) (< Z0_62 1) (= Z1_62 1) (> Z1_0 1) (> Z0_0 1) (= Z0_62 1) P_0 H_0
 (>= Z1_62 0) (>= Z0_62 0) (> Z1_62 1) (> (NEXT Z1_62) Z1_62)
 (= (NEXT Z1_62) 0) (> Z0_62 1) (> (NEXT Z0_62) Z0_62) (= (NEXT Z0_62) 0)
 (> Z1_62 0) (> Z0_62 0) (= Z1_62 0) O (= Z0_62 0) H_62 P_62 P_67 P_1 H_67 H_1
 H_15 H_38 H_68 H_140 P_15 P_38 P_68 P_140)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(X2_22 X1_22 X0_22 Z1_22 Z0_22 X2_0 X1_0 X0_0 Z1_0 Z0_0 Z1_62 Z0_62)

Graph dependency over terms 
((0 0 0 (NEXT Z0_62) 0 0 0 0 (NEXT Z1_62) 0 Z0_62 Z1_62 Z0_62 Z1_62 Z0_62 0 1 1
  0 1 1 0 (NEXT Z0_0) 0 0 1 1 0 1 1 0 (NEXT Z1_0) 0 0 0 (NEXT X0_0) 0 0 0
  (NEXT X1_0) 0 0 0 0 (NEXT X2_0) 0 X0_0 X1_0 0 0 0 0 0 (NEXT Z0_22) 0 0 0 0
  (NEXT Z1_22) 0 Z0_0 Z1_0 X0_0 X1_0 X2_0 Z0_22 Z1_22 X1_0 X2_0 X0_0 X1_0 X2_0
  X0_0 X0_0 X1_0 X2_0 X0_0 X1_0 X2_0 0 0 (NEXT X0_22) 2 0 0 2 2 0 (NEXT X1_22)
  0 2 0 0 2 2 0 (NEXT X2_22) 0 2 X0_22 X1_22 0 0 2 2 X2_22))

Related variables 
((Z1_62 Z0_62 1 Z0_0 Z1_0 Z0_22 Z1_22 X0_0 X1_0 X2_0 X0_22 X1_22 0 2 X2_22))

Time bound: 25

Number of Boolean variables: 
35
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
  7.093 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  24,116,448,415 processor cycles
  0 bytes consed
  
---SAT---
------ time 0 ------
  H_14
  P_14
  P_38
  H_25
  P_62
  H_38
  H_67
  H_10
  P_10
  P_25
  Z0_0 = (- 0.025)
  Z0_22 = (- 0.025)
  X0_0 = (- 0.025)
  Z1_62 = 0.025
  X2_22 = 0.025
  X1_22 = 2.0
  X0_22 = (- 0.025)
  X1_0 = 2.025
  Z1_22 = 0.025
  Z1_0 = 0.025
  X2_0 = 0.025
  DELTA = 0.025
  Z0_62 = (- 0.025)
------ time 1 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  O
  P_25
  P_68
  P_1
  P_0
  Z0_0 = 0.0
  Z0_22 = 0.0
  X0_0 = 0.0
  Z1_62 = 0.05
  X2_22 = 0.775
  X1_22 = 1.975
  X0_22 = 0.0
  X1_0 = 2.05
  Z1_22 = 0.05
  Z1_0 = 0.05
  X2_0 = 2.025
  DELTA = 0.025
  Z0_62 = 0.0
------ time 2 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  P_25
  P_68
  P_1
  P_0
  Z0_0 = 0.025
  Z0_22 = 0.025
  X0_0 = 0.025
  Z1_62 = 0.075
  X2_22 = 0.8
  X1_22 = 2.0
  X0_22 = 0.025
  X1_0 = 0.0
  Z1_22 = 0.075
  Z1_0 = 0.0
  X2_0 = 2.05
  DELTA = 0.025
  Z0_62 = 0.025
------ time 3 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  P_25
  P_68
  P_1
  P_0
  Z0_0 = 0.0
  Z0_22 = 0.05
  X0_0 = 0.05
  Z1_62 = 0.1
  X2_22 = 0.825
  X1_22 = 2.025
  X0_22 = 0.05
  X1_0 = 0.025
  Z1_22 = 0.1
  Z1_0 = 0.025
  X2_0 = 0.0
  DELTA = 0.025
  Z0_62 = 0.05
------ time 4 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  H_0
  P_25
  P_68
  P_1
  Z0_0 = 0.025
  Z0_22 = 0.075
  X0_0 = 0.0
  Z1_62 = 0.125
  X2_22 = 0.85
  X1_22 = 2.05
  X0_22 = 0.075
  X1_0 = 0.05
  Z1_22 = 0.125
  Z1_0 = 0.0
  X2_0 = 0.025
  DELTA = 1.125
  Z0_62 = 0.075
------ time 5 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  P_25
  P_68
  P_1
  Z0_0 = 0.0
  Z0_22 = 1.2
  X0_0 = 1.125
  Z1_62 = 1.25
  X2_22 = 1.975
  X1_22 = 3.175
  X0_22 = 1.2
  X1_0 = 0.0
  Z1_22 = 1.25
  Z1_0 = 1.125
  X2_0 = 1.15
  DELTA = 0.05
  Z0_62 = 1.2
------ time 6 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  H_0
  P_25
  P_68
  P_1
  Z0_0 = 0.05
  Z0_22 = 1.25
  X0_0 = 1.175
  Z1_62 = 1.3
  X2_22 = 2.025
  X1_22 = 3.225
  X0_22 = 1.25
  X1_0 = 0.05
  Z1_22 = 1.3
  Z1_0 = 0.0
  X2_0 = 0.0
  DELTA = 0.25
  Z0_62 = 1.25
------ time 7 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  H_0
  P_25
  P_68
  P_1
  P_0
  Z0_0 = 0.3
  Z0_22 = 1.5
  X0_0 = 1.425
  Z1_62 = 1.55
  X2_22 = 2.275
  X1_22 = 3.475
  X0_22 = 1.5
  X1_0 = 0.3
  Z1_22 = 1.55
  Z1_0 = 0.25
  X2_0 = 0.25
  DELTA = 0.075
  Z0_62 = 1.5
------ time 8 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  P_25
  P_68
  P_1
  Z0_0 = 0.0
  Z0_22 = 1.575
  X0_0 = 0.0
  Z1_62 = 1.625
  X2_22 = 2.35
  X1_22 = 3.55
  X0_22 = 1.575
  X1_0 = 0.375
  Z1_22 = 1.625
  Z1_0 = 0.325
  X2_0 = 0.325
  DELTA = 0.375
  Z0_62 = 1.575
------ time 9 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  H_0
  P_25
  P_68
  P_1
  Z0_0 = 0.375
  Z0_22 = 1.95
  X0_0 = 0.375
  Z1_62 = 2.0
  X2_22 = 2.725
  X1_22 = 3.925
  X0_22 = 1.95
  X1_0 = 0.0
  Z1_22 = 2.0
  Z1_0 = 0.0
  X2_0 = 0.7
  DELTA = 1.65
  Z0_62 = 1.95
------ time 10 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  P_25
  P_68
  P_1
  Z0_0 = 0.0
  Z0_22 = 3.6
  X0_0 = 2.025
  Z1_62 = 3.65
  X2_22 = 4.375
  X1_22 = 5.575
  X0_22 = 3.6
  X1_0 = 1.65
  Z1_22 = 3.65
  Z1_0 = 1.65
  X2_0 = 0.0
  DELTA = 0.225
  Z0_62 = 3.6
------ time 11 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  P_25
  P_68
  P_1
  Z0_0 = 0.225
  Z0_22 = 3.825
  X0_0 = 2.25
  Z1_62 = 3.875
  X2_22 = 4.6
  X1_22 = 5.8
  X0_22 = 3.825
  X1_0 = 1.875
  Z1_22 = 3.875
  Z1_0 = 1.875
  X2_0 = 0.225
  DELTA = 0.025
  Z0_62 = 3.825
------ time 12 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  H_0
  P_25
  P_68
  P_1
  Z0_0 = 0.25
  Z0_22 = 3.85
  X0_0 = 0.0
  Z1_62 = 3.9
  X2_22 = 4.625
  X1_22 = 5.825
  X0_22 = 3.85
  X1_0 = 1.9
  Z1_22 = 3.9
  Z1_0 = 0.0
  X2_0 = 0.25
  DELTA = 0.075
  Z0_62 = 3.85
------ time 13 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  H_0
  P_25
  P_68
  P_1
  P_0
  Z0_0 = 0.325
  Z0_22 = 3.925
  X0_0 = 0.075
  Z1_62 = 3.975
  X2_22 = 4.7
  X1_22 = 5.9
  X0_22 = 3.925
  X1_0 = 1.975
  Z1_22 = 3.975
  Z1_0 = 0.075
  X2_0 = 0.325
  DELTA = 0.025
  Z0_62 = 3.925
------ time 14 ------
  H_1
  H_22
  P_67
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  P_25
  P_68
  P_1
  Z0_0 = 0.0
  Z0_22 = 3.95
  X0_0 = 0.1
  Z1_62 = 0.0
  X2_22 = 4.725
  X1_22 = 5.925
  X0_22 = 3.95
  X1_0 = 0.0
  Z1_22 = 4.0
  Z1_0 = 0.1
  X2_0 = 0.35
  DELTA = 1.0
  Z0_62 = 3.95
------ time 15 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  P_25
  P_68
  P_1
  P_0
  Z0_0 = 1.0
  Z0_22 = 4.95
  X0_0 = 1.1
  Z1_62 = 1.0
  X2_22 = 5.725
  X1_22 = 6.925
  X0_22 = 4.95
  X1_0 = 1.0
  Z1_22 = 5.0
  Z1_0 = 0.0
  X2_0 = 0.0
  DELTA = 0.3
  Z0_62 = 4.95
------ time 16 ------
**LOOP**
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  P_25
  P_68
  P_1
  Z0_0 = 1.3
  Z0_22 = 5.25
  X0_0 = 1.4
  Z1_62 = 1.3
  X2_22 = 6.025
  X1_22 = 7.225
  X0_22 = 5.25
  X1_0 = 1.3
  Z1_22 = 5.3
  Z1_0 = 0.3
  X2_0 = 0.3
  DELTA = 0.675
  Z0_62 = 5.25
------ time 17 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  H_0
  P_25
  P_68
  P_1
  Z0_0 = 0.0
  Z0_22 = 5.925
  X0_0 = 0.0
  Z1_62 = 1.975
  X2_22 = 6.7
  X1_22 = 7.9
  X0_22 = 5.925
  X1_0 = 1.975
  Z1_22 = 5.975
  Z1_0 = 0.975
  X2_0 = 0.975
  DELTA = 1.075
  Z0_62 = 5.925
------ time 18 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  P_25
  P_68
  P_1
  Z0_0 = 1.075
  Z0_22 = 7.0
  X0_0 = 1.075
  Z1_62 = 3.05
  X2_22 = 7.775
  X1_22 = 8.975
  X0_22 = 7.0
  X1_0 = 0.0
  Z1_22 = 7.05
  Z1_0 = 0.0
  X2_0 = 2.05
  DELTA = 0.05
  Z0_62 = 7.0
------ time 19 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  P_25
  P_68
  P_1
  Z0_0 = 1.125
  Z0_22 = 7.05
  X0_0 = 1.125
  Z1_62 = 3.1
  X2_22 = 7.825
  X1_22 = 9.025
  X0_22 = 7.05
  X1_0 = 0.05
  Z1_22 = 7.1
  Z1_0 = 0.05
  X2_0 = 2.1
  DELTA = 0.2
  Z0_62 = 7.05
------ time 20 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  P_25
  P_68
  P_1
  Z0_0 = 1.325
  Z0_22 = 7.25
  X0_0 = 1.325
  Z1_62 = 3.3
  X2_22 = 8.025
  X1_22 = 9.225
  X0_22 = 7.25
  X1_0 = 0.25
  Z1_22 = 7.3
  Z1_0 = 0.25
  X2_0 = 2.3
  DELTA = 0.7
  Z0_62 = 7.25
------ time 21 ------
  H_1
  H_22
  P_67
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  P_25
  P_68
  P_1
  P_0
  Z0_0 = 0.0
  Z0_22 = 7.95
  X0_0 = 2.025
  Z1_62 = 4.0
  X2_22 = 8.725
  X1_22 = 9.925
  X0_22 = 7.95
  X1_0 = 0.95
  Z1_22 = 8.0
  Z1_0 = 0.95
  X2_0 = 0.0
  DELTA = 1.0
  Z0_62 = 0.0
------ time 22 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  P_25
  P_68
  P_1
  P_0
  Z0_0 = 1.0
  Z0_22 = 8.95
  X0_0 = 0.0
  Z1_62 = 5.0
  X2_22 = 9.725
  X1_22 = 10.925
  X0_22 = 8.95
  X1_0 = 1.95
  Z1_22 = 9.0
  Z1_0 = 0.0
  X2_0 = 1.0
  DELTA = 0.025
  Z0_62 = 1.0
------ time 23 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  P_25
  P_68
  P_1
  Z0_0 = 1.025
  Z0_22 = 8.975
  X0_0 = 0.025
  Z1_62 = 5.025
  X2_22 = 9.75
  X1_22 = 10.95
  X0_22 = 8.975
  X1_0 = 1.975
  Z1_22 = 9.025
  Z1_0 = 0.025
  X2_0 = 1.025
  DELTA = 0.25
  Z0_62 = 1.025
------ time 24 ------
  H_1
  H_22
  P_67
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  P_25
  P_68
  P_1
  P_0
  Z0_0 = 0.0
  Z0_22 = 9.225
  X0_0 = 0.275
  Z1_62 = 0.0
  X2_22 = 10.0
  X1_22 = 11.2
  X0_22 = 9.225
  X1_0 = 0.0
  Z1_22 = 9.275
  Z1_0 = 0.275
  X2_0 = 1.275
  DELTA = 1.0
  Z0_62 = 1.275
------ time 25 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  P_22
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  P_25
  P_68
  P_1
  P_0
  Z0_0 = 1.0
  Z0_22 = 10.225
  X0_0 = 1.275
  Z1_62 = 1.0
  X2_22 = 11.0
  X1_22 = 12.2
  X0_22 = 10.225
  X1_0 = 1.0
  Z1_22 = 10.275
  Z1_0 = 0.0
  X2_0 = 0.0
  DELTA = 0.025
  Z0_62 = 2.275
------ end ------
Evaluation took:
  7.282 seconds of real time
  0.188000 seconds of total run time (0.164000 user, 0.024000 system)
  [ Run times consist of 0.036 seconds GC time, and 0.152 seconds non-GC time. ]
  2.58% CPU
  24,759,794,148 processor cycles
  406,107,616 bytes consed
  
