This is SBCL 1.2.4.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
IPC-terms: ((NEXT X3_30) (NEXT X2_30) (NEXT X1_30) (NEXT X0_30) X3_30 X2_30
            X1_30 X0_30 (NEXT Z1_30) (NEXT Z0_30) Z1_30 Z0_30 (NEXT Z1_27)
            (NEXT Z0_27) Z1_27 Z0_27 (NEXT Z1_7) (NEXT Z0_7) Z1_7 Z0_7
            (NEXT X3_10) (NEXT X2_10) (NEXT X1_10) (NEXT X0_10) X3_10 X2_10
            X1_10 X0_10 (NEXT Z1_10) 2 (NEXT Z0_10) Z1_10 Z0_10 (NEXT Z1_0)
            (NEXT Z0_0) Z1_0 Z0_0 (NEXT Z1_4) 1 (NEXT Z0_4) Z1_4 Z0_4 0)
IPC-constraints: ((<= X3_30 2) (= X3_30 1) (<= X2_30 2) (= X2_30 1)
                  (<= X1_30 2) (= X1_30 1) (<= X0_30 2) (= X0_30 1) (> Z0_30 1)
                  (< Z0_30 1) (<= Z0_30 2) (>= Z0_30 1) (= X3_30 2) (= X2_30 2)
                  (= X1_30 2) (= X0_30 2) (> X1_30 0) (> X3_30 0) (> X2_30 0)
                  (> X0_30 0) (< X2_30 X1_30) (< X3_30 X2_30) (< X0_30 X3_30)
                  (> X3_30 2) (> (NEXT X3_30) X3_30) (= (NEXT X3_30) 0)
                  (> X2_30 2) (> (NEXT X2_30) X2_30) (= (NEXT X2_30) 0)
                  (> X1_30 2) (> (NEXT X1_30) X1_30) (= (NEXT X1_30) 0)
                  (> X0_30 2) (> (NEXT X0_30) X0_30) (= (NEXT X0_30) 0)
                  (= X3_30 0) (= X2_30 0) (= X1_30 0) (= X0_30 0) (>= Z1_30 0)
                  (>= Z0_30 0) (> Z1_30 2) (> (NEXT Z1_30) Z1_30)
                  (= (NEXT Z1_30) 0) (> Z0_30 2) (> (NEXT Z0_30) Z0_30)
                  (= (NEXT Z0_30) 0) (> Z1_30 0) (> Z0_30 0) (= Z1_30 0)
                  (= Z0_30 0) (<= Z0_27 1) (= Z1_27 1) (= Z0_27 1) (>= Z1_27 0)
                  (>= Z0_27 0) (> Z1_27 1) (> (NEXT Z1_27) Z1_27)
                  (= (NEXT Z1_27) 0) (> Z0_27 1) (> (NEXT Z0_27) Z0_27)
                  (= (NEXT Z0_27) 0) (> Z1_27 0) (> Z0_27 0) (= Z1_27 0)
                  (= Z0_27 0) (>= Z1_7 0) (>= Z0_7 0) (> (NEXT Z1_7) Z1_7)
                  (= (NEXT Z1_7) 0) (> (NEXT Z0_7) Z0_7) (= (NEXT Z0_7) 0)
                  (> Z1_7 0) (> Z0_7 0) (= Z1_7 0) (= Z0_7 0) (<= Z1_7 1)
                  (<= Z0_7 1) (<= X3_10 2) (= X3_10 1) (<= X2_10 2) (= X2_10 1)
                  (<= X1_10 2) (= X1_10 1) (<= X0_10 2) (= X0_10 1) (> Z0_10 1)
                  (< Z0_10 1) (<= Z0_10 2) (>= Z0_10 1) (= X3_10 2) (= X2_10 2)
                  (= X1_10 2) (> Z1_7 1) (> Z0_7 1) (= X0_10 2) (> X1_10 0)
                  (> X3_10 0) (> X2_10 0) (> X0_10 0) (< X2_10 X1_10)
                  (< X3_10 X2_10) (< X0_10 X3_10) (> X3_10 2)
                  (> (NEXT X3_10) X3_10) (= (NEXT X3_10) 0) (> X2_10 2)
                  (> (NEXT X2_10) X2_10) (= (NEXT X2_10) 0) (> X1_10 2)
                  (> (NEXT X1_10) X1_10) (= (NEXT X1_10) 0) (> X0_10 2)
                  (> (NEXT X0_10) X0_10) (= (NEXT X0_10) 0) (= X3_10 0)
                  (= X2_10 0) (= X1_10 0) (= X0_10 0) (>= Z1_10 0) (>= Z0_10 0)
                  (> Z1_10 2) (> (NEXT Z1_10) Z1_10) (= (NEXT Z1_10) 0)
                  (> Z0_10 2) (> (NEXT Z0_10) Z0_10) (= (NEXT Z0_10) 0)
                  (> Z1_10 0) (> Z0_10 0) (= Z1_10 0) (= Z0_10 0) (>= Z1_0 0)
                  (>= Z0_0 0) (> (NEXT Z1_0) Z1_0) (= (NEXT Z1_0) 0)
                  (> (NEXT Z0_0) Z0_0) (= (NEXT Z0_0) 0) (> Z1_0 0) (> Z0_0 0)
                  (= Z1_0 0) (= Z0_0 0) (<= Z1_0 1) (<= Z0_0 1) (<= Z0_4 1)
                  (= Z1_4 1) (> Z1_0 1) (> Z0_0 1) (= Z0_4 1) (>= Z1_4 0)
                  (>= Z0_4 0) (> Z1_4 1) (> (NEXT Z1_4) Z1_4) (= (NEXT Z1_4) 0)
                  (> Z0_4 1) (> (NEXT Z0_4) Z0_4) (= (NEXT Z0_4) 0) (> Z1_4 0)
                  (> Z0_4 0) (= Z1_4 0) (= Z0_4 0))
