This is SBCL 1.2.4.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
IPC-terms: ((NEXT Z1_80) (NEXT Z0_80) Z1_80 Z0_80 (NEXT Z1_0) 5 (NEXT Z0_0)
            Z1_0 Z0_0 0)
IPC-constraints: ((< Z1_0 5) (< Z0_0 5) (= Z1_0 5) (= Z0_0 5) (>= Z1_80 0)
                  (>= Z0_80 0) (> Z1_80 5) (> (NEXT Z1_80) Z1_80)
                  (= (NEXT Z1_80) 0) (> Z0_80 5) (> (NEXT Z0_80) Z0_80)
                  (= (NEXT Z0_80) 0) (> Z1_80 0) (< Z1_80 0) (> Z0_80 0)
                  (< Z0_80 0) (= Z1_80 0) (= Z0_80 0) (>= Z1_0 0) (>= Z0_0 0)
                  (> Z1_0 5) (> (NEXT Z1_0) Z1_0) (= (NEXT Z1_0) 0) (> Z0_0 5)
                  (> (NEXT Z0_0) Z0_0) (= (NEXT Z0_0) 0) (> Z1_0 0) (< Z1_0 0)
                  (> Z0_0 0) (< Z0_0 0) (= Z1_0 0) (= Z0_0 0))
This is SMT-Arithmetic-eeZot

1. processing formula
Used boolean propositions: 
(H_5 P_5 H_12 P_12 H_8 H_15 P_8 P_15 H_21 P_21 H_38 H_31 P_38 P_31 H_39 P_39
 H_44 P_44 H_51 P_51 H_47 H_54 P_47 P_54 H_60 P_60 H_77 H_70 P_77 P_70 H_78
 P_78 (< Z1_0 5) (< Z0_0 5) (= Z1_0 5) (= Z0_0 5) H_87 H_90 P_87 P_90
 (>= Z1_80 0) (>= Z0_80 0) (> Z1_80 5) (> (NEXT Z1_80) Z1_80)
 (= (NEXT Z1_80) 0) (> Z0_80 5) (> (NEXT Z0_80) Z0_80) (= (NEXT Z0_80) 0)
 (> Z1_80 0) (< Z1_80 0) (> Z0_80 0) (< Z0_80 0) (= Z1_80 0) (= Z0_80 0) H_95
 H_80 P_95 P_80 H_101 P_101 H_118 H_111 P_118 P_111 H_119 P_119 P_3 H_3 H_41
 P_41 (>= Z1_0 0) (>= Z0_0 0) (> Z1_0 5) (> (NEXT Z1_0) Z1_0) (= (NEXT Z1_0) 0)
 (> Z0_0 5) (> (NEXT Z0_0) Z0_0) (= (NEXT Z0_0) 0) (> Z1_0 0) (< Z1_0 0)
 (> Z0_0 0) (< Z0_0 0) (= Z1_0 0) O (= Z0_0 0) H_83 H_0 P_83 P_0 H_127 P_127
 H_138 H_134 P_138 P_134 H_139 P_139 H_40 H_79 H_120 H_140 H_407 P_40 P_79
 P_120 P_140 P_407)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(Z1_80 Z0_80 Z1_0 Z0_0)

Graph dependency over terms 
((0 0 0 0 (NEXT Z0_0) 0 0 0 0 0 (NEXT Z1_0) 0 0 0 0 0 (NEXT Z0_80) 0 Z0_0 Z1_0
  Z0_80 Z0_0 Z1_0 Z0_0 Z1_0 0 0 0 5 0 0 Z1_80 (NEXT Z1_80)))

Related variables 
((Z0_80 Z0_0 Z1_0 5 0 Z1_80))

Time bound: 20
define loop constraints
define LTL boolean connectives
define LTL future formulae X, U, R
define last state contraints
define eventuality for LTL future modalities U,R
gen-past1...
gen-past2...
define FO future formulae Xt
define FO future formulae Yt
define for interpreted relations: <,>,=,<=,>= 
define FO terms for +,-,*,/,mod 
define existence condition for Integers

