This is SBCL 1.2.4.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
IPC-terms: ((NEXT AV6) (NEXT AV5) (NEXT AV4) (NEXT AV3) (NEXT AV2) (NEXT AV1) 5
            4 3 2 1 SJ SI 6 (NEXT BV6) (NEXT BV5) (NEXT BV4) (NEXT BV3)
            (NEXT BV2) (NEXT BV1) BV6 BV5 BV4 BV3 BV2 BV1 AV6 AV5 AV4 AV3 AV2
            AV1 0)
IPC-constraints: ((= SI 0) (= (NEXT AV6) AV5) (= (NEXT AV5) AV6)
                  (= (NEXT AV6) AV4) (= (NEXT AV4) AV6) (= (NEXT AV5) AV4)
                  (= (NEXT AV4) AV5) (= (NEXT AV6) AV3) (= (NEXT AV3) AV6)
                  (= (NEXT AV5) AV3) (= (NEXT AV3) AV5) (= (NEXT AV4) AV3)
                  (= (NEXT AV3) AV4) (= (NEXT AV6) AV2) (= (NEXT AV2) AV6)
                  (= (NEXT AV5) AV2) (= (NEXT AV2) AV5) (= (NEXT AV4) AV2)
                  (= (NEXT AV2) AV4) (= (NEXT AV1) AV1) (= (NEXT AV3) AV2)
                  (= (NEXT AV2) AV3) (= (NEXT AV6) AV1) (= (NEXT AV1) AV6)
                  (= (NEXT AV5) AV1) (= (NEXT AV1) AV5) (= (NEXT AV4) AV1)
                  (= (NEXT AV1) AV4) (= (NEXT AV2) AV2) (= (NEXT AV3) AV1)
                  (= (NEXT AV1) AV3) (= (NEXT AV6) AV6) (= (NEXT AV5) AV5)
                  (= (NEXT AV4) AV4) (= (NEXT AV3) AV3) (= (NEXT AV2) AV1)
                  (= (NEXT AV1) AV2) (= SI 5) (> AV4 AV6) (= SI 4) (> AV3 AV6)
                  (> AV3 AV5) (= SI 3) (> AV2 AV6) (> AV2 AV5) (> AV2 AV4)
                  (= SI 2) (> AV1 AV6) (= SJ 6) (> AV1 AV5) (= SJ 5)
                  (> AV1 AV4) (= SJ 4) (> AV1 AV3) (= SJ 3) (= SJ 2) (= SI 1)
                  (< SI SJ) (> AV5 AV6) (> AV4 AV5) (> AV3 AV4) (> AV2 AV3)
                  (> AV1 AV2) (> SJ 0) (> SI 0) (>= SJ 0) (<= SJ 6) (>= SI 0)
                  (<= SI 6) (= (NEXT BV6) BV6) (= (NEXT BV5) BV5)
                  (= (NEXT BV4) BV4) (= (NEXT BV3) BV3) (= (NEXT BV2) BV2)
                  (= (NEXT BV1) BV1) (= AV5 AV6) (= AV4 AV6) (= AV4 AV5)
                  (= AV3 AV6) (= AV3 AV5) (= AV3 AV4) (= AV2 AV6) (= AV2 AV5)
                  (= AV2 AV4) (= AV2 AV3) (= AV1 AV6) (= AV1 AV5) (= AV1 AV4)
                  (= AV1 AV3) (= AV1 AV2) (= AV6 BV6) (= AV5 BV5) (= AV4 BV4)
                  (= AV3 BV3) (= AV2 BV2) (= AV1 BV1) (>= BV6 0) (>= BV5 0)
                  (>= BV4 0) (>= BV3 0) (>= BV2 0) (>= BV1 0) (>= AV6 0)
                  (>= AV5 0) (>= AV4 0) (>= AV3 0) (>= AV2 0) (>= AV1 0))
This is AE2SBVZOT.

