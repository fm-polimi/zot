This is SBCL 1.2.4.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
IPC-terms: ((NEXT X5_7) (NEXT X4_7) (NEXT X3_7) (NEXT X2_7) (NEXT X1_7)
            (NEXT X0_7) X5_7 X4_7 X3_7 X2_7 X1_7 X0_7 (NEXT Z1_7) (NEXT Z0_7)
            Z1_7 Z0_7 (NEXT Z1_25) (NEXT Z0_25) Z1_25 Z0_25 (NEXT Z1_22)
            (NEXT Z0_22) Z1_22 Z0_22 (NEXT Z1_45) 2 (NEXT Z0_45) Z1_45 Z0_45
            (NEXT Z1_0) (NEXT Z0_0) Z1_0 Z0_0 (NEXT Z1_4) 1 (NEXT Z0_4) Z1_4
            Z0_4 (NEXT Z1_62) (NEXT Z0_62) Z1_62 Z0_62 (NEXT Z1_68) 3
            (NEXT Z0_68) Z1_68 Z0_68 0)
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
                  (= Z0_25 0) (>= Z1_22 0) (>= Z0_22 0) (> Z1_22 3)
                  (> (NEXT Z1_22) Z1_22) (= (NEXT Z1_22) 0) (> Z0_22 3)
                  (> (NEXT Z0_22) Z0_22) (= (NEXT Z0_22) 0) (> Z1_22 0)
                  (> Z0_22 0) (= Z1_22 0) (= Z0_22 0) (<= Z1_22 2) (<= Z0_22 2)
                  (<= Z0_45 2) (= Z1_45 2) (> Z1_22 2) (> Z0_22 2) (= Z0_45 2)
                  (>= Z1_45 0) (>= Z0_45 0) (> Z1_45 2) (> (NEXT Z1_45) Z1_45)
                  (= (NEXT Z1_45) 0) (> Z0_45 2) (> (NEXT Z0_45) Z0_45)
                  (= (NEXT Z0_45) 0) (> Z1_45 0) (> Z0_45 0) (= Z1_45 0)
                  (= Z0_45 0) (>= Z1_0 0) (>= Z0_0 0) (> (NEXT Z1_0) Z1_0)
                  (= (NEXT Z1_0) 0) (> (NEXT Z0_0) Z0_0) (= (NEXT Z0_0) 0)
                  (> Z1_0 0) (> Z0_0 0) (= Z1_0 0) (= Z0_0 0) (<= Z1_0 1)
                  (<= Z0_0 1) (<= Z0_4 1) (= Z1_4 1) (> Z1_0 1) (> Z0_0 1)
                  (= Z0_4 1) (>= Z1_4 0) (>= Z0_4 0) (> Z1_4 1)
                  (> (NEXT Z1_4) Z1_4) (= (NEXT Z1_4) 0) (> Z0_4 1)
                  (> (NEXT Z0_4) Z0_4) (= (NEXT Z0_4) 0) (> Z1_4 0) (> Z0_4 0)
                  (= Z1_4 0) (= Z0_4 0) (>= Z1_62 0) (>= Z0_62 0)
                  (> (NEXT Z1_62) Z1_62) (= (NEXT Z1_62) 0)
                  (> (NEXT Z0_62) Z0_62) (= (NEXT Z0_62) 0) (> Z1_62 0)
                  (> Z0_62 0) (= Z1_62 0) (= Z0_62 0) (<= Z1_62 3) (<= Z0_62 3)
                  (<= Z0_68 3) (= Z1_68 3) (> Z1_62 3) (> Z0_62 3) (= Z0_68 3)
                  (>= Z1_68 0) (>= Z0_68 0) (> Z1_68 3) (> (NEXT Z1_68) Z1_68)
                  (= (NEXT Z1_68) 0) (> Z0_68 3) (> (NEXT Z0_68) Z0_68)
                  (= (NEXT Z0_68) 0) (> Z1_68 0) (> Z0_68 0) (= Z1_68 0)
                  (= Z0_68 0))
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
 H_2 (>= Z1_22 0) (>= Z0_22 0) (> Z1_22 3) (> (NEXT Z1_22) Z1_22)
 (= (NEXT Z1_22) 0) (> Z0_22 3) (> (NEXT Z0_22) Z0_22) (= (NEXT Z0_22) 0)
 (> Z1_22 0) (> Z0_22 0) (= Z1_22 0) (= Z0_22 0) (<= Z1_22 2) (<= Z0_22 2)
 (<= Z0_45 2) (= Z1_45 2) (> Z1_22 2) (> Z0_22 2) (= Z0_45 2) H_22 (>= Z1_45 0)
 (>= Z0_45 0) (> Z1_45 2) (> (NEXT Z1_45) Z1_45) (= (NEXT Z1_45) 0) (> Z0_45 2)
 (> (NEXT Z0_45) Z0_45) (= (NEXT Z0_45) 0) (> Z1_45 0) (> Z0_45 0) (= Z1_45 0)
 (= Z0_45 0) (>= Z1_0 0) (>= Z0_0 0) (> (NEXT Z1_0) Z1_0) (= (NEXT Z1_0) 0)
 (> (NEXT Z0_0) Z0_0) (= (NEXT Z0_0) 0) (> Z1_0 0) (> Z0_0 0) (= Z1_0 0)
 (= Z0_0 0) (<= Z1_0 1) (<= Z0_0 1) (<= Z0_4 1) (= Z1_4 1) (> Z1_0 1)
 (> Z0_0 1) (= Z0_4 1) H_0 (>= Z1_4 0) (>= Z0_4 0) (> Z1_4 1)
 (> (NEXT Z1_4) Z1_4) (= (NEXT Z1_4) 0) (> Z0_4 1) (> (NEXT Z0_4) Z0_4)
 (= (NEXT Z0_4) 0) (> Z1_4 0) (> Z0_4 0) (= Z1_4 0) (= Z0_4 0) H_45 H_4
 (>= Z1_62 0) (>= Z0_62 0) (> (NEXT Z1_62) Z1_62) (= (NEXT Z1_62) 0)
 (> (NEXT Z0_62) Z0_62) (= (NEXT Z0_62) 0) (> Z1_62 0) (> Z0_62 0) (= Z1_62 0)
 (= Z0_62 0) (<= Z1_62 3) (<= Z0_62 3) (<= Z0_68 3) (= Z1_68 3) (> Z1_62 3)
 (> Z0_62 3) (= Z0_68 3) H_62 (>= Z1_68 0) (>= Z0_68 0) (> Z1_68 3)
 (> (NEXT Z1_68) Z1_68) (= (NEXT Z1_68) 0) (> Z0_68 3) (> (NEXT Z0_68) Z0_68)
 (= (NEXT Z0_68) 0) (> Z1_68 0) (> Z0_68 0) (= Z1_68 0) (= Z0_68 0) H_16 H_36
 H_68 H_104 O)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(X5_7 X4_7 X3_7 X2_7 X1_7 X0_7 Z1_7 Z0_7 Z1_25 Z0_25 Z1_22 Z0_22 Z1_45 Z0_45
 Z1_0 Z0_0 Z1_4 Z0_4 Z1_62 Z0_62 Z1_68 Z0_68)

