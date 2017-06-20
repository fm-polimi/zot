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
IPC-constraints: ((<= AV7 AV8) (<= AV6 AV7) (<= AV5 AV6) (<= AV4 AV5)
                  (<= AV3 AV4) (<= AV2 AV3) (<= AV1 AV2) (= SI 0)
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
This is AE2BVZOT.

1. processing formula
Used boolean propositions: 
((<= AV7 AV8) (<= AV6 AV7) (<= AV5 AV6) (<= AV4 AV5) (<= AV3 AV4) (<= AV2 AV3)
 (<= AV1 AV2) (= SI 0) (= (NEXT AV8) AV7) (= (NEXT AV7) AV8) (= (NEXT AV8) AV6)
 (= (NEXT AV6) AV8) (= (NEXT AV7) AV6) (= (NEXT AV6) AV7) (= (NEXT AV8) AV5)
 (= (NEXT AV5) AV8) (= (NEXT AV7) AV5) (= (NEXT AV5) AV7) (= (NEXT AV6) AV5)
 (= (NEXT AV5) AV6) (= (NEXT AV8) AV4) (= (NEXT AV4) AV8) (= (NEXT AV7) AV4)
 (= (NEXT AV4) AV7) (= (NEXT AV6) AV4) (= (NEXT AV4) AV6) (= (NEXT AV5) AV4)
 (= (NEXT AV4) AV5) (= (NEXT AV8) AV3) (= (NEXT AV3) AV8) (= (NEXT AV7) AV3)
 (= (NEXT AV3) AV7) (= (NEXT AV6) AV3) (= (NEXT AV3) AV6) (= (NEXT AV5) AV3)
 (= (NEXT AV3) AV5) (= (NEXT AV4) AV3) (= (NEXT AV3) AV4) (= (NEXT AV8) AV2)
 (= (NEXT AV2) AV8) (= (NEXT AV7) AV2) (= (NEXT AV2) AV7) (= (NEXT AV6) AV2)
 (= (NEXT AV2) AV6) (= (NEXT AV5) AV2) (= (NEXT AV2) AV5) (= (NEXT AV4) AV2)
 (= (NEXT AV2) AV4) (= (NEXT AV1) AV1) (= (NEXT AV3) AV2) (= (NEXT AV2) AV3)
 (= (NEXT AV8) AV1) (= (NEXT AV1) AV8) (= (NEXT AV7) AV1) (= (NEXT AV1) AV7)
 (= (NEXT AV6) AV1) (= (NEXT AV1) AV6) (= (NEXT AV5) AV1) (= (NEXT AV1) AV5)
 (= (NEXT AV4) AV1) (= (NEXT AV1) AV4) (= (NEXT AV2) AV2) (= (NEXT AV3) AV1)
 (= (NEXT AV1) AV3) (= (NEXT AV8) AV8) (= (NEXT AV7) AV7) (= (NEXT AV6) AV6)
 (= (NEXT AV5) AV5) (= (NEXT AV4) AV4) (= (NEXT AV3) AV3) (= (NEXT AV2) AV1)
 (= (NEXT AV1) AV2) (= SI 7) (> AV6 AV8) (= SI 6) (> AV5 AV8) (> AV5 AV7)
 (= SI 5) (> AV4 AV8) (> AV4 AV7) (> AV4 AV6) (= SI 4) (> AV3 AV8) (> AV3 AV7)
 (> AV3 AV6) (> AV3 AV5) (= SI 3) (> AV2 AV8) (> AV2 AV7) (> AV2 AV6)
 (> AV2 AV5) (> AV2 AV4) (= SI 2) (> AV1 AV8) (= SJ 8) (> AV1 AV7) (= SJ 7)
 (> AV1 AV6) (= SJ 6) (> AV1 AV5) (= SJ 5) (> AV1 AV4) (= SJ 4) (> AV1 AV3)
 (= SJ 3) (= SJ 2) (= SI 1) (< SI SJ) (> AV7 AV8) (> AV6 AV7) (> AV5 AV6)
 (> AV4 AV5) (> AV3 AV4) (> AV2 AV3) (> AV1 AV2) (> SJ 0) (> SI 0) (>= SJ 0)
 (<= SJ 8) (>= SI 0) (<= SI 8) (= (NEXT BV8) BV8) (= (NEXT BV7) BV7)
 (= (NEXT BV6) BV6) (= (NEXT BV5) BV5) (= (NEXT BV4) BV4) (= (NEXT BV3) BV3)
 (= (NEXT BV2) BV2) (= (NEXT BV1) BV1) (= AV7 AV8) (= AV6 AV8) (= AV6 AV7)
 (= AV5 AV8) (= AV5 AV7) (= AV5 AV6) (= AV4 AV8) (= AV4 AV7) (= AV4 AV6)
 (= AV4 AV5) (= AV3 AV8) (= AV3 AV7) (= AV3 AV6) (= AV3 AV5) (= AV3 AV4)
 (= AV2 AV8) (= AV2 AV7) (= AV2 AV6) (= AV2 AV5) (= AV2 AV4) (= AV2 AV3)
 (= AV1 AV8) (= AV1 AV7) (= AV1 AV6) (= AV1 AV5) (= AV1 AV4) (= AV1 AV3)
 (= AV1 AV2) (= AV8 BV8) (= AV7 BV7) (= AV6 BV6) (= AV5 BV5) (= AV4 BV4)
 (= AV3 BV3) (= AV2 BV2) (= AV1 BV1) (>= BV8 0) (>= BV7 0) (>= BV6 0)
 (>= BV5 0) (>= BV4 0) (>= BV3 0) (>= BV2 0) (>= BV1 0) (>= AV8 0) (>= AV7 0)
 (>= AV6 0) (>= AV5 0) (>= AV4 0) (>= AV3 0) (>= AV2 0) (>= AV1 0))

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(SJ SI BV8 BV7 BV6 BV5 BV4 BV3 BV2 BV1 AV8 AV7 AV6 AV5 AV4 AV3 AV2 AV1)

Graph dependency over terms 
((8 1 SI SI SI SI SI SI 8 SI 2 3 4 5 6 7 8 SI SJ SI SJ SI 0 (NEXT BV1) 0 BV1 0
  (NEXT BV2) 0 BV2 AV1 AV1 AV1 0 (NEXT BV3) 0 BV3 AV1 AV2 AV2 AV1 AV2 0
  (NEXT BV4) 0 BV4 AV1 AV2 AV3 AV3 AV1 AV2 AV3 0 (NEXT BV5) 0 BV5 AV1 AV2 AV3
  AV4 AV4 AV1 AV2 AV3 AV4 0 (NEXT BV6) 0 BV6 AV1 AV2 AV3 AV4 AV5 AV5 AV1 AV2
  AV3 AV4 AV5 0 (NEXT BV7) 0 BV7 AV1 AV2 AV3 AV4 AV5 AV6 AV6 AV1 AV2 AV3 AV4
  AV5 AV6 0 (NEXT BV8) AV2 AV3 AV4 AV5 AV6 AV7 AV1 AV1 AV2 AV3 AV4 AV5 AV6 AV7
  AV3 AV1 AV2 AV4 AV5 AV6 AV7 AV4 AV1 AV2 AV3 AV5 AV6 AV7 AV5 AV1 AV2 AV3 AV4
  AV6 AV7 AV6 AV1 AV2 AV3 AV4 AV5 AV7 AV7 AV1 AV2 AV3 AV4 AV5 AV6 0 BV8 AV1 AV2
  AV3 AV4 AV5 AV6 AV7 AV7 AV1 AV2 AV3 AV4 AV5 AV6 (NEXT AV1) (NEXT AV2)
  (NEXT AV3) (NEXT AV4) (NEXT AV5) (NEXT AV6) (NEXT AV7) AV7 AV8 AV1 AV2 AV3
  AV4 AV5 AV6 AV7 (NEXT AV8)))

Related variables 
((1 2 3 4 5 6 7 8 SJ SI BV1 BV2 BV3 BV4 BV5 BV6 BV7 0 BV8 AV1 AV2 AV3 AV4 AV5
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

no CNF
  0.000 seconds of real time

2. SMT solving: z3...
 
Evaluation took:
  82.099 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  0.00% CPU
  279,134,222,052 processor cycles
  0 bytes consed
  
---SAT---
------ time 0 ------
  AV4 = 4
  AV8 = 1
  AV7 = 10
  BV3 = 9
  SI = 2
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 11
  AV5 = 13
  SJ = 3
  BV5 = 13
  BV2 = 11
  AV1 = 14
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 1 ------
  AV4 = 4
  AV8 = 1
  AV7 = 10
  BV3 = 9
  SI = 3
  AV3 = 11
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 9
  AV5 = 13
  SJ = 4
  BV5 = 13
  BV2 = 11
  AV1 = 14
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 2 ------
  AV4 = 11
  AV8 = 1
  AV7 = 10
  BV3 = 9
  SI = 1
  AV3 = 4
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 9
  AV5 = 13
  SJ = 3
  BV5 = 13
  BV2 = 11
  AV1 = 14
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 3 ------
  AV4 = 11
  AV8 = 1
  AV7 = 10
  BV3 = 9
  SI = 3
  AV3 = 14
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 9
  AV5 = 13
  SJ = 8
  BV5 = 13
  BV2 = 11
  AV1 = 4
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 4 ------
  AV4 = 11
  AV8 = 14
  AV7 = 10
  BV3 = 9
  SI = 1
  AV3 = 1
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 9
  AV5 = 13
  SJ = 3
  BV5 = 13
  BV2 = 11
  AV1 = 4
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 5 ------
  AV4 = 11
  AV8 = 14
  AV7 = 10
  BV3 = 9
  SI = 2
  AV3 = 4
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 9
  AV5 = 13
  SJ = 3
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 6 ------
  AV4 = 11
  AV8 = 14
  AV7 = 10
  BV3 = 9
  SI = 4
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 13
  SJ = 7
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 7 ------
  AV4 = 10
  AV8 = 14
  AV7 = 11
  BV3 = 9
  SI = 5
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 13
  SJ = 6
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 8 ------
  AV4 = 10
  AV8 = 14
  AV7 = 11
  BV3 = 9
  SI = 6
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 13
  AV2 = 4
  AV5 = 12
  SJ = 7
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 9 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 5
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 11
  AV2 = 4
  AV5 = 12
  SJ = 6
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 10 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 11 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 12 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 13 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 14 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 15 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 16 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 17 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 18 ------
**LOOP**
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 19 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 20 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 21 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 22 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 23 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 24 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 25 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 26 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 27 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 28 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 29 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ time 30 ------
  AV4 = 10
  AV8 = 14
  AV7 = 13
  BV3 = 9
  SI = 0
  AV3 = 9
  BV1 = 14
  BV6 = 12
  AV6 = 12
  AV2 = 4
  AV5 = 11
  SJ = 0
  BV5 = 13
  BV2 = 11
  AV1 = 1
  BV7 = 10
  BV8 = 1
  BV4 = 4
------ end ------
Evaluation took:
  82.243 seconds of real time
  0.148000 seconds of total run time (0.132000 user, 0.016000 system)
  [ Run times consist of 0.044 seconds GC time, and 0.104 seconds non-GC time. ]
  0.18% CPU
  279,627,502,961 processor cycles
  168,121,104 bytes consed
  