done processing formula

no CNF
  0.000 seconds of real time

2. SMT solving: z3...
 
Evaluation took:
  0.375 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  1,273,619,388 processor cycles
  0 bytes consed
  
---SAT---
LOOPEX = TRUE
I_LOOP = 8.0
------ time 0 ------
Z1_80 = 0.0
  P_41
  P_407
  H_95
  P_0
  H_3
  P_83
  H_54
  P_87
Z0_80 = 0.0
  H_90
  H_78
  H_51
  H_41
  P_31
  H_39
  P_90
  P_51
  P_70
  P_111
Z1_0 = 0.0
  H_5
  P_78
  P_60
  P_39
  P_38
  P_54
Z0_0 = 0.0
  H_111
  H_60
  P_127
  P_118
  P_77
  P_21
  H_8
------ time 1 ------
  H_15
  H_47
Z1_80 = 5.00005
DELTA = 5.0
  P_407
  H_79
  H_95
  P_0
  H_120
  H_3
  H_87
  P_83
  P_101
  H_54
  H_21
Z0_80 = 0.0
  H_90
  H_101
  P_79
  O
  H_83
  H_40
  H_140
  P_120
  H_407
  P_40
Z1_0 = 5.0
  P_8
  P_60
  H_80
  P_15
  P_54
Z0_0 = 0.0
  H_127
  H_60
  P_127
  P_47
  P_3
  P_140
  P_21
  H_8
------ time 2 ------
  H_15
  H_47
Z1_80 = 0.0
DELTA = 0.00005
  P_41
  P_407
  H_79
  H_120
  H_3
  P_101
  H_54
  H_21
  P_87
Z0_80 = 5.0
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  H_407
  P_40
Z1_0 = 10.0
  P_8
  P_60
  P_15
  P_54
Z0_0 = 5.0
  H_127
  H_60
  P_127
  P_47
  P_3
  P_140
  P_21
  H_8
------ time 3 ------
  H_15
  H_47
Z1_80 = 0.00005
DELTA = 0.00005
  P_41
  P_407
  H_79
  H_120
  H_3
  P_101
  H_54
  H_21
Z0_80 = 5.00005
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  H_407
  P_40
Z1_0 = 10.00005
  P_8
  P_60
  P_15
  P_54
Z0_0 = 5.00005
  H_127
  H_60
  P_127
  P_47
  P_3
  P_140
  P_21
  H_8
------ time 4 ------
  H_15
  H_47
Z1_80 = 0.0001
DELTA = 0.00005
  P_407
  H_79
  H_120
  H_3
  P_83
  P_101
  H_54
  H_21
Z0_80 = 5.0001
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  H_407
  P_40
Z1_0 = 10.0001
  P_8
  P_60
  P_15
  P_54
Z0_0 = 5.0001
  H_127
  H_60
  P_127
  P_47
  P_3
  P_140
  P_21
  H_8
------ time 5 ------
  H_15
  H_47
Z1_80 = 0.00015
DELTA = 0.00005
  P_41
  P_407
  H_79
  H_120
  H_3
  P_101
  H_54
  H_21
Z0_80 = 5.00015
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  H_407
  P_40
Z1_0 = 10.00015
  P_8
  P_60
  P_15
  P_54
Z0_0 = 5.00015
  H_127
  H_60
  P_127
  P_47
  P_3
  P_140
  P_21
  H_8
------ time 6 ------
  H_15
  H_47
Z1_80 = 0.0002
DELTA = 1.99975
  P_407
  H_79
  H_120
  H_3
  P_83
  P_101
  H_54
  H_21
Z0_80 = 5.0002
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  H_407
  P_40
Z1_0 = 10.0002
  P_8
  P_60
  P_15
  P_54