1. processing formula
Used boolean propositions: 
((= SI 0) (= (NEXT AV6) AV5) (= (NEXT AV5) AV6) (= (NEXT AV6) AV4)
 (= (NEXT AV4) AV6) (= (NEXT AV5) AV4) (= (NEXT AV4) AV5) (= (NEXT AV6) AV3)
 (= (NEXT AV3) AV6) (= (NEXT AV5) AV3) (= (NEXT AV3) AV5) (= (NEXT AV4) AV3)
 (= (NEXT AV3) AV4) (= (NEXT AV6) AV2) (= (NEXT AV2) AV6) (= (NEXT AV5) AV2)
 (= (NEXT AV2) AV5) (= (NEXT AV4) AV2) (= (NEXT AV2) AV4) (= (NEXT AV1) AV1)
 (= (NEXT AV3) AV2) (= (NEXT AV2) AV3) (= (NEXT AV6) AV1) (= (NEXT AV1) AV6)
 (= (NEXT AV5) AV1) (= (NEXT AV1) AV5) (= (NEXT AV4) AV1) (= (NEXT AV1) AV4)
 (= (NEXT AV2) AV2) (= (NEXT AV3) AV1) (= (NEXT AV1) AV3) (= (NEXT AV6) AV6)
 (= (NEXT AV5) AV5) (= (NEXT AV4) AV4) (= (NEXT AV3) AV3) (= (NEXT AV2) AV1)
 (= (NEXT AV1) AV2) (= SI 5) (> AV4 AV6) (= SI 4) (> AV3 AV6) (> AV3 AV5)
 (= SI 3) (> AV2 AV6) (> AV2 AV5) (> AV2 AV4) (= SI 2) (> AV1 AV6) (= SJ 6)
 (> AV1 AV5) (= SJ 5) (> AV1 AV4) (= SJ 4) (> AV1 AV3) (= SJ 3) (= SJ 2)
 (= SI 1) (< SI SJ) (> AV5 AV6) (> AV4 AV5) (> AV3 AV4) (> AV2 AV3) (> AV1 AV2)
 (> SJ 0) (> SI 0) (>= SJ 0) (<= SJ 6) (>= SI 0) (<= SI 6) (= (NEXT BV6) BV6)
 (= (NEXT BV5) BV5) (= (NEXT BV4) BV4) (= (NEXT BV3) BV3) (= (NEXT BV2) BV2)
 (= (NEXT BV1) BV1) (= AV5 AV6) (= AV4 AV6) (= AV4 AV5) (= AV3 AV6) (= AV3 AV5)
 (= AV3 AV4) (= AV2 AV6) (= AV2 AV5) (= AV2 AV4) (= AV2 AV3) (= AV1 AV6)
 (= AV1 AV5) (= AV1 AV4) (= AV1 AV3) (= AV1 AV2) (= AV6 BV6) (= AV5 BV5)
 (= AV4 BV4) (= AV3 BV3) (= AV2 BV2) (= AV1 BV1) (>= BV6 0) (>= BV5 0)
 (>= BV4 0) (>= BV3 0) (>= BV2 0) (>= BV1 0) (>= AV6 0) (>= AV5 0) (>= AV4 0)
 (>= AV3 0) (>= AV2 0) (>= AV1 0))

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(SJ SI BV6 BV5 BV4 BV3 BV2 BV1 AV6 AV5 AV4 AV3 AV2 AV1)

Graph dependency over terms 
((6 1 SI SI SI SI 6 SI 2 3 4 5 6 SI SJ SI SJ SI 0 (NEXT BV1) 0 BV1 0 (NEXT BV2)
  0 BV2 AV1 AV1 0 (NEXT BV3) 0 BV3 AV1 AV2 AV2 AV1 0 (NEXT BV4) 0 BV4 AV1 AV2
  AV3 AV3 AV1 AV2 0 (NEXT BV5) 0 BV5 AV1 AV2 AV3 AV4 AV4 AV1 AV2 AV3 0
  (NEXT BV6) AV2 AV3 AV4 AV5 AV1 AV1 AV2 AV3 AV4 AV5 AV3 AV1 AV2 AV4 AV5 AV4
  AV1 AV2 AV3 AV5 AV5 AV1 AV2 AV3 AV4 0 BV6 AV1 AV2 AV3 AV4 AV5 AV5 AV1 AV2 AV3
  AV4 (NEXT AV1) (NEXT AV2) (NEXT AV3) (NEXT AV4) (NEXT AV5) AV6 AV1 AV2 AV3
  AV4 AV5 (NEXT AV6)))

