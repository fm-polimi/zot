This is SBCL 1.2.4.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
IPC-terms: ((NEXT AV8) (NEXT AV7) (NEXT AV6) (NEXT AV5) (NEXT AV4) (NEXT AV3)
            (NEXT AV2) (NEXT AV1) 7 6 5 4 3 2 1 SJ SI 8 (NEXT BV8) (NEXT BV7)
            (NEXT BV6) (NEXT BV5) (NEXT BV4) (NEXT BV3) (NEXT BV2) (NEXT BV1)
            BV8 BV7 BV6 BV5 BV4 BV3 BV2 BV1 AV8 AV7 AV6 AV5 AV4 AV3 AV2 AV1 0)
IPC-constraints: ((= AV8 BV7) (= AV8 BV6) (= AV8 BV5) (= AV8 BV4) (= AV8 BV3)
                  (= AV8 BV2) (= AV8 BV1) (= AV7 BV8) (= AV7 BV6) (= AV7 BV5)
                  (= AV7 BV4) (= AV7 BV3) (= AV7 BV2) (= AV7 BV1) (= AV6 BV8)
                  (= AV6 BV7) (= AV6 BV5) (= AV6 BV4) (= AV6 BV3) (= AV6 BV2)
                  (= AV6 BV1) (= AV5 BV8) (= AV5 BV7) (= AV5 BV6) (= AV5 BV4)
                  (= AV5 BV3) (= AV5 BV2) (= AV5 BV1) (= AV4 BV8) (= AV4 BV7)
                  (= AV4 BV6) (= AV4 BV5) (= AV4 BV3) (= AV4 BV2) (= AV4 BV1)
                  (= AV3 BV8) (= AV3 BV7) (= AV3 BV6) (= AV3 BV5) (= AV3 BV4)
                  (= AV3 BV2) (= AV3 BV1) (= AV2 BV8) (= AV2 BV7) (= AV2 BV6)
                  (= AV2 BV5) (= AV2 BV4) (= AV2 BV3) (= AV2 BV1) (= AV1 BV8)
                  (= AV1 BV7) (= AV1 BV6) (= AV1 BV5) (= AV1 BV4) (= AV1 BV3)
                  (= AV1 BV2) (<= AV7 AV8) (<= AV6 AV7) (<= AV5 AV6)
                  (<= AV4 AV5) (<= AV3 AV4) (<= AV2 AV3) (<= AV1 AV2) (= SI 0)
                  (= (NEXT AV8) AV7) (= (NEXT AV7) AV8) (= (NEXT AV8) AV6)
                  (= (NEXT AV6) AV8) (= (NEXT AV7) AV6) (= (NEXT AV6) AV7)
                  (= (NEXT AV8) AV5) (= (NEXT AV5) AV8) (= (NEXT AV7) AV5)
                  (= (NEXT AV5) AV7) (= (NEXT AV6) AV5) (= (NEXT AV5) AV6)
                  (= (NEXT AV8) AV4) (= (NEXT AV4) AV8) (= (NEXT AV7) AV4)
                  (= (NEXT AV4) AV7) (= (NEXT AV6) AV4) (= (NEXT AV4) AV6)
                  (= (NEXT AV5) AV4) (= (NEXT AV4) AV5) (= (NEXT AV8) AV3)
                  (= (NEXT AV3) AV8) (= (NEXT AV7) AV3) (= (NEXT AV3) AV7)
                  (= (NEXT AV6) AV3) (= (NEXT AV3) AV6) (= (NEXT AV5) AV3)
                  (= (NEXT AV3) AV5) (= (NEXT AV4) AV3) (= (NEXT AV3) AV4)
                  (= (NEXT AV8) AV2) (= (NEXT AV2) AV8) (= (NEXT AV7) AV2)
                  (= (NEXT AV2) AV7) (= (NEXT AV6) AV2) (= (NEXT AV2) AV6)
                  (= (NEXT AV5) AV2) (= (NEXT AV2) AV5) (= (NEXT AV4) AV2)
                  (= (NEXT AV2) AV4) (= (NEXT AV1) AV1) (= (NEXT AV3) AV2)
                  (= (NEXT AV2) AV3) (= (NEXT AV8) AV1) (= (NEXT AV1) AV8)
                  (= (NEXT AV7) AV1) (= (NEXT AV1) AV7) (= (NEXT AV6) AV1)
                  (= (NEXT AV1) AV6) (= (NEXT AV5) AV1) (= (NEXT AV1) AV5)
                  (= (NEXT AV4) AV1) (= (NEXT AV1) AV4) (= (NEXT AV2) AV2)
                  (= (NEXT AV3) AV1) (= (NEXT AV1) AV3) (= (NEXT AV8) AV8)
                  (= (NEXT AV7) AV7) (= (NEXT AV6) AV6) (= (NEXT AV5) AV5)
                  (= (NEXT AV4) AV4) (= (NEXT AV3) AV3) (= (NEXT AV2) AV1)
                  (= (NEXT AV1) AV2) (= SI 7) (> AV6 AV8) (= SI 6) (> AV5 AV8)
                  (> AV5 AV7) (= SI 5) (> AV4 AV8) (> AV4 AV7) (> AV4 AV6)
                  (= SI 4) (> AV3 AV8) (> AV3 AV7) (> AV3 AV6) (> AV3 AV5)
                  (= SI 3) (> AV2 AV8) (> AV2 AV7) (> AV2 AV6) (> AV2 AV5)
                  (> AV2 AV4) (= SI 2) (> AV1 AV8) (= SJ 8) (> AV1 AV7)
                  (= SJ 7) (> AV1 AV6) (= SJ 6) (> AV1 AV5) (= SJ 5)
                  (> AV1 AV4) (= SJ 4) (> AV1 AV3) (= SJ 3) (= SJ 2) (= SI 1)
                  (< SI SJ) (> AV7 AV8) (> AV6 AV7) (> AV5 AV6) (> AV4 AV5)
                  (> AV3 AV4) (> AV2 AV3) (> AV1 AV2) (> SJ 0) (> SI 0)
                  (>= SJ 0) (<= SJ 8) (>= SI 0) (<= SI 8) (= (NEXT BV8) BV8)
                  (= (NEXT BV7) BV7) (= (NEXT BV6) BV6) (= (NEXT BV5) BV5)
                  (= (NEXT BV4) BV4) (= (NEXT BV3) BV3) (= (NEXT BV2) BV2)
                  (= (NEXT BV1) BV1) (= AV7 AV8) (= AV6 AV8) (= AV6 AV7)
                  (= AV5 AV8) (= AV5 AV7) (= AV5 AV6) (= AV4 AV8) (= AV4 AV7)
                  (= AV4 AV6) (= AV4 AV5) (= AV3 AV8) (= AV3 AV7) (= AV3 AV6)
                  (= AV3 AV5) (= AV3 AV4) (= AV2 AV8) (= AV2 AV7) (= AV2 AV6)
                  (= AV2 AV5) (= AV2 AV4) (= AV2 AV3) (= AV1 AV8) (= AV1 AV7)
                  (= AV1 AV6) (= AV1 AV5) (= AV1 AV4) (= AV1 AV3) (= AV1 AV2)
                  (= AV8 BV8) (= AV7 BV7) (= AV6 BV6) (= AV5 BV5) (= AV4 BV4)
                  (= AV3 BV3) (= AV2 BV2) (= AV1 BV1) (>= BV8 0) (>= BV7 0)
                  (>= BV6 0) (>= BV5 0) (>= BV4 0) (>= BV3 0) (>= BV2 0)
                  (>= BV1 0) (>= AV8 0) (>= AV7 0) (>= AV6 0) (>= AV5 0)
                  (>= AV4 0) (>= AV3 0) (>= AV2 0) (>= AV1 0))
