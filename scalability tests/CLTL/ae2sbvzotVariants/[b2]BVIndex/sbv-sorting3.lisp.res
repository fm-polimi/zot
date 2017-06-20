This is SBCL 1.2.4.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
IPC-terms: ((NEXT AV5) (NEXT AV4) (NEXT AV3) (NEXT AV2) (NEXT AV1) 4 3 2 1 S 5
            (NEXT BV5) (NEXT BV4) (NEXT BV3) (NEXT BV2) (NEXT BV1) BV5 BV4 BV3
            BV2 BV1 AV5 AV4 AV3 AV2 AV1 0)
IPC-constraints: ((= AV5 BV4) (= AV5 BV3) (= AV5 BV2) (= AV5 BV1) (= AV4 BV5)
                  (= AV4 BV3) (= AV4 BV2) (= AV4 BV1) (= AV3 BV5) (= AV3 BV4)
                  (= AV3 BV2) (= AV3 BV1) (= AV2 BV5) (= AV2 BV4) (= AV2 BV3)
                  (= AV2 BV1) (= AV1 BV5) (= AV1 BV4) (= AV1 BV3) (= AV1 BV2)
                  (<= AV4 AV5) (<= AV3 AV4) (<= AV2 AV3) (<= AV1 AV2) (= S 0)
                  (= (NEXT AV5) AV4) (= (NEXT AV4) AV5) (= (NEXT AV2) AV2)
                  (= (NEXT AV4) AV3) (= (NEXT AV3) AV4) (= (NEXT AV1) AV1)
                  (= (NEXT AV3) AV2) (= (NEXT AV2) AV3) (= (NEXT AV5) AV5)
                  (= (NEXT AV4) AV4) (= (NEXT AV3) AV3) (= (NEXT AV2) AV1)
                  (= (NEXT AV1) AV2) (> S 0) (> AV4 AV5) (= S 4) (> AV3 AV4)
                  (= S 3) (> AV2 AV3) (= S 2) (> AV1 AV2) (= S 1) (>= S 0)
                  (< S 5) (= (NEXT BV5) BV5) (= (NEXT BV4) BV4)
                  (= (NEXT BV3) BV3) (= (NEXT BV2) BV2) (= (NEXT BV1) BV1)
                  (= AV4 AV5) (= AV3 AV5) (= AV3 AV4) (= AV2 AV5) (= AV2 AV4)
                  (= AV2 AV3) (= AV1 AV5) (= AV1 AV4) (= AV1 AV3) (= AV1 AV2)
                  (= AV5 BV5) (= AV4 BV4) (= AV3 BV3) (= AV2 BV2) (= AV1 BV1)
                  (>= BV5 0) (>= BV4 0) (>= BV3 0) (>= BV2 0) (>= BV1 0)
                  (>= AV5 0) (>= AV4 0) (>= AV3 0) (>= AV2 0) (>= AV1 0))
This is AE2SBVZOT.

1. processing formula
Used boolean propositions: 
((= AV5 BV4) (= AV5 BV3) (= AV5 BV2) (= AV5 BV1) (= AV4 BV5) (= AV4 BV3)
 (= AV4 BV2) (= AV4 BV1) (= AV3 BV5) (= AV3 BV4) (= AV3 BV2) (= AV3 BV1)
 (= AV2 BV5) (= AV2 BV4) (= AV2 BV3) (= AV2 BV1) (= AV1 BV5) (= AV1 BV4)
 (= AV1 BV3) (= AV1 BV2) (<= AV4 AV5) (<= AV3 AV4) (<= AV2 AV3) (<= AV1 AV2)
 (= S 0) (= (NEXT AV5) AV4) (= (NEXT AV4) AV5) (= (NEXT AV2) AV2)
 (= (NEXT AV4) AV3) (= (NEXT AV3) AV4) (= (NEXT AV1) AV1) (= (NEXT AV3) AV2)
 (= (NEXT AV2) AV3) (= (NEXT AV5) AV5) (= (NEXT AV4) AV4) (= (NEXT AV3) AV3)
 (= (NEXT AV2) AV1) (= (NEXT AV1) AV2) (> S 0) (> AV4 AV5) (= S 4) (> AV3 AV4)
 (= S 3) (> AV2 AV3) (= S 2) (> AV1 AV2) (= S 1) (>= S 0) (< S 5)
 (= (NEXT BV5) BV5) (= (NEXT BV4) BV4) (= (NEXT BV3) BV3) (= (NEXT BV2) BV2)
 (= (NEXT BV1) BV1) (= AV4 AV5) (= AV3 AV5) (= AV3 AV4) (= AV2 AV5) (= AV2 AV4)
 (= AV2 AV3) (= AV1 AV5) (= AV1 AV4) (= AV1 AV3) (= AV1 AV2) (= AV5 BV5)
 (= AV4 BV4) (= AV3 BV3) (= AV2 BV2) (= AV1 BV1) (>= BV5 0) (>= BV4 0)
 (>= BV3 0) (>= BV2 0) (>= BV1 0) (>= AV5 0) (>= AV4 0) (>= AV3 0) (>= AV2 0)
 (>= AV1 0))

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(S BV5 BV4 BV3 BV2 BV1 AV5 AV4 AV3 AV2 AV1)

