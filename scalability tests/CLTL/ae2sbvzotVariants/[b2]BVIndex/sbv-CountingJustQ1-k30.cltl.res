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

Time bound: 30

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
  2.414 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  8,206,826,734 processor cycles
  32,656 bytes consed
  
---SAT---
------ time 0 ------
  H_1
  H_15
  P_38
  P_62
  H_32
  H_38
  H_68
  H_140
  H_67
  H_0
  H_36
  P_25
  P_68
  P_1
  X2_22 = (- 0.0769230769?)
  X1_22 = (- 0.0769230769?)
  X1_0 = (- 0.0769230769?)
  Z1_62 = 1.0
  X0_22 = (- 0.0769230769?)
  Z0_22 = (- 0.0769230769?)
  Z1_22 = 2.0769230769?
  Z1_0 = 1.0769230769?
  X2_0 = 2.0769230769?
  Z0_62 = 0.0
  DELTA = 0.0769230769?
  Z0_0 = 0.0769230769?
  X0_0 = 2.0
------ time 1 ------
  H_1
  H_22
  H_15
  P_140
  P_15
  P_38
  H_25
  P_62
  H_4
  H_38
  H_68
  H_62
  H_140
  P_4
  H_0
  O
  P_25
  P_68
  P_1
  X2_22 = 0.0769230769?
  X1_22 = 0.1538461538?
  X1_0 = 1.9230769230?
  Z1_62 = 0.6153846153?
  X0_22 = 0.0
  Z0_22 = 0.0
  Z1_22 = 2.0769230769?
  Z1_0 = 0.9230769230?
  X2_0 = 1.8461538461?
  Z0_62 = 0.0
  DELTA = 0.2307692307?
  Z0_0 = 0.0
  X0_0 = 0.0
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
  X2_22 = 0.3076923076?
  X1_22 = 0.3846153846?
  X1_0 = 0.0
  Z1_62 = 0.8461538461?
  X0_22 = 0.2307692307?
  Z0_22 = 0.2307692307?
  Z1_22 = 2.3076923076?
  Z1_0 = 0.0
  X2_0 = 2.0769230769?
  Z0_62 = 0.2307692307?
  DELTA = 0.0769230769?
  Z0_0 = 0.2307692307?
  X0_0 = 0.2307692307?
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
  X2_22 = 0.3846153846?
  X1_22 = 0.4615384615?
  X1_0 = 0.0769230769?
  Z1_62 = 0.9230769230?
  X0_22 = 0.3076923076?
  Z0_22 = 0.3076923076?
  Z1_22 = 2.3846153846?
  Z1_0 = 0.0769230769?
  X2_0 = 0.0
  Z0_62 = 0.3076923076?
  DELTA = 0.1538461538?
  Z0_0 = 0.0
  X0_0 = 0.3076923076?
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
  X2_22 = 0.5384615384?
  X1_22 = 0.6153846153?
  X1_0 = 0.2307692307?
  Z1_62 = 1.0769230769?
  X0_22 = 0.4615384615?
  Z0_22 = 0.4615384615?
  Z1_22 = 2.5384615384?
  Z1_0 = 0.0
  X2_0 = 0.1538461538?
  Z0_62 = 0.4615384615?
  DELTA = 1.0769230769?
  Z0_0 = 0.1538461538?
  X0_0 = 0.0
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
  X2_22 = 1.6153846153?
  X1_22 = 1.6923076923?
  X1_0 = 0.0
  Z1_62 = 2.1538461538?
  X0_22 = 1.5384615384?
  Z0_22 = 1.5384615384?
  Z1_22 = 3.6153846153?
  Z1_0 = 1.0769230769?
  X2_0 = 1.2307692307?
  Z0_62 = 1.5384615384?
  DELTA = 0.2307692307?
  Z0_0 = 0.0
  X0_0 = 1.0769230769?
------ time 6 ------
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
  H_140
  H_67
  P_4
  P_25
  P_68
  P_1
  P_0
  X2_22 = 1.8461538461?
  X1_22 = 1.9230769230?
  X1_0 = 0.2307692307?
  Z1_62 = 0.0
  X0_22 = 1.7692307692?
  Z0_22 = 1.7692307692?
  Z1_22 = 3.8461538461?
  Z1_0 = 0.0
  X2_0 = 0.0
  Z0_62 = 1.7692307692?
  DELTA = 0.1538461538?
  Z0_0 = 0.2307692307?
  X0_0 = 1.3076923076?