Graph dependency over terms 
((Z0_4 Z0_4 Z1_4 Z0_4 Z1_4 Z0_4 Z1_4 1 1 1 1 Z0_0 Z1_0 Z0_4 Z1_4 Z0_4 Z1_4
  (NEXT Z0_4) (NEXT Z1_4) Z0_4 Z1_4 Z0_0 Z1_0 Z0_0 Z1_0 (NEXT Z0_0) (NEXT Z1_0)
  Z0_0 Z1_0 0 0 0 (NEXT Z0_68) 0 0 0 0 (NEXT Z1_68) 0 0 0 0 (NEXT Z0_62) 0 0 0
  0 (NEXT Z1_62) 0 0 0 0 (NEXT Z0_25) 0 0 0 0 (NEXT Z1_25) 0 0 0 0 (NEXT Z1_7)
  0 Z0_68 Z1_68 Z0_68 Z0_62 Z1_62 Z1_68 Z0_68 Z0_62 Z1_62 Z0_25 Z1_25 Z0_25
  Z1_25 Z0_25 Z1_7 0 0 0 (NEXT Z0_45) 0 0 0 0 (NEXT Z1_45) 0 0 0 0 (NEXT Z0_22)
  3 0 3 0 0 0 (NEXT Z1_22) 3 0 3 0 0 0 (NEXT Z0_7) 3 0 3 Z0_45 Z1_45 Z0_45
  Z0_22 Z1_22 Z1_45 Z0_45 Z0_22 Z1_22 Z0_7 Z0_7 Z0_7 0 0 (NEXT X0_7) 3 0 3 2 3
  0 0 (NEXT X1_7) 3 0 3 2 3 0 0 (NEXT X2_7) 3 X1_7 0 3 2 3 0 0 (NEXT X3_7) 3
  X2_7 0 3 2 3 0 0 (NEXT X4_7) 3 X3_7 0 3 2 3 0 3 X0_7 X4_7 0 3 2 3 0 X5_7
  (NEXT X5_7)))