This is AE2SBVZOT.

1. processing formula
Used boolean propositions: 
((= AV8 BV7) (= AV8 BV6) (= AV8 BV5) (= AV8 BV4) (= AV8 BV3) (= AV8 BV2)
 (= AV8 BV1) (= AV7 BV8) (= AV7 BV6) (= AV7 BV5) (= AV7 BV4) (= AV7 BV3)
 (= AV7 BV2) (= AV7 BV1) (= AV6 BV8) (= AV6 BV7) (= AV6 BV5) (= AV6 BV4)
 (= AV6 BV3) (= AV6 BV2) (= AV6 BV1) (= AV5 BV8) (= AV5 BV7) (= AV5 BV6)
 (= AV5 BV4) (= AV5 BV3) (= AV5 BV2) (= AV5 BV1) (= AV4 BV8) (= AV4 BV7)
 (= AV4 BV6) (= AV4 BV5) (= AV4 BV3) (= AV4 BV2) (= AV4 BV1) (= AV3 BV8)
 (= AV3 BV7) (= AV3 BV6) (= AV3 BV5) (= AV3 BV4) (= AV3 BV2) (= AV3 BV1)
 (= AV2 BV8) (= AV2 BV7) (= AV2 BV6) (= AV2 BV5) (= AV2 BV4) (= AV2 BV3)
 (= AV2 BV1) (= AV1 BV8) (= AV1 BV7) (= AV1 BV6) (= AV1 BV5) (= AV1 BV4)
 (= AV1 BV3) (= AV1 BV2) (<= AV7 AV8) (<= AV6 AV7) (<= AV5 AV6) (<= AV4 AV5)
 (<= AV3 AV4) (<= AV2 AV3) (<= AV1 AV2) (= SI 0) (= (NEXT AV8) AV7)
 (= (NEXT AV7) AV8) (= (NEXT AV8) AV6) (= (NEXT AV6) AV8) (= (NEXT AV7) AV6)
 (= (NEXT AV6) AV7) (= (NEXT AV8) AV5) (= (NEXT AV5) AV8) (= (NEXT AV7) AV5)
 (= (NEXT AV5) AV7) (= (NEXT AV6) AV5) (= (NEXT AV5) AV6) (= (NEXT AV8) AV4)
 (= (NEXT AV4) AV8) (= (NEXT AV7) AV4) (= (NEXT AV4) AV7) (= (NEXT AV6) AV4)
 (= (NEXT AV4) AV6) (= (NEXT AV5) AV4) (= (NEXT AV4) AV5) (= (NEXT AV8) AV3)
 (= (NEXT AV3) AV8) (= (NEXT AV7) AV3) (= (NEXT AV3) AV7) (= (NEXT AV6) AV3)
 (= (NEXT AV3) AV6) (= (NEXT AV5) AV3) (= (NEXT AV3) AV5) (= (NEXT AV4) AV3)
 (= (NEXT AV3) AV4) (= (NEXT AV8) AV2) (= (NEXT AV2) AV8) (= (NEXT AV7) AV2)
 (= (NEXT AV2) AV7) (= (NEXT AV6) AV2) (= (NEXT AV2) AV6) (= (NEXT AV5) AV2)
 (= (NEXT AV2) AV5) (= (NEXT AV4) AV2) (= (NEXT AV2) AV4) (= (NEXT AV1) AV1)
 (= (NEXT AV3) AV2) (= (NEXT AV2) AV3) (= (NEXT AV8) AV1) (= (NEXT AV1) AV8)
 (= (NEXT AV7) AV1) (= (NEXT AV1) AV7) (= (NEXT AV6) AV1) (= (NEXT AV1) AV6)
 (= (NEXT AV5) AV1) (= (NEXT AV1) AV5) (= (NEXT AV4) AV1) (= (NEXT AV1) AV4)
 (= (NEXT AV2) AV2) (= (NEXT AV3) AV1) (= (NEXT AV1) AV3) (= (NEXT AV8) AV8)
 (= (NEXT AV7) AV7) (= (NEXT AV6) AV6) (= (NEXT AV5) AV5) (= (NEXT AV4) AV4)
 (= (NEXT AV3) AV3) (= (NEXT AV2) AV1) (= (NEXT AV1) AV2) (= SI 7) (> AV6 AV8)
 (= SI 6) (> AV5 AV8) (> AV5 AV7) (= SI 5) (> AV4 AV8) (> AV4 AV7) (> AV4 AV6)
 (= SI 4) (> AV3 AV8) (> AV3 AV7) (> AV3 AV6) (> AV3 AV5) (= SI 3) (> AV2 AV8)
 (> AV2 AV7) (> AV2 AV6) (> AV2 AV5) (> AV2 AV4) (= SI 2) (> AV1 AV8) (= SJ 8)
 (> AV1 AV7) (= SJ 7) (> AV1 AV6) (= SJ 6) (> AV1 AV5) (= SJ 5) (> AV1 AV4)
 (= SJ 4) (> AV1 AV3) (= SJ 3) (= SJ 2) (= SI 1) (< SI SJ) (> AV7 AV8)
 (> AV6 AV7) (> AV5 AV6) (> AV4 AV5) (> AV3 AV4) (> AV2 AV3) (> AV1 AV2)
 (> SJ 0) (> SI 0) (>= SJ 0) (<= SJ 8) (>= SI 0) (<= SI 8) (= (NEXT BV8) BV8)
 (= (NEXT BV7) BV7) (= (NEXT BV6) BV6) (= (NEXT BV5) BV5) (= (NEXT BV4) BV4)
 (= (NEXT BV3) BV3) (= (NEXT BV2) BV2) (= (NEXT BV1) BV1) (= AV7 AV8)
 (= AV6 AV8) (= AV6 AV7) (= AV5 AV8) (= AV5 AV7) (= AV5 AV6) (= AV4 AV8)
 (= AV4 AV7) (= AV4 AV6) (= AV4 AV5) (= AV3 AV8) (= AV3 AV7) (= AV3 AV6)
 (= AV3 AV5) (= AV3 AV4) (= AV2 AV8) (= AV2 AV7) (= AV2 AV6) (= AV2 AV5)
 (= AV2 AV4) (= AV2 AV3) (= AV1 AV8) (= AV1 AV7) (= AV1 AV6) (= AV1 AV5)
 (= AV1 AV4) (= AV1 AV3) (= AV1 AV2) (= AV8 BV8) (= AV7 BV7) (= AV6 BV6)
 (= AV5 BV5) (= AV4 BV4) (= AV3 BV3) (= AV2 BV2) (= AV1 BV1) (>= BV8 0)
 (>= BV7 0) (>= BV6 0) (>= BV5 0) (>= BV4 0) (>= BV3 0) (>= BV2 0) (>= BV1 0)
 (>= AV8 0) (>= AV7 0) (>= AV6 0) (>= AV5 0) (>= AV4 0) (>= AV3 0) (>= AV2 0)
 (>= AV1 0))

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(SJ SI BV8 BV7 BV6 BV5 BV4 BV3 BV2 BV1 AV8 AV7 AV6 AV5 AV4 AV3 AV2 AV1)