Graph dependency over terms 
((5 1 2 3 4 S S S 0 AV1 0 AV1 AV1 (NEXT AV1) AV1 AV1 AV2 0 AV1 AV2 AV2
  (NEXT AV2) AV2 AV3 AV2 0 AV1 AV2 AV3 AV3 (NEXT AV3) AV3 0 AV1 (NEXT BV1) AV2
  AV3 AV4 0 AV2 (NEXT BV2) AV1 AV3 AV4 0 AV3 (NEXT BV3) AV1 AV2 AV4 0 AV4
  (NEXT BV4) AV1 AV2 AV3 0 (NEXT BV5) AV1 AV2 AV3 AV4 AV4 AV3 0 BV5 AV1 AV2 AV3
  AV4 AV4 (NEXT AV4) AV4 BV1 BV2 BV3 BV4 AV5 AV4 (NEXT AV5)))

Related variables 
((5 1 2 3 4 S 0 BV5 AV1 AV2 AV3 BV1 BV2 BV3 BV4 AV4 AV5))

Time bound: 25

Number of Boolean variables: 
0
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
  0.499 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  1,697,960,970 processor cycles
  32,592 bytes consed
  
---SAT---
------ time 0 ------
  BV4 = 2
  AV1 = 7
  AV3 = 3
  BV1 = 7
  AV4 = 2
  BV3 = 3
  AV2 = 6
  S = 1
  AV5 = 1
  BV5 = 1
  BV2 = 6
------ time 1 ------
  BV4 = 2
  AV1 = 6
  AV3 = 3
  BV1 = 7
  AV4 = 2
  BV3 = 3
  AV2 = 7
  S = 2
  AV5 = 1
  BV5 = 1
  BV2 = 6
------ time 2 ------
  BV4 = 2
  AV1 = 6
  AV3 = 7
  BV1 = 7
  AV4 = 2
  BV3 = 3
  AV2 = 3
  S = 4
  AV5 = 1
  BV5 = 1
  BV2 = 6
------ time 3 ------
  BV4 = 2
  AV1 = 6
  AV3 = 7
  BV1 = 7
  AV4 = 1
  BV3 = 3
  AV2 = 3
  S = 3
  AV5 = 2
  BV5 = 1
  BV2 = 6
------ time 4 ------
  BV4 = 2
  AV1 = 6
  AV3 = 1
  BV1 = 7
  AV4 = 7
  BV3 = 3
  AV2 = 3
  S = 1
  AV5 = 2
  BV5 = 1
  BV2 = 6
------ time 5 ------
  BV4 = 2
  AV1 = 3
  AV3 = 1
  BV1 = 7
  AV4 = 7
  BV3 = 3
  AV2 = 6
  S = 2
  AV5 = 2
  BV5 = 1
  BV2 = 6
------ time 6 ------
  BV4 = 2
  AV1 = 3
  AV3 = 6
  BV1 = 7
  AV4 = 7
  BV3 = 3
  AV2 = 1
  S = 4
  AV5 = 2
  BV5 = 1
  BV2 = 6