Related variables 
((1 2 3 4 5 6 SJ SI BV1 BV2 BV3 BV4 BV5 0 BV6 AV1 AV2 AV3 AV4 AV5 AV6))

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
  7.279 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  24,748,957,290 processor cycles
  0 bytes consed
  
---SAT---
------ time 0 ------
  AV3 = 7
  BV6 = 3
  BV1 = 9
  AV6 = 3
  AV2 = 11
  AV5 = 10
  SJ = 4
  BV5 = 10
  BV2 = 11
  AV1 = 9
  BV4 = 8
  AV4 = 8
  BV3 = 7
  SI = 2
------ time 1 ------
  AV3 = 7
  BV6 = 3
  BV1 = 9
  AV6 = 3
  AV2 = 8
  AV5 = 10
  SJ = 2
  BV5 = 10
  BV2 = 11
  AV1 = 9
  BV4 = 8
  AV4 = 11
  BV3 = 7
  SI = 1
------ time 2 ------
  AV3 = 7
  BV6 = 3
  BV1 = 9
  AV6 = 3
  AV2 = 9
  AV5 = 10
  SJ = 3
  BV5 = 10
  BV2 = 11
  AV1 = 8
  BV4 = 8
  AV4 = 11
  BV3 = 7
  SI = 2
------ time 3 ------
  AV3 = 9
  BV6 = 3
  BV1 = 9
  AV6 = 3
  AV2 = 7
  AV5 = 10
  SJ = 6
  BV5 = 10
  BV2 = 11
  AV1 = 8
  BV4 = 8
  AV4 = 11
  BV3 = 7
  SI = 3
------ time 4 ------
  AV3 = 3
  BV6 = 3
  BV1 = 9
  AV6 = 9
  AV2 = 7
  AV5 = 10
  SJ = 6
  BV5 = 10
  BV2 = 11
  AV1 = 8
  BV4 = 8
  AV4 = 11
  BV3 = 7
  SI = 5
------ time 5 ------
  AV3 = 3
  BV6 = 3
  BV1 = 9
  AV6 = 10
  AV2 = 7
  AV5 = 9
  SJ = 5
  BV5 = 10
  BV2 = 11
  AV1 = 8
  BV4 = 8
  AV4 = 11
  BV3 = 7
  SI = 4
