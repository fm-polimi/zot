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
                  (= (NEXT Z0_80) 0) (> Z1_80 0) (> Z0_80 0) (= Z1_80 0)
                  (= Z0_80 0) (>= Z1_0 0) (>= Z0_0 0) (> Z1_0 5)
                  (> (NEXT Z1_0) Z1_0) (= (NEXT Z1_0) 0) (> Z0_0 5)
                  (> (NEXT Z0_0) Z0_0) (= (NEXT Z0_0) 0) (> Z1_0 0) (> Z0_0 0)
                  (= Z1_0 0) (= Z0_0 0))
This is AE2SBVZOT.

1. processing formula
Used boolean propositions: 
(H_5 P_5 H_12 P_12 H_8 H_15 P_8 P_15 H_21 P_21 H_38 H_31 P_38 P_31 H_39 P_39
 H_44 P_44 H_51 P_51 H_47 H_54 P_47 P_54 H_60 P_60 H_77 H_70 P_77 P_70 H_78
 P_78 (< Z1_0 5) (< Z0_0 5) (= Z1_0 5) (= Z0_0 5) H_87 H_90 P_87 P_90 H_95 P_95
 H_101 P_101 H_118 H_111 P_118 P_111 H_119 P_119 H_41 P_41 H_83 P_83 H_127
 P_127 H_138 H_134 P_138 P_134 H_139 P_139 (>= Z1_80 0) (>= Z0_80 0)
 (> Z1_80 5) (> (NEXT Z1_80) Z1_80) (= (NEXT Z1_80) 0) (> Z0_80 5)
 (> (NEXT Z0_80) Z0_80) (= (NEXT Z0_80) 0) (> Z1_80 0) (> Z0_80 0) (= Z1_80 0)
 (= Z0_80 0) P_80 H_80 P_3 H_3 (>= Z1_0 0) (>= Z0_0 0) (> Z1_0 5)
 (> (NEXT Z1_0) Z1_0) (= (NEXT Z1_0) 0) (> Z0_0 5) (> (NEXT Z0_0) Z0_0)
 (= (NEXT Z0_0) 0) (> Z1_0 0) (> Z0_0 0) (= Z1_0 0) O (= Z0_0 0) H_151 H_0
 P_151 P_0 H_152 P_152 H_143 H_153 P_143 P_153 H_159 P_159 H_40 H_79 H_120
 H_140 H_358 H_420 P_40 P_79 P_120 P_140 P_358 P_420)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(Z1_80 Z0_80 Z1_0 Z0_0)

Graph dependency over terms 
((0 0 0 (NEXT Z0_0) 0 0 0 0 (NEXT Z1_0) 0 0 0 0 (NEXT Z0_80) 0 Z0_0 Z1_0 Z0_80
  Z0_0 Z1_0 Z0_0 Z1_0 0 0 5 0 0 Z1_80 (NEXT Z1_80)))

Related variables 
((Z0_80 Z0_0 Z1_0 5 0 Z1_80))

Time bound: 20

Number of Boolean variables: 
87
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
  0.263 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  1.52% CPU
  895,020,946 processor cycles
  0 bytes consed
  
---SAT---
------ time 0 ------
  H_47
  H_60
  H_80
  H_12
  P_51
  H_0
  H_54
  P_12
  Z1_0 = 5.125
  Z0_0 = (- 0.125)
  Z1_80 = (- 0.125)
  DELTA = 0.125
  Z0_80 = (- 0.125)
------ time 1 ------
  H_79
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  H_80
  P_60
  P_8
  P_40
  P_151
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  O
  P_79
  H_101
  H_90
  H_21
  H_54
  P_101
  P_83
  H_358
  H_420
  H_87
  H_151
  H_3
  H_120
  P_0
  H_95
  Z1_0 = 5.125
  Z0_0 = 0.0
  Z1_80 = 2.25
  DELTA = 0.125
  Z0_80 = 0.0
------ time 2 ------
  H_79
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_80
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  H_80
  P_60
  P_8
  P_40
  P_151
  P_90
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  H_90
  P_87
  H_21
  H_54
  P_95
  P_101
  P_83
  H_358
  H_420
  H_87
  H_151
  H_3
  H_120
  P_0
  H_95
  Z1_0 = 0.0
  Z0_0 = 0.125
  Z1_80 = 2.375
  DELTA = 0.125
  Z0_80 = 0.125