This is AE2BVZOT.

1. processing formula
Used boolean propositions: 
((<= X3_30 2) (= X3_30 1) (<= X2_30 2) (= X2_30 1) (<= X1_30 2) (= X1_30 1)
 (<= X0_30 2) (= X0_30 1) (> Z0_30 1) (< Z0_30 1) (<= Z0_30 2) (>= Z0_30 1)
 (= X3_30 2) (= X2_30 2) (= X1_30 2) (= X0_30 2) (> X1_30 0) (> X3_30 0)
 (> X2_30 0) (> X0_30 0) (< X2_30 X1_30) (< X3_30 X2_30) (< X0_30 X3_30)
 (> X3_30 2) (> (NEXT X3_30) X3_30) (= (NEXT X3_30) 0) (> X2_30 2)
 (> (NEXT X2_30) X2_30) (= (NEXT X2_30) 0) (> X1_30 2) (> (NEXT X1_30) X1_30)
 (= (NEXT X1_30) 0) (> X0_30 2) (> (NEXT X0_30) X0_30) (= (NEXT X0_30) 0)
 (= X3_30 0) (= X2_30 0) (= X1_30 0) (= X0_30 0) (>= Z1_30 0) (>= Z0_30 0)
 (> Z1_30 2) (> (NEXT Z1_30) Z1_30) (= (NEXT Z1_30) 0) (> Z0_30 2)
 (> (NEXT Z0_30) Z0_30) (= (NEXT Z0_30) 0) (> Z1_30 0) (> Z0_30 0) (= Z1_30 0)
 (= Z0_30 0) (<= Z0_27 1) (= Z1_27 1) (= Z0_27 1) (>= Z1_27 0) (>= Z0_27 0)
 (> Z1_27 1) (> (NEXT Z1_27) Z1_27) (= (NEXT Z1_27) 0) (> Z0_27 1)
 (> (NEXT Z0_27) Z0_27) (= (NEXT Z0_27) 0) (> Z1_27 0) (> Z0_27 0) (= Z1_27 0)
 (= Z0_27 0) H_30 H_27 H_35 (>= Z1_7 0) (>= Z0_7 0) (> (NEXT Z1_7) Z1_7)
 (= (NEXT Z1_7) 0) (> (NEXT Z0_7) Z0_7) (= (NEXT Z0_7) 0) (> Z1_7 0) (> Z0_7 0)
 (= Z1_7 0) (= Z0_7 0) (<= Z1_7 1) (<= Z0_7 1) (<= X3_10 2) (= X3_10 1)
 (<= X2_10 2) (= X2_10 1) (<= X1_10 2) (= X1_10 1) (<= X0_10 2) (= X0_10 1)
 (> Z0_10 1) (< Z0_10 1) (<= Z0_10 2) (>= Z0_10 1) (= X3_10 2) (= X2_10 2)
 (= X1_10 2) (> Z1_7 1) (> Z0_7 1) (= X0_10 2) H_7 (> X1_10 0) (> X3_10 0)
 (> X2_10 0) (> X0_10 0) (< X2_10 X1_10) (< X3_10 X2_10) (< X0_10 X3_10)
 (> X3_10 2) (> (NEXT X3_10) X3_10) (= (NEXT X3_10) 0) (> X2_10 2)
 (> (NEXT X2_10) X2_10) (= (NEXT X2_10) 0) (> X1_10 2) (> (NEXT X1_10) X1_10)
 (= (NEXT X1_10) 0) (> X0_10 2) (> (NEXT X0_10) X0_10) (= (NEXT X0_10) 0)
 (= X3_10 0) (= X2_10 0) (= X1_10 0) (= X0_10 0) (>= Z1_10 0) (>= Z0_10 0)
 (> Z1_10 2) (> (NEXT Z1_10) Z1_10) (= (NEXT Z1_10) 0) (> Z0_10 2)
 (> (NEXT Z0_10) Z0_10) (= (NEXT Z0_10) 0) (> Z1_10 0) (> Z0_10 0) (= Z1_10 0)
 (= Z0_10 0) (>= Z1_0 0) (>= Z0_0 0) (> (NEXT Z1_0) Z1_0) (= (NEXT Z1_0) 0)
 (> (NEXT Z0_0) Z0_0) (= (NEXT Z0_0) 0) (> Z1_0 0) (> Z0_0 0) (= Z1_0 0)
 (= Z0_0 0) (<= Z1_0 1) (<= Z0_0 1) (<= Z0_4 1) (= Z1_4 1) (> Z1_0 1)
 (> Z0_0 1) (= Z0_4 1) H_0 (>= Z1_4 0) (>= Z0_4 0) (> Z1_4 1)
 (> (NEXT Z1_4) Z1_4) (= (NEXT Z1_4) 0) (> Z0_4 1) (> (NEXT Z0_4) Z0_4)
 (= (NEXT Z0_4) 0) (> Z1_4 0) (> Z0_4 0) (= Z1_4 0) (= Z0_4 0) H_10 H_15 H_2
 H_41 H_21 H_4 H_56 H_70 O)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(X3_30 X2_30 X1_30 X0_30 Z1_30 Z0_30 Z1_27 Z0_27 Z1_7 Z0_7 X3_10 X2_10 X1_10
 X0_10 Z1_10 Z0_10 Z1_0 Z0_0 Z1_4 Z0_4)

