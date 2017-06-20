This is SBCL 1.2.4.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
IPC-terms: (2 (NEXT X5_7) (NEXT X4_7) (NEXT X3_7) (NEXT X2_7) (NEXT X1_7)
            (NEXT X0_7) X5_7 X4_7 X3_7 X2_7 X1_7 X0_7 (NEXT Z1_7) (NEXT Z0_7)
            Z1_7 Z0_7 (NEXT Z1_25) (NEXT Z0_25) Z1_25 Z0_25 (NEXT Z1_4)
            (NEXT Z0_4) Z1_4 Z0_4 (NEXT Z1_77) (NEXT Z0_77) Z1_77 Z0_77
            (NEXT Z1_0) 1 (NEXT Z0_0) Z1_0 Z0_0 (NEXT Z1_22) 3 (NEXT Z0_22)
            Z1_22 Z0_22 0)
IPC-constraints: ((<= X5_7 3) (= X5_7 2) (<= X4_7 3) (= X4_7 2) (<= X3_7 3)
                  (= X3_7 2) (<= X2_7 3) (= X2_7 2) (<= X1_7 3) (= X1_7 2)
                  (<= X0_7 3) (= X0_7 2) (> Z0_7 2) (< Z0_7 2) (<= Z0_7 3)
                  (>= Z0_7 2) (= X5_7 3) (= X4_7 3) (= X3_7 3) (= X2_7 3)
                  (= X1_7 3) (= X0_7 3) (> X1_7 0) (> X5_7 0) (> X4_7 0)
                  (> X3_7 0) (> X2_7 0) (> X0_7 0) (< X2_7 X1_7) (< X3_7 X2_7)
                  (< X4_7 X3_7) (< X5_7 X4_7) (< X0_7 X5_7) (> X5_7 3)
                  (> (NEXT X5_7) X5_7) (= (NEXT X5_7) 0) (> X4_7 3)
                  (> (NEXT X4_7) X4_7) (= (NEXT X4_7) 0) (> X3_7 3)
                  (> (NEXT X3_7) X3_7) (= (NEXT X3_7) 0) (> X2_7 3)
                  (> (NEXT X2_7) X2_7) (= (NEXT X2_7) 0) (> X1_7 3)
                  (> (NEXT X1_7) X1_7) (= (NEXT X1_7) 0) (> X0_7 3)
                  (> (NEXT X0_7) X0_7) (= (NEXT X0_7) 0) (= X5_7 0) (= X4_7 0)
                  (= X3_7 0) (= X2_7 0) (= X1_7 0) (= X0_7 0) (>= Z1_7 0)
                  (>= Z0_7 0) (> Z1_7 3) (> (NEXT Z1_7) Z1_7) (= (NEXT Z1_7) 0)
                  (> Z0_7 3) (> (NEXT Z0_7) Z0_7) (= (NEXT Z0_7) 0) (> Z1_7 0)
                  (> Z0_7 0) (= Z1_7 0) (= Z0_7 0) (<= Z1_22 3) (<= Z0_22 3)
                  (<= Z0_25 3) (= Z1_25 3) (= Z0_25 3) (>= Z1_25 0)
                  (>= Z0_25 0) (> Z1_25 3) (> (NEXT Z1_25) Z1_25)
                  (= (NEXT Z1_25) 0) (> Z0_25 3) (> (NEXT Z0_25) Z0_25)
                  (= (NEXT Z0_25) 0) (> Z1_25 0) (> Z0_25 0) (= Z1_25 0)
                  (= Z0_25 0) (<= Z1_0 1) (<= Z0_0 1) (= Z1_4 1) (= Z0_4 1)
                  (>= Z1_4 0) (>= Z0_4 0) (> (NEXT Z1_4) Z1_4)
                  (= (NEXT Z1_4) 0) (> (NEXT Z0_4) Z0_4) (= (NEXT Z0_4) 0)
                  (> Z1_4 0) (> Z0_4 0) (= Z1_4 0) (= Z0_4 0) (<= Z1_4 1)
                  (<= Z0_4 1) (<= Z0_77 1) (= Z1_77 1) (> Z1_4 1) (> Z0_4 1)
                  (= Z0_77 1) (>= Z1_77 0) (>= Z0_77 0) (> Z1_77 1)
                  (> (NEXT Z1_77) Z1_77) (= (NEXT Z1_77) 0) (> Z0_77 1)
                  (> (NEXT Z0_77) Z0_77) (= (NEXT Z0_77) 0) (> Z1_77 0)
                  (> Z0_77 0) (= Z1_77 0) (= Z0_77 0) (>= Z1_0 0) (>= Z0_0 0)
                  (> Z1_0 1) (> (NEXT Z1_0) Z1_0) (= (NEXT Z1_0) 0) (> Z0_0 1)
                  (> (NEXT Z0_0) Z0_0) (= (NEXT Z0_0) 0) (> Z1_0 0) (> Z0_0 0)
                  (= Z1_0 0) (= Z0_0 0) (>= Z1_22 0) (>= Z0_22 0) (> Z1_22 3)
                  (> (NEXT Z1_22) Z1_22) (= (NEXT Z1_22) 0) (> Z0_22 3)
                  (> (NEXT Z0_22) Z0_22) (= (NEXT Z0_22) 0) (> Z1_22 0)
                  (> Z0_22 0) (= Z1_22 0) (= Z0_22 0))
