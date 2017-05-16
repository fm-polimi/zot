This is SBCL 1.2.4.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
IPC-terms: ((NEXT Z1_16) (NEXT Z0_16) Z1_16 Z0_16 (NEXT Z1_17) (NEXT Z0_17)
            Z1_17 Z0_17 (NEXT Z1_4) (NEXT Z0_4) Z1_4 Z0_4 (NEXT Z1_7) 1
            (NEXT Z0_7) Z1_7 Z0_7 (NEXT Z1_52) (NEXT Z0_52) Z1_52 Z0_52
            (NEXT Z1_0) 2 (NEXT Z0_0) Z1_0 Z0_0 0)
IPC-constraints: ((<= Z1_7 0) (<= Z0_7 0) (< Z1_7 1) (>= Z1_16 0) (>= Z0_16 0)
                  (> (NEXT Z1_16) Z1_16) (= (NEXT Z1_16) 0)
                  (> (NEXT Z0_16) Z0_16) (= (NEXT Z0_16) 0) (> Z1_16 0)
                  (< Z1_16 0) (> Z0_16 0) (< Z0_16 0) (= Z1_16 0) (= Z0_16 0)
                  (= Z1_16 1) (= Z0_16 1) (<= Z1_16 0) (<= Z0_16 0) (< Z1_16 1)
                  (< Z0_16 1) (< Z0_17 1) (= Z1_17 1) (> Z1_16 1) (> Z0_16 1)
                  (= Z0_17 1) (>= Z1_17 0) (>= Z0_17 0) (> Z1_17 1)
                  (> (NEXT Z1_17) Z1_17) (= (NEXT Z1_17) 0) (> Z0_17 1)
                  (> (NEXT Z0_17) Z0_17) (= (NEXT Z0_17) 0) (> Z1_17 0)
                  (< Z1_17 0) (> Z0_17 0) (< Z0_17 0) (= Z1_17 0) (= Z0_17 0)
                  (>= Z1_4 0) (>= Z0_4 0) (> (NEXT Z1_4) Z1_4)
                  (= (NEXT Z1_4) 0) (> (NEXT Z0_4) Z0_4) (= (NEXT Z0_4) 0)
                  (> Z1_4 0) (< Z1_4 0) (> Z0_4 0) (< Z0_4 0) (= Z1_4 0)
                  (= Z0_4 0) (= Z1_4 1) (= Z0_4 1) (<= Z1_4 0) (<= Z0_4 0)
                  (< Z1_4 1) (< Z0_4 1) (< Z0_7 1) (= Z1_7 1) (> Z1_4 1)
                  (> Z0_4 1) (= Z0_7 1) (>= Z1_7 0) (>= Z0_7 0) (> Z1_7 1)
                  (> (NEXT Z1_7) Z1_7) (= (NEXT Z1_7) 0) (> Z0_7 1)
                  (> (NEXT Z0_7) Z0_7) (= (NEXT Z0_7) 0) (> Z1_7 0) (< Z1_7 0)
                  (> Z0_7 0) (< Z0_7 0) (= Z1_7 0) (= Z0_7 0) (= Z1_0 2)
                  (= Z0_0 2) (<= Z1_0 0) (<= Z0_0 0) (< Z1_0 2) (< Z0_0 2)
                  (< Z0_52 2) (= Z1_52 2) (= Z0_52 2) (>= Z1_52 0) (>= Z0_52 0)
                  (> Z1_52 2) (> (NEXT Z1_52) Z1_52) (= (NEXT Z1_52) 0)
                  (> Z0_52 2) (> (NEXT Z0_52) Z0_52) (= (NEXT Z0_52) 0)
                  (> Z1_52 0) (< Z1_52 0) (> Z0_52 0) (< Z0_52 0) (= Z1_52 0)
                  (= Z0_52 0) (>= Z1_0 0) (>= Z0_0 0) (> Z1_0 2)
                  (> (NEXT Z1_0) Z1_0) (= (NEXT Z1_0) 0) (> Z0_0 2)
                  (> (NEXT Z0_0) Z0_0) (= (NEXT Z0_0) 0) (> Z1_0 0) (< Z1_0 0)
                  (> Z0_0 0) (< Z0_0 0) (= Z1_0 0) (= Z0_0 0))
This is SMT-Arithmetic-eeZot