------ time 3 ------
  H_79
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_80
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  H_80
  P_60
  P_8
  P_40
  P_151
  P_90
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  H_90
  P_87
  H_21
  H_54
  P_95
  P_101
  P_83
  H_358
  H_420
  H_87
  H_151
  H_3
  H_120
  P_0
  H_95
  Z1_0 = 0.125
  Z0_0 = 0.0
  Z1_80 = 2.5
  DELTA = 0.125
  Z0_80 = 0.25
------ time 4 ------
  H_79
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_80
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  H_80
  P_60
  P_8
  P_40
  P_151
  P_90
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  H_90
  P_87
  H_21
  H_54
  P_95
  P_101
  P_83
  H_358
  H_420
  H_87
  H_151
  H_3
  H_120
  H_95
  Z1_0 = 0.25
  Z0_0 = 0.125
  Z1_80 = 2.625
  DELTA = 0.125
  Z0_80 = 0.375
------ time 5 ------
  H_79
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_80
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  H_80
  P_60
  P_8
  P_40
  P_151
  P_90
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  H_90
  P_87
  H_21
  H_54
  P_95
  P_101
  P_83
  H_358
  H_420
  H_87
  H_151
  H_3
  H_120
  H_95
  Z1_0 = 0.375
  Z0_0 = 0.25
  Z1_80 = 2.75
  DELTA = 0.125
  Z0_80 = 0.5
------ time 6 ------
  H_79
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_80
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  H_80
  P_60
  P_8
  P_40
  P_151
  P_90
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  H_90
  P_87
  H_21
  H_54
  P_95
  P_101
  P_83
  H_358
  H_420
  H_87
  H_151
  H_3
  H_120
  P_0
  H_95
  Z1_0 = 0.0
  Z0_0 = 0.375
  Z1_80 = 2.875
  DELTA = 0.125
  Z0_80 = 0.625
------ time 7 ------
  H_79
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_80
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  H_80
  P_60
  P_8
  P_40
  P_151
  P_90
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  H_90
  P_87
  H_21
  H_54
  P_95
  P_101
  P_83
  H_358
  H_420
  H_87
  H_151
  H_3
  H_120
  P_0
  H_95
  Z1_0 = 0.125
  Z0_0 = 0.0
  Z1_80 = 3.0
  DELTA = 0.125
  Z0_80 = 0.75
------ time 8 ------
  H_79
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_80
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  H_80
  P_60
  P_8
  P_40
  P_151
  P_90
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  H_90
  P_87
  H_21
  H_54
  P_95
  P_101
  P_83
  H_358
  H_420
  H_87
  H_151
  H_3
  H_120
  H_95
  Z1_0 = 0.25
  Z0_0 = 0.125
  Z1_80 = 3.125
  DELTA = 0.125
  Z0_80 = 0.875
------ time 9 ------
  H_79
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_80
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  H_80
  P_60
  P_8
  P_40
  P_151
  P_90
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  H_90
  P_87
  H_21
  H_54
  P_95
  P_101
  P_83
  H_358
  H_420
  H_87
  H_151
  H_3
  H_120
  H_95
  Z1_0 = 0.375
  Z0_0 = 0.25
  Z1_80 = 3.25
  DELTA = 0.125
  Z0_80 = 1.0
------ time 10 ------
  H_79
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_80
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  H_80
  P_60
  P_8
  P_40
  P_151
  P_90
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  H_90
  P_87
  H_21
  H_54
  P_95
  P_101
  P_83
  H_358
  H_420
  H_87
  H_151
  H_3
  H_120
  H_95
  Z1_0 = 0.5
  Z0_0 = 0.375
  Z1_80 = 3.375
  DELTA = 0.125
  Z0_80 = 1.125
------ time 11 ------
  H_79
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_80
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  H_80
  P_60
  P_8
  P_40
  P_151
  P_90
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  H_90
  P_87
  H_21
  H_54
  P_95
  P_101
  P_83
  H_358
  H_420
  H_87
  H_151
  H_3
  H_120
  H_95
  Z1_0 = 0.625
  Z0_0 = 0.5
  Z1_80 = 3.5
  DELTA = 1.625
  Z0_80 = 1.25