Graph dependency over terms 
((8 1 SI SI SI SI SI SI 8 SI 2 3 4 5 6 7 8 SI SJ SI SJ SI 0 0 AV1 AV1 AV1 0 AV1
  AV2 AV2 AV1 AV2 0 AV1 AV2 AV3 AV3 AV1 AV2 AV3 0 AV1 AV2 AV3 AV4 AV4 AV1 AV2
  AV3 AV4 0 AV1 AV2 AV3 AV4 AV5 AV5 AV1 AV2 AV3 AV4 AV5 0 AV1 AV2 AV3 AV4 AV5
  AV6 AV6 AV1 AV2 AV3 AV4 AV5 AV6 0 AV1 (NEXT BV1) AV2 AV3 AV4 AV5 AV6 AV7 0
  AV2 (NEXT BV2) AV1 AV3 AV4 AV5 AV6 AV7 0 AV3 (NEXT BV3) AV1 AV2 AV4 AV5 AV6
  AV7 0 AV4 (NEXT BV4) AV1 AV2 AV3 AV5 AV6 AV7 0 AV5 (NEXT BV5) AV1 AV2 AV3 AV4
  AV6 AV7 0 AV6 (NEXT BV6) AV1 AV2 AV3 AV4 AV5 AV7 0 AV7 (NEXT BV7) AV1 AV2 AV3
  AV4 AV5 AV6 0 (NEXT BV8) AV1 AV2 AV3 AV4 AV5 AV6 AV7 AV2 AV3 AV4 AV5 AV6 AV7
  AV1 AV1 AV2 AV3 AV4 AV5 AV6 AV7 AV3 AV1 AV2 AV4 AV5 AV6 AV7 AV4 AV1 AV2 AV3
  AV5 AV6 AV7 AV5 AV1 AV2 AV3 AV4 AV6 AV7 AV6 AV1 AV2 AV3 AV4 AV5 AV7 AV7 AV1
  AV2 AV3 AV4 AV5 AV6 0 BV8 AV1 AV2 AV3 AV4 AV5 AV6 AV7 AV7 AV1 AV2 AV3 AV4 AV5
  AV6 (NEXT AV1) (NEXT AV2) (NEXT AV3) (NEXT AV4) (NEXT AV5) (NEXT AV6)
  (NEXT AV7) AV7 BV1 BV2 BV3 BV4 BV5 BV6 BV7 AV8 AV1 AV2 AV3 AV4 AV5 AV6 AV7
  (NEXT AV8)))