Graph dependency over terms 
((0 0 0 (NEXT Z0_4) 0 0 0 0 (NEXT Z1_4) 0 0 0 0 (NEXT Z0_0) 0 0 0 0 (NEXT Z1_0)
  0 0 0 0 (NEXT Z0_7) 0 0 0 0 (NEXT Z1_7) 0 0 0 0 (NEXT Z0_27) 0 0 0 0
  (NEXT Z1_27) 0 Z0_4 Z1_4 Z0_4 Z0_0 Z1_0 Z1_4 Z0_4 Z0_0 Z1_0 Z0_7 Z1_7 Z0_7
  Z1_7 Z0_27 Z1_27 Z0_27 Z1_27 Z0_27 0 0 0 (NEXT Z0_10) 0 1 1 1 0 0 0
  (NEXT Z1_10) 0 0 0 (NEXT X0_10) 0 1 0 0 (NEXT X1_10) 0 1 0 0 (NEXT X2_10)
  X1_10 0 1 0 0 (NEXT X3_10) X0_10 X2_10 0 1 0 0 0 (NEXT Z0_30) 0 1 1 1 0 0 0
  (NEXT Z1_30) 0 Z0_10 Z1_10 X0_10 X1_10 X2_10 X3_10 X0_10 X1_10 X2_10 X3_10
  Z0_10 X0_10 X1_10 X2_10 X3_10 Z0_30 Z1_30 Z0_30 0 0 (NEXT X0_30) 2 0 2 1 2 0
  0 (NEXT X1_30) 2 0 2 1 2 0 0 (NEXT X2_30) 2 X1_30 0 2 1 2 0 2 X0_30 X2_30 0 2
  1 2 0 X3_30 (NEXT X3_30)))

Related variables 
((Z1_4 Z0_4 Z0_0 Z1_0 Z0_7 Z1_7 Z1_27 Z0_27 Z1_10 Z0_10 X0_10 X1_10 X2_10 X3_10
  Z1_30 Z0_30 X1_30 X0_30 X2_30 1 2 0 X3_30))

Time bound: 20

Number of Boolean variables: 
14
define FO future formulae Xt
define FO future formulae Yt
define for interpreted relations: <,>,=,<=,>= 
define FO terms for +,-,*,/,mod 
define loop constraints

done processing formula

no CNF
  0.000 seconds of real time

2. SMT solving: z3...
 
Evaluation took:
  440.521 seconds of real time
  0.012000 seconds of total run time (0.000000 user, 0.012000 system)
  0.00% CPU
  1,497,769,257,127 processor cycles
  163,808 bytes consed
  
---UNSAT---
Evaluation took:
  440.572 seconds of real time
  0.064000 seconds of total run time (0.052000 user, 0.012000 system)
  [ Run times consist of 0.016 seconds GC time, and 0.048 seconds non-GC time. ]
  0.01% CPU
  1,497,944,158,537 processor cycles
  9,158,320 bytes consed
  