------ time 7 ------
  BV4 = 2
  AV1 = 3
  AV3 = 6
  BV1 = 7
  AV4 = 2
  BV3 = 3
  AV2 = 1
  S = 1
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ time 8 ------
  BV4 = 2
  AV1 = 1
  AV3 = 6
  BV1 = 7
  AV4 = 2
  BV3 = 3
  AV2 = 3
  S = 3
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ time 9 ------
  BV4 = 2
  AV1 = 1
  AV3 = 2
  BV1 = 7
  AV4 = 6
  BV3 = 3
  AV2 = 3
  S = 2
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ time 10 ------
  BV4 = 2
  AV1 = 1
  AV3 = 3
  BV1 = 7
  AV4 = 6
  BV3 = 3
  AV2 = 2
  S = 0
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ time 11 ------
  BV4 = 2
  AV1 = 1
  AV3 = 3
  BV1 = 7
  AV4 = 6
  BV3 = 3
  AV2 = 2
  S = 0
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ time 12 ------
  BV4 = 2
  AV1 = 1
  AV3 = 3
  BV1 = 7
  AV4 = 6
  BV3 = 3
  AV2 = 2
  S = 0
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ time 13 ------
  BV4 = 2
  AV1 = 1
  AV3 = 3
  BV1 = 7
  AV4 = 6
  BV3 = 3
  AV2 = 2
  S = 0
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ time 14 ------
  BV4 = 2
  AV1 = 1
  AV3 = 3
  BV1 = 7
  AV4 = 6
  BV3 = 3
  AV2 = 2
  S = 0
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ time 15 ------
  BV4 = 2
  AV1 = 1
  AV3 = 3
  BV1 = 7
  AV4 = 6
  BV3 = 3
  AV2 = 2
  S = 0
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ time 16 ------
  BV4 = 2
  AV1 = 1
  AV3 = 3
  BV1 = 7
  AV4 = 6
  BV3 = 3
  AV2 = 2
  S = 0
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ time 17 ------
  BV4 = 2
  AV1 = 1
  AV3 = 3
  BV1 = 7
  AV4 = 6
  BV3 = 3
  AV2 = 2
  S = 0
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ time 18 ------
  BV4 = 2
  AV1 = 1
  AV3 = 3
  BV1 = 7
  AV4 = 6
  BV3 = 3
  AV2 = 2
  S = 0
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ time 19 ------
  BV4 = 2
  AV1 = 1
  AV3 = 3
  BV1 = 7
  AV4 = 6
  BV3 = 3
  AV2 = 2
  S = 0
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ time 20 ------
**LOOP**
  BV4 = 2
  AV1 = 1
  AV3 = 3
  BV1 = 7
  AV4 = 6
  BV3 = 3
  AV2 = 2
  S = 0
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ time 21 ------
  BV4 = 2
  AV1 = 1
  AV3 = 3
  BV1 = 7
  AV4 = 6
  BV3 = 3
  AV2 = 2
  S = 0
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ time 22 ------
  BV4 = 2
  AV1 = 1
  AV3 = 3
  BV1 = 7
  AV4 = 6
  BV3 = 3
  AV2 = 2
  S = 0
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ time 23 ------
  BV4 = 2
  AV1 = 1
  AV3 = 3
  BV1 = 7
  AV4 = 6
  BV3 = 3
  AV2 = 2
  S = 0
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ time 24 ------
  BV4 = 2
  AV1 = 1
  AV3 = 3
  BV1 = 7
  AV4 = 6
  BV3 = 3
  AV2 = 2
  S = 0
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ time 25 ------
  BV4 = 2
  AV1 = 1
  AV3 = 3
  BV1 = 7
  AV4 = 6
  BV3 = 3
  AV2 = 2
  S = 0
  AV5 = 7
  BV5 = 1
  BV2 = 6
------ end ------
Evaluation took:
  0.590 seconds of real time
  0.088000 seconds of total run time (0.076000 user, 0.012000 system)
  [ Run times consist of 0.032 seconds GC time, and 0.056 seconds non-GC time. ]
  14.92% CPU
  2,007,328,874 processor cycles
  83,728,144 bytes consed
  