Related variables 
((1 2 3 4 5 6 7 8 SJ SI 0 BV8 BV1 BV2 BV3 BV4 BV5 BV6 BV7 AV1 AV2 AV3 AV4 AV5
  AV6 AV7 AV8))

Time bound: 30

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
  69.923 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  0.01% CPU
  237,737,597,810 processor cycles
  32,768 bytes consed
  
---SAT---
------ time 0 ------
  BV6 = 15
  AV6 = 15
  AV2 = 9
  AV5 = 16
  SJ = 7
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 14
  BV7 = 11
  BV8 = 10
  AV7 = 11
  AV4 = 12
  AV8 = 10
  BV3 = 13
  SI = 6
  AV3 = 13
  BV1 = 14
------ time 1 ------
  BV6 = 15
  AV6 = 11
  AV2 = 9
  AV5 = 16
  SJ = 8
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 14
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 10
  BV3 = 13
  SI = 6
  AV3 = 13
  BV1 = 14
------ time 2 ------
  BV6 = 15
  AV6 = 10
  AV2 = 9
  AV5 = 16
  SJ = 4
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 14
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 11
  BV3 = 13
  SI = 3
  AV3 = 13
  BV1 = 14
------ time 3 ------
  BV6 = 15
  AV6 = 10
  AV2 = 9
  AV5 = 16
  SJ = 6
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 14
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 13
  AV8 = 11
  BV3 = 13
  SI = 4
  AV3 = 12
  BV1 = 14