------ time 7 ------
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
  X2_22 = 2.0
  X1_22 = 2.0769230769?
  X1_0 = 0.3846153846?
  Z1_62 = 0.1538461538?
  X0_22 = 1.9230769230?
  Z0_22 = 1.9230769230?
  Z1_22 = 4.0
  Z1_0 = 0.1538461538?
  X2_0 = 0.1538461538?
  Z0_62 = 0.0
  DELTA = 0.7692307692?
  Z0_0 = 0.3846153846?
  X0_0 = 1.4615384615?
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
  X2_22 = 2.7692307692?
  X1_22 = 2.8461538461?
  X1_0 = 1.1538461538?
  Z1_62 = 0.9230769230?
  X0_22 = 2.6923076923?
  Z0_22 = 2.6923076923?
  Z1_22 = 4.7692307692?
  Z1_0 = 0.9230769230?
  X2_0 = 0.9230769230?
  Z0_62 = 0.7692307692?
  DELTA = 0.1538461538?
  Z0_0 = 1.1538461538?
  X0_0 = 2.2307692307?
------ time 9 ------
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
  X2_22 = 2.9230769230?
  X1_22 = 3.0
  X1_0 = 1.3076923076?
  Z1_62 = 1.0769230769?
  X0_22 = 2.8461538461?
  Z0_22 = 2.8461538461?
  Z1_22 = 4.9230769230?
  Z1_0 = 1.0769230769?
  X2_0 = 1.0769230769?
  Z0_62 = 0.9230769230?
  DELTA = 0.0769230769?
  Z0_0 = 1.3076923076?
  X0_0 = 2.3846153846?
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
  H_0
  P_25
  P_68
  P_1
  X2_22 = 3.0
  X1_22 = 3.0769230769?
  X1_0 = 1.3846153846?
  Z1_62 = 1.1538461538?
  X0_22 = 2.9230769230?
  Z0_22 = 2.9230769230?
  Z1_22 = 5.0
  Z1_0 = 1.1538461538?
  X2_0 = 1.1538461538?
  Z0_62 = 1.0
  DELTA = 2.0
  Z0_0 = 0.0
  X0_0 = 0.0
------ time 11 ------
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
  X2_22 = 5.0
  X1_22 = 5.0769230769?
  X1_0 = 0.0
  Z1_62 = 0.0
  X0_22 = 4.9230769230?
  Z0_22 = 4.9230769230?
  Z1_22 = 7.0
  Z1_0 = 0.0
  X2_0 = 3.1538461538?
  Z0_62 = 3.0
  DELTA = 1.0
  Z0_0 = 2.0
  X0_0 = 2.0
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
  P_25
  P_68
  P_1
  P_0
  X2_22 = 6.0
  X1_22 = 6.0769230769?
  X1_0 = 1.0
  Z1_62 = 1.0
  X0_22 = 5.9230769230?
  Z0_22 = 5.9230769230?
  Z1_22 = 8.0
  Z1_0 = 1.0
  X2_0 = 0.0
  Z0_62 = 4.0
  DELTA = 0.0769230769?
  Z0_0 = 0.0
  X0_0 = 3.0
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
  X2_22 = 6.0769230769?
  X1_22 = 6.1538461538?
  X1_0 = 1.0769230769?
  Z1_62 = 1.0769230769?
  X0_22 = 6.0
  Z0_22 = 6.0
  Z1_22 = 8.0769230769?
  Z1_0 = 0.0
  X2_0 = 0.0769230769?
  Z0_62 = 4.0769230769?
  DELTA = 0.0769230769?
  Z0_0 = 0.0769230769?
  X0_0 = 0.0
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
  X2_22 = 6.1538461538?
  X1_22 = 6.2307692307?
  X1_0 = 0.0
  Z1_62 = 1.1538461538?
  X0_22 = 6.0769230769?
  Z0_22 = 6.0769230769?
  Z1_22 = 8.1538461538?
  Z1_0 = 0.0769230769?
  X2_0 = 0.1538461538?
  Z0_62 = 0.0
  DELTA = 1.0
  Z0_0 = 0.0
  X0_0 = 0.0769230769?
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
  H_0
  P_25
  P_68
  P_1
  X2_22 = 7.1538461538?
  X1_22 = 7.2307692307?
  X1_0 = 1.0
  Z1_62 = 2.1538461538?
  X0_22 = 7.0769230769?
  Z0_22 = 7.0769230769?
  Z1_22 = 9.1538461538?
  Z1_0 = 0.0
  X2_0 = 0.0
  Z0_62 = 1.0
  DELTA = 0.2307692307?
  Z0_0 = 1.0
  X0_0 = 1.0769230769?
