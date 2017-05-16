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
 (>= Z0_0 1) (< Z0_62 1) (= Z1_62 1) (> Z1_0 1) (> Z0_0 1) (= Z0_62 1)
 (>= Z1_62 0) (>= Z0_62 0) (> Z1_62 1) (> (NEXT Z1_62) Z1_62)
 (= (NEXT Z1_62) 0) (> Z0_62 1) (> (NEXT Z0_62) Z0_62) (= (NEXT Z0_62) 0)
 (> Z1_62 0) (> Z0_62 0) (= Z1_62 0) O (= Z0_62 0) H_0 H_62 P_0 P_62 P_76 P_1
 H_76 H_1 H_80 P_80 H_93 H_88 P_93 P_88 H_15 H_38 H_94 H_154 P_15 P_38 P_94
 P_154)

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

Time bound: 30

Number of Boolean variables: 
41
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
  3598.815 seconds of real time
  0.092000 seconds of total run time (0.076000 user, 0.016000 system)
  0.00% CPU
  12,235,959,678,499 processor cycles
  786,256 bytes consed
  
Evaluation took:
  3598.854 seconds of real time
  0.128000 seconds of total run time (0.112000 user, 0.016000 system)
  0.00% CPU
  12,236,089,336,710 processor cycles
  5,303,200 bytes consed
  
  before it was aborted by a non-local transfer of control.
  