1. processing formula
Used boolean propositions: 
((<= Z1_7 0) (<= Z0_7 0) (< Z1_7 1) (>= Z1_16 0) (>= Z0_16 0)
 (> (NEXT Z1_16) Z1_16) (= (NEXT Z1_16) 0) (> (NEXT Z0_16) Z0_16)
 (= (NEXT Z0_16) 0) (> Z1_16 0) (< Z1_16 0) (> Z0_16 0) (< Z0_16 0) (= Z1_16 0)
 (= Z0_16 0) (= Z1_16 1) (= Z0_16 1) (<= Z1_16 0) (<= Z0_16 0) (< Z1_16 1)
 (< Z0_16 1) (< Z0_17 1) (= Z1_17 1) (> Z1_16 1) (> Z0_16 1) (= Z0_17 1) P_16
 H_16 (>= Z1_17 0) (>= Z0_17 0) (> Z1_17 1) (> (NEXT Z1_17) Z1_17)
 (= (NEXT Z1_17) 0) (> Z0_17 1) (> (NEXT Z0_17) Z0_17) (= (NEXT Z0_17) 0)
 (> Z1_17 0) (< Z1_17 0) (> Z0_17 0) (< Z0_17 0) (= Z1_17 0) (= Z0_17 0)
 (>= Z1_4 0) (>= Z0_4 0) (> (NEXT Z1_4) Z1_4) (= (NEXT Z1_4) 0)
 (> (NEXT Z0_4) Z0_4) (= (NEXT Z0_4) 0) (> Z1_4 0) (< Z1_4 0) (> Z0_4 0)
 (< Z0_4 0) (= Z1_4 0) (= Z0_4 0) (= Z1_4 1) (= Z0_4 1) (<= Z1_4 0) (<= Z0_4 0)
 (< Z1_4 1) (< Z0_4 1) (< Z0_7 1) (= Z1_7 1) (> Z1_4 1) (> Z0_4 1) (= Z0_7 1)
 P_4 H_4 (>= Z1_7 0) (>= Z0_7 0) (> Z1_7 1) (> (NEXT Z1_7) Z1_7)
 (= (NEXT Z1_7) 0) (> Z0_7 1) (> (NEXT Z0_7) Z0_7) (= (NEXT Z0_7) 0) (> Z1_7 0)
 (< Z1_7 0) (> Z0_7 0) (< Z0_7 0) (= Z1_7 0) (= Z0_7 0) H_17 H_7 P_17 P_7 H_25
 P_25 H_46 H_37 P_46 P_37 H_47 P_47 P_1 H_1 (= Z1_0 2) (= Z0_0 2) (<= Z1_0 0)
 (<= Z0_0 0) (< Z1_0 2) (< Z0_0 2) (< Z0_52 2) (= Z1_52 2) (= Z0_52 2)
 (>= Z1_52 0) (>= Z0_52 0) (> Z1_52 2) (> (NEXT Z1_52) Z1_52)
 (= (NEXT Z1_52) 0) (> Z0_52 2) (> (NEXT Z0_52) Z0_52) (= (NEXT Z0_52) 0)
 (> Z1_52 0) (< Z1_52 0) (> Z0_52 0) (< Z0_52 0) (= Z1_52 0) (= Z0_52 0)
 (>= Z1_0 0) (>= Z0_0 0) (> Z1_0 2) (> (NEXT Z1_0) Z1_0) (= (NEXT Z1_0) 0)
 (> Z0_0 2) (> (NEXT Z0_0) Z0_0) (= (NEXT Z0_0) 0) (> Z1_0 0) (< Z1_0 0)
 (> Z0_0 0) (< Z0_0 0) (= Z1_0 0) O (= Z0_0 0) H_52 H_0 P_52 P_0 H_55 P_55 H_66
 H_62 P_66 P_62 H_67 P_67 H_79 H_48 H_68 H_115 P_79 P_48 P_68 P_115)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(Z1_16 Z0_16 Z1_17 Z0_17 Z1_4 Z0_4 Z1_7 Z0_7 Z1_52 Z0_52 Z1_0 Z0_0)