------ time 4 ------
  BV6 = 15
  AV6 = 13
  AV2 = 9
  AV5 = 16
  SJ = 8
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 14
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 10
  AV8 = 11
  BV3 = 13
  SI = 3
  AV3 = 12
  BV1 = 14
------ time 5 ------
  BV6 = 15
  AV6 = 13
  AV2 = 9
  AV5 = 16
  SJ = 6
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 14
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 10
  AV8 = 12
  BV3 = 13
  SI = 1
  AV3 = 11
  BV1 = 14
------ time 6 ------
  BV6 = 15
  AV6 = 14
  AV2 = 9
  AV5 = 16
  SJ = 6
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 13
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 10
  AV8 = 12
  BV3 = 13
  SI = 5
  AV3 = 11
  BV1 = 14
------ time 7 ------
  BV6 = 15
  AV6 = 16
  AV2 = 9
  AV5 = 14
  SJ = 4
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 13
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 10
  AV8 = 12
  BV3 = 13
  SI = 1
  AV3 = 11
  BV1 = 14
------ time 8 ------
  BV6 = 15
  AV6 = 16
  AV2 = 9
  AV5 = 14
  SJ = 2
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 10
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 13
  AV8 = 12
  BV3 = 13
  SI = 1
  AV3 = 11
  BV1 = 14
------ time 9 ------
  BV6 = 15
  AV6 = 16
  AV2 = 10
  AV5 = 14
  SJ = 8
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 13
  AV8 = 12
  BV3 = 13
  SI = 5
  AV3 = 11
  BV1 = 14
------ time 10 ------
  BV6 = 15
  AV6 = 16
  AV2 = 10
  AV5 = 12
  SJ = 5
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 13
  AV8 = 14
  BV3 = 13
  SI = 4
  AV3 = 11
  BV1 = 14
------ time 11 ------
  BV6 = 15
  AV6 = 16
  AV2 = 10
  AV5 = 13
  SJ = 8
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 14
  BV3 = 13
  SI = 7
  AV3 = 11
  BV1 = 14
------ time 12 ------
  BV6 = 15
  AV6 = 16
  AV2 = 10
  AV5 = 13
  SJ = 7
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 14
  AV4 = 12
  AV8 = 15
  BV3 = 13
  SI = 6
  AV3 = 11
  BV1 = 14
------ time 13 ------
  BV6 = 15
  AV6 = 14
  AV2 = 10
  AV5 = 13
  SJ = 8
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 16
  AV4 = 12
  AV8 = 15
  BV3 = 13
  SI = 7
  AV3 = 11
  BV1 = 14