This is AE2SBVZOT.

1. processing formula
Used boolean propositions: 
((<= X5_7 3) (= X5_7 2) (<= X4_7 3) (= X4_7 2) (<= X3_7 3) (= X3_7 2)
 (<= X2_7 3) (= X2_7 2) (<= X1_7 3) (= X1_7 2) (<= X0_7 3) (= X0_7 2)
 (> Z0_7 2) (< Z0_7 2) (<= Z0_7 3) (>= Z0_7 2) (= X5_7 3) (= X4_7 3) (= X3_7 3)
 (= X2_7 3) (= X1_7 3) (= X0_7 3) (> X1_7 0) (> X5_7 0) (> X4_7 0) (> X3_7 0)
 (> X2_7 0) (> X0_7 0) (< X2_7 X1_7) (< X3_7 X2_7) (< X4_7 X3_7) (< X5_7 X4_7)
 (< X0_7 X5_7) (> X5_7 3) (> (NEXT X5_7) X5_7) (= (NEXT X5_7) 0) (> X4_7 3)
 (> (NEXT X4_7) X4_7) (= (NEXT X4_7) 0) (> X3_7 3) (> (NEXT X3_7) X3_7)
 (= (NEXT X3_7) 0) (> X2_7 3) (> (NEXT X2_7) X2_7) (= (NEXT X2_7) 0) (> X1_7 3)
 (> (NEXT X1_7) X1_7) (= (NEXT X1_7) 0) (> X0_7 3) (> (NEXT X0_7) X0_7)
 (= (NEXT X0_7) 0) (= X5_7 0) (= X4_7 0) (= X3_7 0) (= X2_7 0) (= X1_7 0)
 (= X0_7 0) (>= Z1_7 0) (>= Z0_7 0) (> Z1_7 3) (> (NEXT Z1_7) Z1_7)
 (= (NEXT Z1_7) 0) (> Z0_7 3) (> (NEXT Z0_7) Z0_7) (= (NEXT Z0_7) 0) (> Z1_7 0)
 (> Z0_7 0) (= Z1_7 0) (= Z0_7 0) H_7 H_11 (<= Z1_22 3) (<= Z0_22 3)
 (<= Z0_25 3) (= Z1_25 3) (= Z0_25 3) (>= Z1_25 0) (>= Z0_25 0) (> Z1_25 3)
 (> (NEXT Z1_25) Z1_25) (= (NEXT Z1_25) 0) (> Z0_25 3) (> (NEXT Z0_25) Z0_25)
 (= (NEXT Z0_25) 0) (> Z1_25 0) (> Z0_25 0) (= Z1_25 0) (= Z0_25 0) H_25 H_30
 (<= Z1_0 1) (<= Z0_0 1) (= Z1_4 1) (= Z0_4 1) (>= Z1_4 0) (>= Z0_4 0)
 (> (NEXT Z1_4) Z1_4) (= (NEXT Z1_4) 0) (> (NEXT Z0_4) Z0_4) (= (NEXT Z0_4) 0)
 (> Z1_4 0) (> Z0_4 0) (= Z1_4 0) (= Z0_4 0) (<= Z1_4 1) (<= Z0_4 1)
 (<= Z0_77 1) (= Z1_77 1) (> Z1_4 1) (> Z0_4 1) (= Z0_77 1) H_4 (>= Z1_77 0)
 (>= Z0_77 0) (> Z1_77 1) (> (NEXT Z1_77) Z1_77) (= (NEXT Z1_77) 0) (> Z0_77 1)
 (> (NEXT Z0_77) Z0_77) (= (NEXT Z0_77) 0) (> Z1_77 0) (> Z0_77 0) (= Z1_77 0)
 (= Z0_77 0) (>= Z1_0 0) (>= Z0_0 0) (> Z1_0 1) (> (NEXT Z1_0) Z1_0)
 (= (NEXT Z1_0) 0) (> Z0_0 1) (> (NEXT Z0_0) Z0_0) (= (NEXT Z0_0) 0) (> Z1_0 0)
 (> Z0_0 0) (= Z1_0 0) (= Z0_0 0) H_0 (>= Z1_22 0) (>= Z0_22 0) (> Z1_22 3)
 (> (NEXT Z1_22) Z1_22) (= (NEXT Z1_22) 0) (> Z0_22 3) (> (NEXT Z0_22) Z0_22)
 (= (NEXT Z0_22) 0) (> Z1_22 0) (> Z0_22 0) (= Z1_22 0) (= Z0_22 0) H_77 H_22
 H_82 H_2 H_16 H_36 H_88 H_104 O)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(X5_7 X4_7 X3_7 X2_7 X1_7 X0_7 Z1_7 Z0_7 Z1_25 Z0_25 Z1_4 Z0_4 Z1_77 Z0_77 Z1_0
 Z0_0 Z1_22 Z0_22)