Graph dependency over terms 
((Z0_0 Z0_0 Z1_0 Z0_0 Z1_0 Z0_0 Z1_0 Z1_0 2 2 2 2 2 Z0_52 Z1_52 Z0_0 Z1_0 Z0_0
  Z0_0 Z1_0 Z1_0 (NEXT Z0_0) (NEXT Z1_0) Z0_0 Z1_0 Z0_52 Z1_52 Z0_52 Z0_52
  Z1_52 Z1_52 (NEXT Z0_52) (NEXT Z1_52) Z0_52 Z1_52 Z0_0 Z1_0 0 0 0 0
  (NEXT Z0_7) 0 0 0 0 0 0 (NEXT Z1_7) 0 0 0 0 0 0 0 (NEXT Z0_4) 0 0 0 0 0 0
  (NEXT Z1_4) 0 0 0 0 0 (NEXT Z0_17) 0 0 0 0 0 (NEXT Z1_17) 0 0 0 0 0 0
  (NEXT Z0_16) 0 Z0_7 Z1_7 Z0_7 Z0_4 Z1_4 Z1_7 Z0_7 Z0_4 Z1_4 Z0_4 Z1_4 Z0_17
  Z1_17 Z0_17 Z0_16 Z1_17 Z0_17 Z0_16 Z0_16 Z1_7 1 1 0 1 0 0 0 0 0 Z1_16
  (NEXT Z1_16)))

Related variables 
((2 Z0_52 Z1_52 Z0_0 Z1_0 Z0_7 Z0_4 Z1_4 Z1_17 Z0_17 Z0_16 Z1_7 1 0 Z1_16))

Time bound: 10
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
  0.975 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  3,314,902,543 processor cycles
  0 bytes consed
  
---SAT---
LOOPEX = TRUE
I_LOOP = 9.0
------ time 0 ------
  H_47
  P_66
  P_25
  P_79
  P_4
  P_16
  H_25
Z1_0 = 0.0
  H_17
Z0_7 = 0.0
Z1_4 = -0.00005
  P_46
  P_67
  P_37
  P_0
Z1_17 = -0.00005
Z0_4 = 0.0
  H_7
Z0_52 = 0.0
  H_68
Z1_52 = 0.00005
  P_62
Z1_16 = 0.0
  H_48
Z0_0 = 0.0
Z0_16 = 0.00005
Z1_7 = 0.0
Z0_17 = 0.0
------ time 1 ------
DELTA = 1.0
  H_1
  P_55
  P_68
  P_115
  P_25
  P_79
  P_48
  H_52
  H_4
  H_55
  H_25
Z1_0 = 2.0
Z0_7 = 0.0
Z1_4 = 0.00005
  H_16
  P_0
Z1_17 = 1.0
  P_1
  O
Z0_4 = 0.0
Z0_52 = 0.0
  H_68
Z1_52 = 2.0
  P_7
Z1_16 = 1.00005
  H_48
Z0_0 = 0.0
Z0_16 = 0.0
Z1_7 = 0.00005
  P_52
Z0_17 = 0.0
  P_17
------ time 2 ------
DELTA = 0.99995
  H_1
  P_55
  P_68
  P_115
  P_25
  P_79
  P_48
  H_52
  H_4
  H_55
  H_25
Z1_0 = 0.0
Z0_7 = 1.0
Z1_4 = 0.0
  H_16
  P_0
Z1_17 = 0.0
  P_1
Z0_4 = 1.0
Z0_52 = 1.0
  H_68
Z1_52 = 3.0
  P_7
Z1_16 = 0.0
  H_48
Z0_0 = 1.0
Z0_16 = 1.0
Z1_7 = 0.0
  P_52
Z0_17 = 1.0
  P_17
------ time 3 ------
DELTA = 0.00005
  H_1
  P_55
  P_68
  P_25
  P_4
  P_48
  H_52
  P_16
  H_4
  H_55
  H_25
Z1_0 = 0.99995
Z0_7 = 1.99995
Z1_4 = 0.99995
  H_16
Z1_17 = 0.99995
  P_1
Z0_4 = 1.99995
Z0_52 = 1.99995
  H_68
Z1_52 = 3.99995
Z1_16 = 0.99995
  H_48
Z0_0 = 1.99995
Z0_16 = 1.99995
Z1_7 = 0.99995
  P_52
Z0_17 = 1.99995
------ time 4 ------
DELTA = 0.00005
  H_1
  P_55
  P_68
  P_115
  P_25
  P_79
  P_48
  H_52
  H_4
  H_55
  H_25
Z1_0 = 1.0
Z0_7 = 0.0
Z1_4 = 1.0
  H_16
  P_0
Z1_17 = 1.0
  P_1
Z0_4 = 0.0
Z0_52 = 2.0
  H_68
Z1_52 = 4.0
  P_7
Z1_16 = 1.0
  H_48