Related variables 
((1 Z0_4 Z1_4 Z0_0 Z1_0 Z1_68 Z0_68 Z0_62 Z1_62 Z1_25 Z0_25 Z1_7 Z1_45 Z0_45
  Z0_22 Z1_22 Z0_7 X1_7 X2_7 X3_7 X0_7 X4_7 2 3 0 X5_7))

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
  0.694 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  2,357,062,781 processor cycles
  0 bytes consed
  
---SAT---
------ time 0 ------
  H_16
  H_104
  H_11
  H_62
  H_36
  H_68
  H_0
  Z1_68 = 0.0
  Z1_0 = 0.0
  X3_7 = 0.25
  X2_7 = 0.75
  Z0_7 = (- 0.25)
  X4_7 = 0.0
  Z0_45 = 2.25
  X0_7 = 0.0
  Z1_4 = 1.25
  Z1_7 = 0.0
  Z1_25 = 0.0
  Z1_22 = 0.0
  Z1_45 = 0.0
  Z0_68 = 0.25
  X5_7 = 0.0
  Z0_4 = 1.25
  Z0_62 = 3.25
  Z0_0 = 0.25
  Z0_25 = 0.25
  DELTA = 0.25
  X1_7 = 0.0
  Z0_22 = 3.25
  Z1_62 = 0.0
------ time 1 ------
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  H_0
  O
  Z1_68 = 3.25
  Z1_0 = 1.25
  X3_7 = 0.75
  X2_7 = 1.0
  Z0_7 = 0.0
  X4_7 = 0.5
  Z0_45 = 0.0
  X0_7 = 0.0
  Z1_4 = 1.25
  Z1_7 = 3.25
  Z1_25 = 0.25
  Z1_22 = 3.25
  Z1_45 = 1.75
  Z0_68 = 0.0
  X5_7 = 0.25
  Z0_4 = 0.0
  Z0_62 = 0.0
  Z0_0 = 0.0
  Z0_25 = 0.0
  DELTA = 0.5
  X1_7 = 1.25
  Z0_22 = 0.0
  Z1_62 = 0.25
------ time 2 ------
  H_22
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  Z1_68 = 3.75
  Z1_0 = 0.0
  X3_7 = 1.25
  X2_7 = 1.5
  Z0_7 = 0.5
  X4_7 = 1.0
  Z0_45 = 0.5
  X0_7 = 0.5
  Z1_4 = 1.75
  Z1_7 = 3.75
  Z1_25 = 0.75
  Z1_22 = 0.0
  Z1_45 = 2.25
  Z0_68 = 0.5
  X5_7 = 0.75
  Z0_4 = 0.5
  Z0_62 = 0.5
  Z0_0 = 0.5
  Z0_25 = 0.5
  DELTA = 3.25
  X1_7 = 1.75
  Z0_22 = 0.5
  Z1_62 = 0.75
------ time 3 ------
  H_22
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  Z1_68 = 7.0
  Z1_0 = 3.25
  X3_7 = 4.5
  X2_7 = 4.75
  Z0_7 = 3.75
  X4_7 = 4.25
  Z0_45 = 3.75
  X0_7 = 3.75
  Z1_4 = 5.0
  Z1_7 = 7.0
  Z1_25 = 4.0
  Z1_22 = 3.25
  Z1_45 = 5.5
  Z0_68 = 3.75
  X5_7 = 4.0
  Z0_4 = 3.75
  Z0_62 = 3.75
  Z0_0 = 3.75
  Z0_25 = 3.75
  DELTA = 0.25
  X1_7 = 5.0
  Z0_22 = 3.75
  Z1_62 = 4.0