------ time 16 ------
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
  X2_22 = 7.3846153846?
  X1_22 = 7.4615384615?
  X1_0 = 1.2307692307?
  Z1_62 = 0.0
  X0_22 = 7.3076923076?
  Z0_22 = 7.3076923076?
  Z1_22 = 9.3846153846?
  Z1_0 = 0.2307692307?
  X2_0 = 0.2307692307?
  Z0_62 = 1.2307692307?
  DELTA = 1.0
  Z0_0 = 0.0
  X0_0 = 0.0
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
  X2_22 = 8.3846153846?
  X1_22 = 8.4615384615?
  X1_0 = 0.0
  Z1_62 = 1.0
  X0_22 = 8.3076923076?
  Z0_22 = 8.3076923076?
  Z1_22 = 10.3846153846?
  Z1_0 = 0.0
  X2_0 = 1.2307692307?
  Z0_62 = 2.2307692307?
  DELTA = 0.9230769230?
  Z0_0 = 1.0
  X0_0 = 1.0
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
  H_0
  P_25
  P_68
  P_1
  P_0
  X2_22 = 9.3076923076?
  X1_22 = 9.3846153846?
  X1_0 = 0.9230769230?
  Z1_62 = 1.9230769230?
  X0_22 = 9.2307692307?
  Z0_22 = 9.2307692307?
  Z1_22 = 11.3076923076?
  Z1_0 = 0.9230769230?
  X2_0 = 2.1538461538?
  Z0_62 = 3.1538461538?
  DELTA = 1.1538461538?
  Z0_0 = 1.9230769230?
  X0_0 = 1.9230769230?
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
  H_0
  P_25
  P_68
  P_1
  P_0
  X2_22 = 10.4615384615?
  X1_22 = 10.5384615384?
  X1_0 = 2.0769230769?
  Z1_62 = 3.0769230769?
  X0_22 = 10.3846153846?
  Z0_22 = 10.3846153846?
  Z1_22 = 12.4615384615?
  Z1_0 = 2.0769230769?
  X2_0 = 3.3076923076?
  Z0_62 = 4.3076923076?
  DELTA = 0.0769230769?
  Z0_0 = 3.0769230769?
  X0_0 = 3.0769230769?
------ time 20 ------
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
  X2_22 = 10.5384615384?
  X1_22 = 10.6153846153?
  X1_0 = 2.1538461538?
  Z1_62 = 3.1538461538?
  X0_22 = 10.4615384615?
  Z0_22 = 10.4615384615?
  Z1_22 = 12.5384615384?
  Z1_0 = 2.1538461538?
  X2_0 = 0.0
  Z0_62 = 0.0
  DELTA = 1.0
  Z0_0 = 0.0
  X0_0 = 3.1538461538?
------ time 21 ------
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
  X2_22 = 11.5384615384?
  X1_22 = 11.6153846153?
  X1_0 = 3.1538461538?
  Z1_62 = 4.1538461538?
  X0_22 = 11.4615384615?
  Z0_22 = 11.4615384615?
  Z1_22 = 13.5384615384?
  Z1_0 = 0.0
  X2_0 = 1.0
  Z0_62 = 1.0
  DELTA = 0.8461538461?
  Z0_0 = 1.0
  X0_0 = 0.0
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
  X2_22 = 12.3846153846?
  X1_22 = 12.4615384615?
  X1_0 = 0.0
  Z1_62 = 5.0
  X0_22 = 12.3076923076?
  Z0_22 = 12.3076923076?
  Z1_22 = 14.3846153846?
  Z1_0 = 0.8461538461?
  X2_0 = 1.8461538461?
  Z0_62 = 1.8461538461?
  DELTA = 0.8461538461?
  Z0_0 = 0.0
  X0_0 = 0.8461538461?