Z0_0 = 0.0
Z0_16 = 0.0
Z1_7 = 1.0
  P_52
Z0_17 = 0.0
  P_17
------ time 5 ------
DELTA = 0.00005
  H_1
  P_55
  P_68
  P_25
  P_4
  P_48
  H_52
  P_16
  H_4
  H_55
  H_25
Z1_0 = 1.00005
Z0_7 = 0.00005
Z1_4 = 1.00005
  H_16
Z1_17 = 1.00005
  P_1
Z0_4 = 0.00005
Z0_52 = 2.00005
  H_68
Z1_52 = 4.00005
Z1_16 = 1.00005
  H_48
Z0_0 = 0.00005
Z0_16 = 0.00005
Z1_7 = 1.00005
  P_52
Z0_17 = 0.00005
------ time 6 ------
DELTA = 0.9999
  H_1
  P_55
  P_68
  P_25
  P_4
  P_48
  H_52
  P_16
  H_4
  H_55
  H_25
Z1_0 = 1.0001
Z0_7 = 0.0001
Z1_4 = 1.0001
  H_16
Z1_17 = 1.0001
  P_1
Z0_4 = 0.0001
Z0_52 = 2.0001
  H_68
Z1_52 = 4.0001
Z1_16 = 1.0001
  H_48
Z0_0 = 0.0001
Z0_16 = 0.0001
Z1_7 = 1.0001
  P_52
Z0_17 = 0.0001
------ time 7 ------
DELTA = 1.0
  H_1
  P_55
  P_68
  P_115
  P_25
  P_79
  P_48
  H_52
  H_4
  H_55
  H_25
Z1_0 = 0.0
Z0_7 = 1.0
Z1_4 = 0.0
  H_16
  P_0
Z1_17 = 0.0
  P_1
Z0_4 = 1.0
Z0_52 = 3.0
  H_68
Z1_52 = 5.0
  P_7
Z1_16 = 0.0
  H_48
Z0_0 = 1.0
Z0_16 = 1.0
Z1_7 = 0.0
  P_52
Z0_17 = 1.0
  P_17
------ time 8 ------
DELTA = 1.0
  H_1
  P_55
  P_68
  P_115
  P_25
  P_79
  P_48
  H_52
  H_4
  H_55
  H_25
Z1_0 = 1.0
Z0_7 = 0.0
Z1_4 = 1.0
  H_16
  P_0
Z1_17 = 1.0
  P_1
Z0_4 = 0.0
Z0_52 = 4.0
  H_68
Z1_52 = 6.0
  P_7
Z1_16 = 1.0
  H_48
Z0_0 = 0.0
Z0_16 = 0.0
Z1_7 = 1.0
  P_52
Z0_17 = 0.0
  P_17
------ time 9 ------
  **LOOP**
DELTA = 1.0
  H_1
  P_55
  P_68
  P_115
  P_25
  P_79
  P_48
  H_52
  H_4
  H_55
  H_25
Z1_0 = 0.0
Z0_7 = 1.0
Z1_4 = 0.0
  H_16
  P_0
Z1_17 = 0.0
  P_1
Z0_4 = 1.0
Z0_52 = 5.0
  H_68
Z1_52 = 7.0
  P_7
Z1_16 = 0.0
  H_48
Z0_0 = 1.0
Z0_16 = 1.0
Z1_7 = 0.0
  P_52
Z0_17 = 1.0
  P_17
------ time 10 ------
DELTA = 1.0
  H_1
  P_55
  P_68
  P_115
  P_25
  P_79
  P_48
  H_52
  H_4
  H_55
  H_25
Z1_0 = 1.0
Z0_7 = 0.0
Z1_4 = 1.0
  H_16
  P_0
Z1_17 = 1.0
  P_1
Z0_4 = 0.0
Z0_52 = 6.0
  H_68
Z1_52 = 8.0
  P_7
Z1_16 = 1.0
  H_48
Z0_0 = 0.0
Z0_16 = 0.0
Z1_7 = 1.0
  P_52
Z0_17 = 0.0
  P_17
------ end ------
Evaluation took:
  1.169 seconds of real time
  0.192000 seconds of total run time (0.176000 user, 0.016000 system)
  [ Run times consist of 0.020 seconds GC time, and 0.172 seconds non-GC time. ]
  16.42% CPU
  266 forms interpreted
  3,973,500,898 processor cycles
  35,766,512 bytes consed
  