------ time 6 ------
  AV3 = 3
  BV6 = 3
  BV1 = 9
  AV6 = 10
  AV2 = 7
  AV5 = 11
  SJ = 2
  BV5 = 10
  BV2 = 11
  AV1 = 8
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 1
------ time 7 ------
  AV3 = 3
  BV6 = 3
  BV1 = 9
  AV6 = 10
  AV2 = 8
  AV5 = 11
  SJ = 6
  BV5 = 10
  BV2 = 11
  AV1 = 7
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 5
------ time 8 ------
  AV3 = 3
  BV6 = 3
  BV1 = 9
  AV6 = 11
  AV2 = 8
  AV5 = 10
  SJ = 3
  BV5 = 10
  BV2 = 11
  AV1 = 7
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 2
------ time 9 ------
  AV3 = 8
  BV6 = 3
  BV1 = 9
  AV6 = 11
  AV2 = 3
  AV5 = 10
  SJ = 2
  BV5 = 10
  BV2 = 11
  AV1 = 7
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 1
------ time 10 ------
  AV3 = 8
  BV6 = 3
  BV1 = 9
  AV6 = 11
  AV2 = 7
  AV5 = 10
  SJ = 0
  BV5 = 10
  BV2 = 11
  AV1 = 3
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 0
------ time 11 ------
  AV3 = 8
  BV6 = 3
  BV1 = 9
  AV6 = 11
  AV2 = 7
  AV5 = 10
  SJ = 0
  BV5 = 10
  BV2 = 11
  AV1 = 3
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 0
------ time 12 ------
  AV3 = 8
  BV6 = 3
  BV1 = 9
  AV6 = 11
  AV2 = 7
  AV5 = 10
  SJ = 0
  BV5 = 10
  BV2 = 11
  AV1 = 3
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 0
------ time 13 ------
  AV3 = 8
  BV6 = 3
  BV1 = 9
  AV6 = 11
  AV2 = 7
  AV5 = 10
  SJ = 0
  BV5 = 10
  BV2 = 11
  AV1 = 3
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 0
------ time 14 ------
  AV3 = 8
  BV6 = 3
  BV1 = 9
  AV6 = 11
  AV2 = 7
  AV5 = 10
  SJ = 0
  BV5 = 10
  BV2 = 11
  AV1 = 3
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 0
------ time 15 ------
  AV3 = 8
  BV6 = 3
  BV1 = 9
  AV6 = 11
  AV2 = 7
  AV5 = 10
  SJ = 0
  BV5 = 10
  BV2 = 11
  AV1 = 3
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 0
------ time 16 ------
**LOOP**
  AV3 = 8
  BV6 = 3
  BV1 = 9
  AV6 = 11
  AV2 = 7
  AV5 = 10
  SJ = 0
  BV5 = 10
  BV2 = 11
  AV1 = 3
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 0
------ time 17 ------
  AV3 = 8
  BV6 = 3
  BV1 = 9
  AV6 = 11
  AV2 = 7
  AV5 = 10
  SJ = 0
  BV5 = 10
  BV2 = 11
  AV1 = 3
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 0
------ time 18 ------
  AV3 = 8
  BV6 = 3
  BV1 = 9
  AV6 = 11
  AV2 = 7
  AV5 = 10
  SJ = 0
  BV5 = 10
  BV2 = 11
  AV1 = 3
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 0
------ time 19 ------
  AV3 = 8
  BV6 = 3
  BV1 = 9
  AV6 = 11
  AV2 = 7
  AV5 = 10
  SJ = 0
  BV5 = 10
  BV2 = 11
  AV1 = 3
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 0
------ time 20 ------
  AV3 = 8
  BV6 = 3
  BV1 = 9
  AV6 = 11
  AV2 = 7
  AV5 = 10
  SJ = 0
  BV5 = 10
  BV2 = 11
  AV1 = 3
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 0
------ time 21 ------
  AV3 = 8
  BV6 = 3
  BV1 = 9
  AV6 = 11
  AV2 = 7
  AV5 = 10
  SJ = 0
  BV5 = 10
  BV2 = 11
  AV1 = 3
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 0
------ time 22 ------
  AV3 = 8
  BV6 = 3
  BV1 = 9
  AV6 = 11
  AV2 = 7
  AV5 = 10
  SJ = 0
  BV5 = 10
  BV2 = 11
  AV1 = 3
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 0
------ time 23 ------
  AV3 = 8
  BV6 = 3
  BV1 = 9
  AV6 = 11
  AV2 = 7
  AV5 = 10
  SJ = 0
  BV5 = 10
  BV2 = 11
  AV1 = 3
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 0
------ time 24 ------
  AV3 = 8
  BV6 = 3
  BV1 = 9
  AV6 = 11
  AV2 = 7
  AV5 = 10
  SJ = 0
  BV5 = 10
  BV2 = 11
  AV1 = 3
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 0
------ time 25 ------
  AV3 = 8
  BV6 = 3
  BV1 = 9
  AV6 = 11
  AV2 = 7
  AV5 = 10
  SJ = 0
  BV5 = 10
  BV2 = 11
  AV1 = 3
  BV4 = 8
  AV4 = 9
  BV3 = 7
  SI = 0
------ end ------
Evaluation took:
  7.398 seconds of real time
  0.116000 seconds of total run time (0.104000 user, 0.012000 system)
  [ Run times consist of 0.036 seconds GC time, and 0.080 seconds non-GC time. ]
  1.57% CPU
  25,152,012,826 processor cycles
  142,255,296 bytes consed
  