------ time 4 ------
  H_22
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  Z1_68 = 7.25
  Z1_0 = 3.5
  X3_7 = 4.75
  X2_7 = 5.0
  Z0_7 = 4.0
  X4_7 = 4.5
  Z0_45 = 4.0
  X0_7 = 4.0
  Z1_4 = 5.25
  Z1_7 = 7.25
  Z1_25 = 4.25
  Z1_22 = 3.5
  Z1_45 = 5.75
  Z0_68 = 4.0
  X5_7 = 4.25
  Z0_4 = 4.0
  Z0_62 = 4.0
  Z0_0 = 4.0
  Z0_25 = 4.0
  DELTA = 0.25
  X1_7 = 5.25
  Z0_22 = 4.0
  Z1_62 = 4.25
------ time 5 ------
  H_22
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  Z1_68 = 7.5
  Z1_0 = 3.75
  X3_7 = 5.0
  X2_7 = 5.25
  Z0_7 = 4.25
  X4_7 = 4.75
  Z0_45 = 4.25
  X0_7 = 4.25
  Z1_4 = 5.5
  Z1_7 = 7.5
  Z1_25 = 4.5
  Z1_22 = 3.75
  Z1_45 = 6.0
  Z0_68 = 4.25
  X5_7 = 4.5
  Z0_4 = 4.25
  Z0_62 = 4.25
  Z0_0 = 4.25
  Z0_25 = 4.25
  DELTA = 0.25
  X1_7 = 5.5
  Z0_22 = 4.25
  Z1_62 = 4.5
------ time 6 ------
  H_22
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  Z1_68 = 7.75
  Z1_0 = 4.0
  X3_7 = 5.25
  X2_7 = 5.5
  Z0_7 = 4.5
  X4_7 = 5.0
  Z0_45 = 4.5
  X0_7 = 4.5
  Z1_4 = 5.75
  Z1_7 = 7.75
  Z1_25 = 4.75
  Z1_22 = 4.0
  Z1_45 = 6.25
  Z0_68 = 4.5
  X5_7 = 4.75
  Z0_4 = 4.5
  Z0_62 = 4.5
  Z0_0 = 4.5
  Z0_25 = 4.5
  DELTA = 0.25
  X1_7 = 5.75
  Z0_22 = 4.5
  Z1_62 = 4.75
------ time 7 ------
  H_22
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  Z1_68 = 8.0
  Z1_0 = 4.25
  X3_7 = 5.5
  X2_7 = 5.75
  Z0_7 = 4.75
  X4_7 = 5.25
  Z0_45 = 4.75
  X0_7 = 4.75
  Z1_4 = 6.0
  Z1_7 = 8.0
  Z1_25 = 5.0
  Z1_22 = 4.25
  Z1_45 = 6.5
  Z0_68 = 4.75
  X5_7 = 5.0
  Z0_4 = 4.75
  Z0_62 = 4.75
  Z0_0 = 4.75
  Z0_25 = 4.75
  DELTA = 0.25
  X1_7 = 6.0
  Z0_22 = 4.75
  Z1_62 = 5.0
------ time 8 ------
  H_22
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  Z1_68 = 8.25
  Z1_0 = 4.5
  X3_7 = 5.75
  X2_7 = 6.0
  Z0_7 = 5.0
  X4_7 = 5.5
  Z0_45 = 5.0
  X0_7 = 5.0
  Z1_4 = 6.25
  Z1_7 = 8.25
  Z1_25 = 5.25
  Z1_22 = 4.5
  Z1_45 = 6.75
  Z0_68 = 5.0
  X5_7 = 5.25
  Z0_4 = 5.0
  Z0_62 = 5.0
  Z0_0 = 5.0
  Z0_25 = 5.0
  DELTA = 0.25
  X1_7 = 6.25
  Z0_22 = 5.0
  Z1_62 = 5.25
------ time 9 ------
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  H_0
  Z1_68 = 8.5
  Z1_0 = 4.75
  X3_7 = 6.0
  X2_7 = 6.25
  Z0_7 = 5.25
  X4_7 = 5.75
  Z0_45 = 5.25
  X0_7 = 5.25
  Z1_4 = 6.5
  Z1_7 = 8.5
  Z1_25 = 5.5
  Z1_22 = 4.75
  Z1_45 = 7.0
  Z0_68 = 5.25
  X5_7 = 5.5
  Z0_4 = 5.25
  Z0_62 = 5.25
  Z0_0 = 0.0
  Z0_25 = 5.25
  DELTA = 0.25
  X1_7 = 6.5
  Z0_22 = 0.0
  Z1_62 = 5.5