------ time 23 ------
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
  H_140
  H_67
  P_4
  P_25
  P_68
  P_1
  P_0
  X2_22 = 13.2307692307?
  X1_22 = 13.3076923076?
  X1_0 = 0.8461538461?
  Z1_62 = 0.0
  X0_22 = 13.1538461538?
  Z0_22 = 13.1538461538?
  Z1_22 = 15.2307692307?
  Z1_0 = 0.0
  X2_0 = 0.0
  Z0_62 = 2.6923076923?
  DELTA = 0.2307692307?
  Z0_0 = 0.8461538461?
  X0_0 = 1.6923076923?
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
  H_140
  H_67
  P_4
  P_25
  P_68
  P_1
  X2_22 = 13.4615384615?
  X1_22 = 13.5384615384?
  X1_0 = 1.0769230769?
  Z1_62 = 0.2307692307?
  X0_22 = 13.3846153846?
  Z0_22 = 13.3846153846?
  Z1_22 = 15.4615384615?
  Z1_0 = 0.2307692307?
  X2_0 = 0.2307692307?
  Z0_62 = 2.9230769230?
  DELTA = 0.1538461538?
  Z0_0 = 1.0769230769?
  X0_0 = 1.9230769230?
------ time 25 ------
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
  H_140
  H_67
  P_4
  P_25
  P_68
  P_1
  X2_22 = 13.6153846153?
  X1_22 = 13.6923076923?
  X1_0 = 1.2307692307?
  Z1_62 = 0.3846153846?
  X0_22 = 13.5384615384?
  Z0_22 = 13.5384615384?
  Z1_22 = 15.6153846153?
  Z1_0 = 0.3846153846?
  X2_0 = 0.3846153846?
  Z0_62 = 3.0769230769?
  DELTA = 0.0769230769?
  Z0_0 = 1.2307692307?
  X0_0 = 2.0769230769?
------ time 26 ------
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
  H_140
  H_67
  P_4
  P_25
  P_68
  P_1
  X2_22 = 13.6923076923?
  X1_22 = 13.7692307692?
  X1_0 = 1.3076923076?
  Z1_62 = 0.4615384615?
  X0_22 = 13.6153846153?
  Z0_22 = 13.6153846153?
  Z1_22 = 15.6923076923?
  Z1_0 = 0.4615384615?
  X2_0 = 0.4615384615?
  Z0_62 = 3.1538461538?
  DELTA = 0.0769230769?
  Z0_0 = 1.3076923076?
  X0_0 = 2.1538461538?
------ time 27 ------
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
  X2_22 = 13.7692307692?
  X1_22 = 13.8461538461?
  X1_0 = 1.3846153846?
  Z1_62 = 0.5384615384?
  X0_22 = 13.6923076923?
  Z0_22 = 13.6923076923?
  Z1_22 = 15.7692307692?
  Z1_0 = 0.5384615384?
  X2_0 = 0.5384615384?
  Z0_62 = 0.0
  DELTA = 0.0769230769?
  Z0_0 = 1.3846153846?
  X0_0 = 2.2307692307?
------ time 28 ------
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
  X2_22 = 13.8461538461?
  X1_22 = 13.9230769230?
  X1_0 = 1.4615384615?
  Z1_62 = 0.6153846153?
  X0_22 = 13.7692307692?
  Z0_22 = 13.7692307692?
  Z1_22 = 15.8461538461?
  Z1_0 = 0.6153846153?
  X2_0 = 0.6153846153?
  Z0_62 = 0.0769230769?
  DELTA = 0.0769230769?
  Z0_0 = 1.4615384615?
  X0_0 = 2.3076923076?
------ time 29 ------
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
  X2_22 = 13.9230769230?
  X1_22 = 14.0
  X1_0 = 1.5384615384?
  Z1_62 = 0.6923076923?
  X0_22 = 13.8461538461?
  Z0_22 = 13.8461538461?
  Z1_22 = 15.9230769230?
  Z1_0 = 0.6923076923?
  X2_0 = 0.6923076923?
  Z0_62 = 0.1538461538?
  DELTA = 0.0769230769?
  Z0_0 = 1.5384615384?
  X0_0 = 2.3846153846?
------ time 30 ------
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
  X2_22 = 14.0
  X1_22 = 14.0769230769?
  X1_0 = 1.6153846153?
  Z1_62 = 0.7692307692?
  X0_22 = 13.9230769230?
  Z0_22 = 13.9230769230?
  Z1_22 = 16.0
  Z1_0 = 0.7692307692?
  X2_0 = 0.7692307692?
  Z0_62 = 0.2307692307?
  DELTA = 0.3076923076?
  Z0_0 = 1.6153846153?
  X0_0 = 2.4615384615?
------ end ------
Evaluation took:
  2.602 seconds of real time
  0.192000 seconds of total run time (0.164000 user, 0.028000 system)
  [ Run times consist of 0.048 seconds GC time, and 0.144 seconds non-GC time. ]
  7.38% CPU
  8,844,190,365 processor cycles
  365,024,128 bytes consed
  