------ time 14 ------
  BV6 = 15
  AV6 = 14
  AV2 = 10
  AV5 = 13
  SJ = 0
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 16
  BV3 = 13
  SI = 0
  AV3 = 11
  BV1 = 14
------ time 15 ------
  BV6 = 15
  AV6 = 14
  AV2 = 10
  AV5 = 13
  SJ = 0
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 16
  BV3 = 13
  SI = 0
  AV3 = 11
  BV1 = 14
------ time 16 ------
  BV6 = 15
  AV6 = 14
  AV2 = 10
  AV5 = 13
  SJ = 0
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 16
  BV3 = 13
  SI = 0
  AV3 = 11
  BV1 = 14
------ time 17 ------
  BV6 = 15
  AV6 = 14
  AV2 = 10
  AV5 = 13
  SJ = 0
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 16
  BV3 = 13
  SI = 0
  AV3 = 11
  BV1 = 14
------ time 18 ------
**LOOP**
  BV6 = 15
  AV6 = 14
  AV2 = 10
  AV5 = 13
  SJ = 0
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 16
  BV3 = 13
  SI = 0
  AV3 = 11
  BV1 = 14
------ time 19 ------
  BV6 = 15
  AV6 = 14
  AV2 = 10
  AV5 = 13
  SJ = 0
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 16
  BV3 = 13
  SI = 0
  AV3 = 11
  BV1 = 14
------ time 20 ------
  BV6 = 15
  AV6 = 14
  AV2 = 10
  AV5 = 13
  SJ = 0
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 16
  BV3 = 13
  SI = 0
  AV3 = 11
  BV1 = 14
------ time 21 ------
  BV6 = 15
  AV6 = 14
  AV2 = 10
  AV5 = 13
  SJ = 0
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 16
  BV3 = 13
  SI = 0
  AV3 = 11
  BV1 = 14
------ time 22 ------
  BV6 = 15
  AV6 = 14
  AV2 = 10
  AV5 = 13
  SJ = 0
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 16
  BV3 = 13
  SI = 0
  AV3 = 11
  BV1 = 14
------ time 23 ------
  BV6 = 15
  AV6 = 14
  AV2 = 10
  AV5 = 13
  SJ = 0
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 16
  BV3 = 13
  SI = 0
  AV3 = 11
  BV1 = 14
------ time 24 ------
  BV6 = 15
  AV6 = 14
  AV2 = 10
  AV5 = 13
  SJ = 0
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 16
  BV3 = 13
  SI = 0
  AV3 = 11
  BV1 = 14
------ time 25 ------
  BV6 = 15
  AV6 = 14
  AV2 = 10
  AV5 = 13
  SJ = 0
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 16
  BV3 = 13
  SI = 0
  AV3 = 11
  BV1 = 14
------ time 26 ------
  BV6 = 15
  AV6 = 14
  AV2 = 10
  AV5 = 13
  SJ = 0
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 16
  BV3 = 13
  SI = 0
  AV3 = 11
  BV1 = 14
------ time 27 ------
  BV6 = 15
  AV6 = 14
  AV2 = 10
  AV5 = 13
  SJ = 0
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 16
  BV3 = 13
  SI = 0
  AV3 = 11
  BV1 = 14
------ time 28 ------
  BV6 = 15
  AV6 = 14
  AV2 = 10
  AV5 = 13
  SJ = 0
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 16
  BV3 = 13
  SI = 0
  AV3 = 11
  BV1 = 14
------ time 29 ------
  BV6 = 15
  AV6 = 14
  AV2 = 10
  AV5 = 13
  SJ = 0
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 16
  BV3 = 13
  SI = 0
  AV3 = 11
  BV1 = 14
------ time 30 ------
  BV6 = 15
  AV6 = 14
  AV2 = 10
  AV5 = 13
  SJ = 0
  BV5 = 16
  BV2 = 9
  BV4 = 12
  AV1 = 9
  BV7 = 11
  BV8 = 10
  AV7 = 15
  AV4 = 12
  AV8 = 16
  BV3 = 13
  SI = 0
  AV3 = 11
  BV1 = 14
------ end ------
Evaluation took:
  70.182 seconds of real time
  0.264000 seconds of total run time (0.220000 user, 0.044000 system)
  [ Run times consist of 0.076 seconds GC time, and 0.188 seconds non-GC time. ]
  0.38% CPU
  238,618,067,658 processor cycles
  324,001,264 bytes consed
  