Z0_0 = 5.0002
  H_127
  H_60
  P_127
  P_47
  P_3
  P_140
  P_21
  H_8
------ time 7 ------
  H_15
  H_47
Z1_80 = 1.99995
DELTA = 1.0001
  P_407
  H_79
  H_120
  H_3
  P_83
  P_101
  H_54
  H_21
Z0_80 = 6.99995
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  H_407
  P_40
Z1_0 = 11.99995
  P_8
  P_60
  P_15
  P_54
Z0_0 = 6.99995
  H_127
  H_60
  P_127
  P_47
  P_3
  P_140
  P_21
  H_8
------ time 8 ------
  **LOOP**
  H_15
  H_47
Z1_80 = 3.00005
DELTA = 2.0
  P_41
  P_407
  H_79
  H_120
  H_3
  P_101
  H_54
  H_21
Z0_80 = 8.00005
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  H_407
  P_40
Z1_0 = 13.00005
  P_8
  P_60
  P_15
  P_54
Z0_0 = 8.00005
  H_127
  H_60
  P_127
  P_47
  P_3
  P_140
  P_21
  H_8
------ time 9 ------
  H_15
  H_47
Z1_80 = 5.00005
DELTA = 4.99985
  P_407
  H_79
  H_95
  P_0
  H_120
  H_3
  H_87
  P_83
  P_101
  H_54
  H_21
Z0_80 = 0.0
  H_90
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  H_407
  P_40
Z1_0 = 0.0
  P_8
  P_60
  H_80
  P_15
  P_54
Z0_0 = 10.00005
  H_127
  H_60
  P_127
  P_47
  P_3
  P_140
  P_21
  H_8
------ time 10 ------
  H_15
  H_47
Z1_80 = 9.9999
DELTA = 0.00005
  P_407
  H_79
  H_95
  H_120
  H_3
  H_87
  P_83
  P_101
  P_95
  H_54
  H_21
  P_87
Z0_80 = 4.99985
  H_90
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  P_90
  H_407
  P_40
Z1_0 = 4.99985
  P_8
  P_60
  H_80
  P_15
  P_54
Z0_0 = 14.9999
  H_127
  H_60
  P_127
  P_47
  P_80
  P_3
  P_140
  P_21
  H_8
------ time 11 ------
  H_15
  H_47
Z1_80 = 0.0
DELTA = 0.00005
  P_41
  P_407
  H_79
  H_120
  H_3
  P_101
  P_95
  H_54
  H_21
  P_87
Z0_80 = 4.9999
  H_90
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  P_90
  H_407
  P_40
Z1_0 = 4.9999
  P_8
  P_60
  P_15
  P_54
Z0_0 = 14.99995
  H_127
  H_60
  P_127
  P_47
  P_80
  P_3
  P_140
  P_21
  H_8
------ time 12 ------
  H_15
  H_47
Z1_80 = 0.00005
DELTA = 0.00005
  P_407
  H_79
  H_120
  H_3
  P_83
  P_101
  H_54
  H_21
Z0_80 = 4.99995
  H_90
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  P_90
  H_407
  P_40
Z1_0 = 4.99995
  P_8
  P_60
  P_15
  P_54
Z0_0 = 15.0
  H_127
  H_60
  P_127
  P_47
  P_3
  P_140
  P_21
  H_8
------ time 13 ------
  H_15
  H_47
Z1_80 = 0.0001
DELTA = 4.9998
  P_407
  H_79
  H_120
  H_3
  P_83
  P_101
  H_54
  H_21
Z0_80 = 5.0
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  H_407
  P_40
Z1_0 = 5.0
  P_8
  P_60
  P_15
  P_54
Z0_0 = 15.00005
  H_127
  H_60
  P_127
  P_47
  P_3
  P_140
  P_21
  H_8
------ time 14 ------
  H_15
  H_47
Z1_80 = 4.9999
DELTA = 0.00005
  P_41
  P_407
  H_79
  H_120
  H_3
  P_101
  H_54
  H_21