------ time 10 ------
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  H_0
  Z1_68 = 8.75
  Z1_0 = 5.0
  X3_7 = 6.25
  X2_7 = 6.5
  Z0_7 = 5.5
  X4_7 = 6.0
  Z0_45 = 5.5
  X0_7 = 5.5
  Z1_4 = 6.75
  Z1_7 = 8.75
  Z1_25 = 5.75
  Z1_22 = 5.0
  Z1_45 = 7.25
  Z0_68 = 5.5
  X5_7 = 5.75
  Z0_4 = 5.5
  Z0_62 = 5.5
  Z0_0 = 0.25
  Z0_25 = 5.5
  DELTA = 0.75
  X1_7 = 6.75
  Z0_22 = 0.25
  Z1_62 = 5.75
------ time 11 ------
  H_22
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  Z1_68 = 9.5
  Z1_0 = 0.0
  X3_7 = 7.0
  X2_7 = 7.25
  Z0_7 = 6.25
  X4_7 = 6.75
  Z0_45 = 6.25
  X0_7 = 6.25
  Z1_4 = 7.5
  Z1_7 = 9.5
  Z1_25 = 6.5
  Z1_22 = 0.0
  Z1_45 = 8.0
  Z0_68 = 6.25
  X5_7 = 6.5
  Z0_4 = 6.25
  Z0_62 = 6.25
  Z0_0 = 1.0
  Z0_25 = 6.25
  DELTA = 1.25
  X1_7 = 7.5
  Z0_22 = 1.0
  Z1_62 = 6.5
------ time 12 ------
  H_22
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  Z1_68 = 10.75
  Z1_0 = 1.25
  X3_7 = 8.25
  X2_7 = 8.5
  Z0_7 = 7.5
  X4_7 = 8.0
  Z0_45 = 7.5
  X0_7 = 7.5
  Z1_4 = 8.75
  Z1_7 = 10.75
  Z1_25 = 7.75
  Z1_22 = 1.25
  Z1_45 = 9.25
  Z0_68 = 7.5
  X5_7 = 7.75
  Z0_4 = 7.5
  Z0_62 = 7.5
  Z0_0 = 2.25
  Z0_25 = 7.5
  DELTA = 0.25
  X1_7 = 8.75
  Z0_22 = 2.25
  Z1_62 = 7.75
------ time 13 ------
  H_22
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  Z1_68 = 11.0
  Z1_0 = 1.5
  X3_7 = 8.5
  X2_7 = 8.75
  Z0_7 = 7.75
  X4_7 = 8.25
  Z0_45 = 7.75
  X0_7 = 7.75
  Z1_4 = 9.0
  Z1_7 = 11.0
  Z1_25 = 8.0
  Z1_22 = 1.5
  Z1_45 = 9.5
  Z0_68 = 7.75
  X5_7 = 8.0
  Z0_4 = 7.75
  Z0_62 = 7.75
  Z0_0 = 2.5
  Z0_25 = 7.75
  DELTA = 0.25
  X1_7 = 9.0
  Z0_22 = 2.5
  Z1_62 = 8.0
------ time 14 ------
  H_22
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  Z1_68 = 11.25
  Z1_0 = 1.75
  X3_7 = 8.75
  X2_7 = 9.0
  Z0_7 = 8.0
  X4_7 = 8.5
  Z0_45 = 8.0
  X0_7 = 8.0
  Z1_4 = 9.25
  Z1_7 = 11.25
  Z1_25 = 8.25
  Z1_22 = 1.75
  Z1_45 = 9.75
  Z0_68 = 8.0
  X5_7 = 8.25
  Z0_4 = 8.0
  Z0_62 = 8.0
  Z0_0 = 2.75
  Z0_25 = 8.0
  DELTA = 0.25
  X1_7 = 9.25
  Z0_22 = 2.75
  Z1_62 = 8.25
------ time 15 ------
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  H_0
  Z1_68 = 11.5
  Z1_0 = 2.0
  X3_7 = 9.0
  X2_7 = 9.25
  Z0_7 = 8.25
  X4_7 = 8.75
  Z0_45 = 8.25
  X0_7 = 8.25
  Z1_4 = 9.5
  Z1_7 = 11.5
  Z1_25 = 8.5
  Z1_22 = 2.0
  Z1_45 = 10.0
  Z0_68 = 8.25
  X5_7 = 8.5
  Z0_4 = 8.25
  Z0_62 = 8.25
  Z0_0 = 0.0
  Z0_25 = 8.25
  DELTA = 0.5
  X1_7 = 9.5
  Z0_22 = 0.0
  Z1_62 = 8.5
