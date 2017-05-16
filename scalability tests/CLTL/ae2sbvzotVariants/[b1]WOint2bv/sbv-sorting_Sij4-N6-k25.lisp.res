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
IPC-constraints: ((= AV6 BV5) (= AV6 BV4) (= AV6 BV3) (= AV6 BV2) (= AV6 BV1)
                  (= AV5 BV6) (= AV5 BV4) (= AV5 BV3) (= AV5 BV2) (= AV5 BV1)
                  (= AV4 BV6) (= AV4 BV5) (= AV4 BV3) (= AV4 BV2) (= AV4 BV1)
                  (= AV3 BV6) (= AV3 BV5) (= AV3 BV4) (= AV3 BV2) (= AV3 BV1)
                  (= AV2 BV6) (= AV2 BV5) (= AV2 BV4) (= AV2 BV3) (= AV2 BV1)
                  (= AV1 BV6) (= AV1 BV5) (= AV1 BV4) (= AV1 BV3) (= AV1 BV2)
                  (<= AV5 AV6) (<= AV4 AV5) (<= AV3 AV4) (<= AV2 AV3)
                  (<= AV1 AV2) (= SI 0) (= (NEXT AV6) AV5) (= (NEXT AV5) AV6)
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
((= AV6 BV5) (= AV6 BV4) (= AV6 BV3) (= AV6 BV2) (= AV6 BV1) (= AV5 BV6)
 (= AV5 BV4) (= AV5 BV3) (= AV5 BV2) (= AV5 BV1) (= AV4 BV6) (= AV4 BV5)
 (= AV4 BV3) (= AV4 BV2) (= AV4 BV1) (= AV3 BV6) (= AV3 BV5) (= AV3 BV4)
 (= AV3 BV2) (= AV3 BV1) (= AV2 BV6) (= AV2 BV5) (= AV2 BV4) (= AV2 BV3)
 (= AV2 BV1) (= AV1 BV6) (= AV1 BV5) (= AV1 BV4) (= AV1 BV3) (= AV1 BV2)
 (<= AV5 AV6) (<= AV4 AV5) (<= AV3 AV4) (<= AV2 AV3) (<= AV1 AV2) (= SI 0)
 (= (NEXT AV6) AV5) (= (NEXT AV5) AV6) (= (NEXT AV6) AV4) (= (NEXT AV4) AV6)
 (= (NEXT AV5) AV4) (= (NEXT AV4) AV5) (= (NEXT AV6) AV3) (= (NEXT AV3) AV6)
 (= (NEXT AV5) AV3) (= (NEXT AV3) AV5) (= (NEXT AV4) AV3) (= (NEXT AV3) AV4)
 (= (NEXT AV6) AV2) (= (NEXT AV2) AV6) (= (NEXT AV5) AV2) (= (NEXT AV2) AV5)
 (= (NEXT AV4) AV2) (= (NEXT AV2) AV4) (= (NEXT AV1) AV1) (= (NEXT AV3) AV2)
 (= (NEXT AV2) AV3) (= (NEXT AV6) AV1) (= (NEXT AV1) AV6) (= (NEXT AV5) AV1)
 (= (NEXT AV1) AV5) (= (NEXT AV4) AV1) (= (NEXT AV1) AV4) (= (NEXT AV2) AV2)
 (= (NEXT AV3) AV1) (= (NEXT AV1) AV3) (= (NEXT AV6) AV6) (= (NEXT AV5) AV5)
 (= (NEXT AV4) AV4) (= (NEXT AV3) AV3) (= (NEXT AV2) AV1) (= (NEXT AV1) AV2)
 (= SI 5) (> AV4 AV6) (= SI 4) (> AV3 AV6) (> AV3 AV5) (= SI 3) (> AV2 AV6)
 (> AV2 AV5) (> AV2 AV4) (= SI 2) (> AV1 AV6) (= SJ 6) (> AV1 AV5) (= SJ 5)
 (> AV1 AV4) (= SJ 4) (> AV1 AV3) (= SJ 3) (= SJ 2) (= SI 1) (< SI SJ)
 (> AV5 AV6) (> AV4 AV5) (> AV3 AV4) (> AV2 AV3) (> AV1 AV2) (> SJ 0) (> SI 0)
 (>= SJ 0) (<= SJ 6) (>= SI 0) (<= SI 6) (= (NEXT BV6) BV6) (= (NEXT BV5) BV5)
 (= (NEXT BV4) BV4) (= (NEXT BV3) BV3) (= (NEXT BV2) BV2) (= (NEXT BV1) BV1)
 (= AV5 AV6) (= AV4 AV6) (= AV4 AV5) (= AV3 AV6) (= AV3 AV5) (= AV3 AV4)
 (= AV2 AV6) (= AV2 AV5) (= AV2 AV4) (= AV2 AV3) (= AV1 AV6) (= AV1 AV5)
 (= AV1 AV4) (= AV1 AV3) (= AV1 AV2) (= AV6 BV6) (= AV5 BV5) (= AV4 BV4)
 (= AV3 BV3) (= AV2 BV2) (= AV1 BV1) (>= BV6 0) (>= BV5 0) (>= BV4 0)
 (>= BV3 0) (>= BV2 0) (>= BV1 0) (>= AV6 0) (>= AV5 0) (>= AV4 0) (>= AV3 0)
 (>= AV2 0) (>= AV1 0))

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(SJ SI BV6 BV5 BV4 BV3 BV2 BV1 AV6 AV5 AV4 AV3 AV2 AV1)

Graph dependency over terms 
((6 1 SI SI SI SI 6 SI 2 3 4 5 6 SI SJ SI SJ SI 0 0 AV1 AV1 AV1 0 AV1 AV2 AV2
  AV1 AV2 0 AV1 AV2 AV3 AV3 AV1 AV2 AV3 0 AV1 AV2 AV3 AV4 AV4 AV1 AV2 AV3 AV4 0
  AV1 (NEXT BV1) AV2 AV3 AV4 AV5 0 AV2 (NEXT BV2) AV1 AV3 AV4 AV5 0 AV3
  (NEXT BV3) AV1 AV2 AV4 AV5 0 AV4 (NEXT BV4) AV1 AV2 AV3 AV5 0 AV5 (NEXT BV5)
  AV1 AV2 AV3 AV4 0 (NEXT BV6) AV1 AV2 AV3 AV4 AV5 AV2 AV3 AV4 AV5 AV1 AV1 AV2
  AV3 AV4 AV5 AV3 AV1 AV2 AV4 AV5 AV4 AV1 AV2 AV3 AV5 AV5 AV1 AV2 AV3 AV4 0 BV6
  AV1 AV2 AV3 AV4 AV5 AV5 AV1 AV2 AV3 AV4 (NEXT AV1) (NEXT AV2) (NEXT AV3)
  (NEXT AV4) (NEXT AV5) AV5 BV1 BV2 BV3 BV4 BV5 AV6 AV1 AV2 AV3 AV4 AV5
  (NEXT AV6)))

Related variables 
((1 2 3 4 5 6 SJ SI 0 BV6 BV1 BV2 BV3 BV4 BV5 AV1 AV2 AV3 AV4 AV5 AV6))

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
  9.651 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  32,813,159,135 processor cycles
  32,608 bytes consed
  
---SAT---
------ time 0 ------
  AV4 = 7
  BV3 = 10
  SI = 1
  AV3 = 10
  BV6 = 9
  BV1 = 19
  AV6 = 9
  AV2 = 11
  AV5 = 8
  SJ = 2
  BV5 = 8
  BV2 = 11
  AV1 = 19
  BV4 = 7
------ time 1 ------
  AV4 = 7
  BV3 = 10
  SI = 3
  AV3 = 10
  BV6 = 9
  BV1 = 19
  AV6 = 9
  AV2 = 19
  AV5 = 8
  SJ = 4
  BV5 = 8
  BV2 = 11
  AV1 = 11
  BV4 = 7
------ time 2 ------
  AV4 = 10
  BV3 = 10
  SI = 1
  AV3 = 7
  BV6 = 9
  BV1 = 19
  AV6 = 9
  AV2 = 19
  AV5 = 8
  SJ = 4
  BV5 = 8
  BV2 = 11
  AV1 = 11
  BV4 = 7
------ time 3 ------
  AV4 = 11
  BV3 = 10
  SI = 2
  AV3 = 7
  BV6 = 9
  BV1 = 19
  AV6 = 9
  AV2 = 19
  AV5 = 8
  SJ = 4
  BV5 = 8
  BV2 = 11
  AV1 = 10
  BV4 = 7
------ time 4 ------
  AV4 = 19
  BV3 = 10
  SI = 2
  AV3 = 7
  BV6 = 9
  BV1 = 19
  AV6 = 9
  AV2 = 11
  AV5 = 8
  SJ = 5
  BV5 = 8
  BV2 = 11
  AV1 = 10
  BV4 = 7
------ time 5 ------
  AV4 = 19
  BV3 = 10
  SI = 1
  AV3 = 7
  BV6 = 9
  BV1 = 19
  AV6 = 9
  AV2 = 8
  AV5 = 11
  SJ = 6
  BV5 = 8
  BV2 = 11
  AV1 = 10
  BV4 = 7
------ time 6 ------
  AV4 = 19
  BV3 = 10
  SI = 1
  AV3 = 7
  BV6 = 9
  BV1 = 19
  AV6 = 10
  AV2 = 8
  AV5 = 11
  SJ = 2
  BV5 = 8
  BV2 = 11
  AV1 = 9
  BV4 = 7
------ time 7 ------
  AV4 = 19
  BV3 = 10
  SI = 2
  AV3 = 7
  BV6 = 9
  BV1 = 19
  AV6 = 10
  AV2 = 9
  AV5 = 11
  SJ = 3
  BV5 = 8
  BV2 = 11
  AV1 = 8
  BV4 = 7
------ time 8 ------
  AV4 = 19
  BV3 = 10
  SI = 1
  AV3 = 9
  BV6 = 9
  BV1 = 19
  AV6 = 10
  AV2 = 7
  AV5 = 11
  SJ = 2
  BV5 = 8
  BV2 = 11
  AV1 = 8
  BV4 = 7
------ time 9 ------
  AV4 = 19
  BV3 = 10
  SI = 4
  AV3 = 9
  BV6 = 9
  BV1 = 19
  AV6 = 10
  AV2 = 8
  AV5 = 11
  SJ = 6
  BV5 = 8
  BV2 = 11
  AV1 = 7
  BV4 = 7
------ time 10 ------
  AV4 = 10
  BV3 = 10
  SI = 0
  AV3 = 9
  BV6 = 9
  BV1 = 19
  AV6 = 19
  AV2 = 8
  AV5 = 11
  SJ = 0
  BV5 = 8
  BV2 = 11
  AV1 = 7
  BV4 = 7
------ time 11 ------
  AV4 = 10
  BV3 = 10
  SI = 0
  AV3 = 9
  BV6 = 9
  BV1 = 19
  AV6 = 19
  AV2 = 8
  AV5 = 11
  SJ = 0
  BV5 = 8
  BV2 = 11
  AV1 = 7
  BV4 = 7
------ time 12 ------
  AV4 = 10
  BV3 = 10
  SI = 0
  AV3 = 9
  BV6 = 9
  BV1 = 19
  AV6 = 19
  AV2 = 8
  AV5 = 11
  SJ = 0
  BV5 = 8
  BV2 = 11
  AV1 = 7
  BV4 = 7
------ time 13 ------
  AV4 = 10
  BV3 = 10
  SI = 0
  AV3 = 9
  BV6 = 9
  BV1 = 19
  AV6 = 19
  AV2 = 8
  AV5 = 11
  SJ = 0
  BV5 = 8
  BV2 = 11
  AV1 = 7
  BV4 = 7
------ time 14 ------
  AV4 = 10
  BV3 = 10
  SI = 0
  AV3 = 9
  BV6 = 9
  BV1 = 19
  AV6 = 19
  AV2 = 8
  AV5 = 11
  SJ = 0
  BV5 = 8
  BV2 = 11
  AV1 = 7
  BV4 = 7
------ time 15 ------
  AV4 = 10
  BV3 = 10
  SI = 0
  AV3 = 9
  BV6 = 9
  BV1 = 19
  AV6 = 19
  AV2 = 8
  AV5 = 11
  SJ = 0
  BV5 = 8
  BV2 = 11
  AV1 = 7
  BV4 = 7
------ time 16 ------
  AV4 = 10
  BV3 = 10
  SI = 0
  AV3 = 9
  BV6 = 9
  BV1 = 19
  AV6 = 19
  AV2 = 8
  AV5 = 11
  SJ = 0
  BV5 = 8
  BV2 = 11
  AV1 = 7
  BV4 = 7
------ time 17 ------
  AV4 = 10
  BV3 = 10
  SI = 0
  AV3 = 9
  BV6 = 9
  BV1 = 19
  AV6 = 19
  AV2 = 8
  AV5 = 11
  SJ = 0
  BV5 = 8
  BV2 = 11
  AV1 = 7
  BV4 = 7
------ time 18 ------
  AV4 = 10
  BV3 = 10
  SI = 0
  AV3 = 9
  BV6 = 9
  BV1 = 19
  AV6 = 19
  AV2 = 8
  AV5 = 11
  SJ = 0
  BV5 = 8
  BV2 = 11
  AV1 = 7
  BV4 = 7
------ time 19 ------
  AV4 = 10
  BV3 = 10
  SI = 0
  AV3 = 9
  BV6 = 9
  BV1 = 19
  AV6 = 19
  AV2 = 8
  AV5 = 11
  SJ = 0
  BV5 = 8
  BV2 = 11
  AV1 = 7
  BV4 = 7
------ time 20 ------
  AV4 = 10
  BV3 = 10
  SI = 0
  AV3 = 9
  BV6 = 9
  BV1 = 19
  AV6 = 19
  AV2 = 8
  AV5 = 11
  SJ = 0
  BV5 = 8
  BV2 = 11
  AV1 = 7
  BV4 = 7
------ time 21 ------
  AV4 = 10
  BV3 = 10
  SI = 0
  AV3 = 9
  BV6 = 9
  BV1 = 19
  AV6 = 19
  AV2 = 8
  AV5 = 11
  SJ = 0
  BV5 = 8
  BV2 = 11
  AV1 = 7
  BV4 = 7
------ time 22 ------
  AV4 = 10
  BV3 = 10
  SI = 0
  AV3 = 9
  BV6 = 9
  BV1 = 19
  AV6 = 19
  AV2 = 8
  AV5 = 11
  SJ = 0
  BV5 = 8
  BV2 = 11
  AV1 = 7
  BV4 = 7
------ time 23 ------
  AV4 = 10
  BV3 = 10
  SI = 0
  AV3 = 9
  BV6 = 9
  BV1 = 19
  AV6 = 19
  AV2 = 8
  AV5 = 11
  SJ = 0
  BV5 = 8
  BV2 = 11
  AV1 = 7
  BV4 = 7
------ time 24 ------
  AV4 = 10
  BV3 = 10
  SI = 0
  AV3 = 9
  BV6 = 9
  BV1 = 19
  AV6 = 19
  AV2 = 8
  AV5 = 11
  SJ = 0
  BV5 = 8
  BV2 = 11
  AV1 = 7
  BV4 = 7
------ time 25 ------
  AV4 = 10
  BV3 = 10
  SI = 0
  AV3 = 9
  BV6 = 9
  BV1 = 19
  AV6 = 19
  AV2 = 8
  AV5 = 11
  SJ = 0
  BV5 = 8
  BV2 = 11
  AV1 = 7
  BV4 = 7
------ end ------
Evaluation took:
  9.774 seconds of real time
  0.120000 seconds of total run time (0.100000 user, 0.020000 system)
  [ Run times consist of 0.044 seconds GC time, and 0.076 seconds non-GC time. ]
  1.23% CPU
  33,230,932,503 processor cycles
  147,053,296 bytes consed
  