Z0_80 = 9.9998
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  H_407
  P_40
Z1_0 = 9.9998
  P_8
  P_60
  P_15
  P_54
Z0_0 = 19.99985
  H_127
  H_60
  P_127
  P_47
  P_3
  P_140
  P_21
  H_8
------ time 15 ------
  H_15
  H_47
Z1_80 = 4.99995
DELTA = 0.00005
  P_407
  H_79
  H_95
  P_0
  H_120
  H_3
  H_87
  P_83
  P_101
  H_54
  H_21
Z0_80 = 0.0
  H_90
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  H_407
  P_40
Z1_0 = 9.99985
  P_8
  P_60
  H_80
  P_15
  P_54
Z0_0 = 0.0
  H_127
  H_60
  P_127
  P_47
  P_3
  P_140
  P_21
  H_8
------ time 16 ------
  H_15
  H_47
Z1_80 = 5.0
DELTA = 0.00005
  P_407
  H_79
  H_95
  P_0
  H_120
  H_3
  H_87
  P_83
  P_101
  P_95
  H_54
  H_21
  P_87
Z0_80 = 0.00005
  H_90
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  P_90
  H_407
  P_40
Z1_0 = 0.0
  P_8
  P_60
  H_80
  P_15
  P_54
Z0_0 = 0.00005
  H_127
  H_60
  P_127
  P_47
  P_80
  P_3
  P_140
  P_21
  H_8
------ time 17 ------
  H_15
  H_47
Z1_80 = 5.00005
DELTA = 5.0
  P_407
  H_79
  H_95
  P_0
  H_120
  H_3
  H_87
  P_83
  P_101
  P_95
  H_54
  H_21
  P_87
Z0_80 = 0.0001
  H_90
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  P_90
  H_407
  P_40
Z1_0 = 0.00005
  P_8
  P_60
  H_80
  P_15
  P_54
Z0_0 = 0.0
  H_127
  H_60
  P_127
  P_47
  P_80
  P_3
  P_140
  P_21
  H_8
------ time 18 ------
  H_15
  H_47
Z1_80 = 0.0
DELTA = 0.00005
  P_41
  P_407
  H_79
  H_120
  H_3
  P_101
  H_54
  H_21
  P_87
Z0_80 = 5.0001
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  H_407
  P_40
Z1_0 = 5.00005
  P_8
  P_60
  P_15
  P_54
Z0_0 = 5.0
  H_127
  H_60
  P_127
  P_47
  P_3
  P_140
  P_21
  H_8
------ time 19 ------
  H_15
  H_47
Z1_80 = 0.00005
DELTA = 1.0
  P_41
  P_407
  H_79
  H_120
  H_3
  P_101
  H_54
  H_21
Z0_80 = 5.00015
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  H_407
  P_40
Z1_0 = 5.0001
  P_8
  P_60
  P_15
  P_54
Z0_0 = 5.00005
  H_127
  H_60
  P_127
  P_47
  P_3
  P_140
  P_21
  H_8
------ time 20 ------
  H_15
  H_47
Z1_80 = 1.00005
DELTA = 2.0
  P_407
  H_79
  H_120
  H_3
  P_83
  P_101
  H_54
  H_21
Z0_80 = 6.00015
  H_101
  P_79
  H_83
  H_40
  H_140
  P_120
  H_407
  P_40
Z1_0 = 6.0001
  P_8
  P_60
  P_15
  P_54
Z0_0 = 6.00005
  H_127
  H_60
  P_127
  P_47
  P_3
  P_140
  P_21
  H_8
------ end ------
Evaluation took:
  0.582 seconds of real time
  0.208000 seconds of total run time (0.208000 user, 0.000000 system)
  [ Run times consist of 0.016 seconds GC time, and 0.192 seconds non-GC time. ]
  35.74% CPU
  438 forms interpreted
  1,978,012,007 processor cycles
  40,453,536 bytes consed
  