------ time 16 ------
**LOOP**
  H_22
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  Z1_68 = 12.0
  Z1_0 = 0.0
  X3_7 = 9.5
  X2_7 = 9.75
  Z0_7 = 8.75
  X4_7 = 9.25
  Z0_45 = 8.75
  X0_7 = 8.75
  Z1_4 = 10.0
  Z1_7 = 12.0
  Z1_25 = 9.0
  Z1_22 = 0.0
  Z1_45 = 10.5
  Z0_68 = 8.75
  X5_7 = 9.0
  Z0_4 = 8.75
  Z0_62 = 8.75
  Z0_0 = 0.5
  Z0_25 = 8.75
  DELTA = 2.25
  X1_7 = 10.0
  Z0_22 = 0.5
  Z1_62 = 9.0
------ time 17 ------
  H_22
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  Z1_68 = 14.25
  Z1_0 = 2.25
  X3_7 = 11.75
  X2_7 = 12.0
  Z0_7 = 11.0
  X4_7 = 11.5
  Z0_45 = 11.0
  X0_7 = 11.0
  Z1_4 = 12.25
  Z1_7 = 14.25
  Z1_25 = 11.25
  Z1_22 = 2.25
  Z1_45 = 12.75
  Z0_68 = 11.0
  X5_7 = 11.25
  Z0_4 = 11.0
  Z0_62 = 11.0
  Z0_0 = 2.75
  Z0_25 = 11.0
  DELTA = 0.5
  X1_7 = 12.25
  Z0_22 = 2.75
  Z1_62 = 11.25
------ time 18 ------
  H_22
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  Z1_68 = 14.75
  Z1_0 = 2.75
  X3_7 = 12.25
  X2_7 = 12.5
  Z0_7 = 11.5
  X4_7 = 12.0
  Z0_45 = 11.5
  X0_7 = 11.5
  Z1_4 = 12.75
  Z1_7 = 14.75
  Z1_25 = 11.75
  Z1_22 = 2.75
  Z1_45 = 13.25
  Z0_68 = 11.5
  X5_7 = 11.75
  Z0_4 = 11.5
  Z0_62 = 11.5
  Z0_0 = 3.25
  Z0_25 = 11.5
  DELTA = 0.25
  X1_7 = 12.75
  Z0_22 = 3.25
  Z1_62 = 11.75
------ time 19 ------
  H_22
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  Z1_68 = 15.0
  Z1_0 = 3.0
  X3_7 = 12.5
  X2_7 = 12.75
  Z0_7 = 11.75
  X4_7 = 12.25
  Z0_45 = 11.75
  X0_7 = 11.75
  Z1_4 = 13.0
  Z1_7 = 15.0
  Z1_25 = 12.0
  Z1_22 = 3.0
  Z1_45 = 13.5
  Z0_68 = 11.75
  X5_7 = 12.0
  Z0_4 = 11.75
  Z0_62 = 11.75
  Z0_0 = 3.5
  Z0_25 = 11.75
  DELTA = 0.25
  X1_7 = 13.0
  Z0_22 = 3.5
  Z1_62 = 12.0
------ time 20 ------
  H_22
  H_16
  H_104
  H_11
  H_62
  H_36
  H_30
  H_45
  H_25
  H_68
  Z1_68 = 15.25
  Z1_0 = 3.25
  X3_7 = 12.75
  X2_7 = 13.0
  Z0_7 = 12.0
  X4_7 = 12.5
  Z0_45 = 12.0
  X0_7 = 12.0
  Z1_4 = 13.25
  Z1_7 = 15.25
  Z1_25 = 12.25
  Z1_22 = 3.25
  Z1_45 = 13.75
  Z0_68 = 12.0
  X5_7 = 12.25
  Z0_4 = 12.0
  Z0_62 = 12.0
  Z0_0 = 3.75
  Z0_25 = 12.0
  DELTA = 0.25
  X1_7 = 13.25
  Z0_22 = 3.75
  Z1_62 = 12.25
------ end ------
Evaluation took:
  0.910 seconds of real time
  0.216000 seconds of total run time (0.196000 user, 0.020000 system)
  [ Run times consist of 0.032 seconds GC time, and 0.184 seconds non-GC time. ]
  23.74% CPU
  3,093,169,299 processor cycles
  561,562,304 bytes consed
  