------ time 12 ------
  H_79
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_80
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  H_80
  P_60
  P_8
  P_40
  P_151
  P_90
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  H_90
  P_87
  H_21
  H_54
  P_95
  P_101
  P_83
  H_358
  H_420
  H_87
  H_151
  H_3
  H_120
  H_95
  Z1_0 = 2.25
  Z0_0 = 2.125
  Z1_80 = 5.125
  DELTA = 1.0
  Z0_80 = 2.875
------ time 13 ------
**LOOP**
  H_79
  P_41
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_80
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  P_60
  P_8
  P_40
  P_151
  P_90
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  H_90
  P_87
  H_21
  H_54
  P_95
  P_101
  H_358
  H_420
  H_151
  H_3
  H_120
  Z1_0 = 3.25
  Z0_0 = 3.125
  Z1_80 = 0.0
  DELTA = 0.125
  Z0_80 = 3.875
------ time 14 ------
  H_79
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  H_80
  P_60
  P_8
  P_40
  P_151
  P_90
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  H_90
  H_21
  H_54
  P_101
  P_83
  H_358
  H_420
  H_87
  H_151
  H_3
  H_120
  P_0
  H_95
  Z1_0 = 0.0
  Z0_0 = 3.25
  Z1_80 = 0.125
  DELTA = 0.125
  Z0_80 = 0.0
------ time 15 ------
  H_79
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_80
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  H_80
  P_60
  P_8
  P_40
  P_151
  P_90
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  H_90
  P_87
  H_21
  H_54
  P_95
  P_101
  P_83
  H_358
  H_420
  H_87
  H_151
  H_3
  H_120
  P_0
  H_95
  Z1_0 = 0.125
  Z0_0 = 0.0
  Z1_80 = 0.25
  DELTA = 5.0
  Z0_80 = 0.125
------ time 16 ------
  H_79
  P_41
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  P_60
  P_8
  P_40
  P_151
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  P_87
  H_21
  H_54
  P_101
  H_358
  H_420
  H_151
  H_3
  H_120
  Z1_0 = 5.125
  Z0_0 = 5.0
  Z1_80 = 0.0
  DELTA = 0.125
  Z0_80 = 5.125
------ time 17 ------
  H_79
  P_41
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  P_60
  P_8
  P_40
  P_151
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  H_21
  H_54
  P_101
  H_358
  H_420
  H_151
  H_3
  H_120
  Z1_0 = 5.25
  Z0_0 = 5.125
  Z1_80 = 0.125
  DELTA = 2.75
  Z0_80 = 5.25
------ time 18 ------
  H_79
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  H_80
  P_60
  P_8
  P_40
  P_151
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  H_90
  H_21
  H_54
  P_101
  P_83
  H_358
  H_420
  H_87
  H_151
  H_3
  H_120
  P_0
  H_95
  Z1_0 = 0.0
  Z0_0 = 7.875
  Z1_80 = 2.875
  DELTA = 0.125
  Z0_80 = 0.0
------ time 19 ------
  H_79
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_80
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  H_80
  P_60
  P_8
  P_40
  P_151
  P_90
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  H_90
  P_87
  H_21
  H_54
  P_95
  P_101
  P_83
  H_358
  H_420
  H_87
  H_151
  H_3
  H_120
  P_0
  H_95
  Z1_0 = 0.125
  Z0_0 = 0.0
  Z1_80 = 3.0
  DELTA = 2.125
  Z0_80 = 0.125
------ time 20 ------
  H_79
  H_47
  H_15
  P_358
  H_8
  P_21
  P_140
  P_3
  P_80
  P_47
  P_127
  H_60
  P_143
  P_420
  H_127
  P_54
  H_152
  P_15
  H_80
  P_60
  P_8
  P_40
  P_151
  P_90
  P_120
  H_140
  P_152
  H_40
  H_83
  H_143
  P_79
  H_101
  H_90
  P_87
  H_21
  H_54
  P_95
  P_101
  P_83
  H_358
  H_420
  H_87
  H_151
  H_3
  H_120
  H_95
  Z1_0 = 2.25
  Z0_0 = 2.125
  Z1_80 = 5.125
  DELTA = 1.625
  Z0_80 = 2.25
------ end ------
Evaluation took:
  0.345 seconds of real time
  0.084000 seconds of total run time (0.080000 user, 0.004000 system)
  [ Run times consist of 0.028 seconds GC time, and 0.056 seconds non-GC time. ]
  24.35% CPU
  1,171,819,347 processor cycles
  144,089,616 bytes consed
  