Graph dependency over terms 
((Z0_0 Z0_0 Z1_0 Z0_0 Z1_0 Z1_0 1 1 1 1 1 Z0_77 Z1_77 1 1 1 1 1 1 Z0_4 Z1_4
  Z0_0 Z1_0 Z0_0 Z1_0 (NEXT Z0_0) (NEXT Z1_0) Z0_0 Z1_0 Z0_77 Z1_77 Z0_77 Z1_77
  (NEXT Z0_77) (NEXT Z1_77) Z0_77 Z1_77 Z0_4 Z1_4 Z0_4 Z1_4 (NEXT Z0_4)
  (NEXT Z1_4) Z0_4 Z1_4 0 0 0 (NEXT Z0_22) 0 0 0 0 (NEXT Z1_22) 0 0 0 0
  (NEXT Z0_25) 0 0 0 0 (NEXT Z1_25) 0 0 0 0 (NEXT Z1_7) 0 Z0_22 Z1_22 Z0_25
  Z1_25 Z0_25 Z1_25 Z0_25 Z0_22 Z1_22 Z1_7 0 0 0 (NEXT Z0_7) 3 0 3 0 0
  (NEXT X0_7) 3 0 3 3 0 0 (NEXT X1_7) 3 0 3 3 0 0 (NEXT X2_7) 3 X1_7 0 3 3 0 0
  (NEXT X3_7) 3 X2_7 0 3 3 0 0 (NEXT X4_7) 3 X3_7 0 3 3 0 0 (NEXT X5_7) 3 X0_7
  X4_7 0 3 3 Z0_7 Z0_7 Z0_7 X0_7 X1_7 X2_7 X3_7 X4_7 X5_7 2))

Related variables 
((1 Z0_0 Z1_0 Z0_77 Z1_77 Z0_4 Z1_4 Z1_25 Z0_25 Z0_22 Z1_22 Z1_7 0 3 Z0_7 X0_7
  X1_7 X2_7 X3_7 X4_7 X5_7 2))

Time bound: 20

Number of Boolean variables: 
15
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
  482.251 seconds of real time
  0.012000 seconds of total run time (0.012000 user, 0.000000 system)
  0.00% CPU
  1,639,652,638,553 processor cycles
  130,864 bytes consed
  
---SAT---
------ time 0 ------
Evaluation took:
  482.423 seconds of real time
  0.184000 seconds of total run time (0.172000 user, 0.012000 system)
  [ Run times consist of 0.056 seconds GC time, and 0.128 seconds non-GC time. ]
  0.04% CPU
  1,640,238,604,650 processor cycles
  385,624,960 bytes consed
  
  before it was aborted by a non-local transfer of control.
  
