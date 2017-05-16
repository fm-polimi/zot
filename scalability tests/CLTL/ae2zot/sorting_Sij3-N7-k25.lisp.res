This is SBCL 1.2.4.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
IPC-terms: ((NEXT AV7) (NEXT AV6) (NEXT AV5) (NEXT AV4) (NEXT AV3) (NEXT AV2)
            (NEXT AV1) 6 5 4 3 2 1 SJ SI 7 (NEXT BV7) (NEXT BV6) (NEXT BV5)
            (NEXT BV4) (NEXT BV3) (NEXT BV2) (NEXT BV1) BV7 BV6 BV5 BV4 BV3 BV2
            BV1 AV7 AV6 AV5 AV4 AV3 AV2 AV1 0)
IPC-constraints: ((> AV7 BV7) (< AV7 BV7) (> AV7 BV6) (< AV7 BV6) (> AV7 BV5)
                  (< AV7 BV5) (> AV7 BV4) (< AV7 BV4) (> AV7 BV3) (< AV7 BV3)
                  (> AV7 BV2) (< AV7 BV2) (> AV7 BV1) (< AV7 BV1) (> AV6 BV7)
                  (< AV6 BV7) (> AV6 BV6) (< AV6 BV6) (> AV6 BV5) (< AV6 BV5)
                  (> AV6 BV4) (< AV6 BV4) (> AV6 BV3) (< AV6 BV3) (> AV6 BV2)
                  (< AV6 BV2) (> AV6 BV1) (< AV6 BV1) (> AV5 BV7) (< AV5 BV7)
                  (> AV5 BV6) (< AV5 BV6) (> AV5 BV5) (< AV5 BV5) (> AV5 BV4)
                  (< AV5 BV4) (> AV5 BV3) (< AV5 BV3) (> AV5 BV2) (< AV5 BV2)
                  (> AV5 BV1) (< AV5 BV1) (> AV4 BV7) (< AV4 BV7) (> AV4 BV6)
                  (< AV4 BV6) (> AV4 BV5) (< AV4 BV5) (> AV4 BV4) (< AV4 BV4)
                  (> AV4 BV3) (< AV4 BV3) (> AV4 BV2) (< AV4 BV2) (> AV4 BV1)
                  (< AV4 BV1) (> AV3 BV7) (< AV3 BV7) (> AV3 BV6) (< AV3 BV6)
                  (> AV3 BV5) (< AV3 BV5) (> AV3 BV4) (< AV3 BV4) (> AV3 BV3)
                  (< AV3 BV3) (> AV3 BV2) (< AV3 BV2) (> AV3 BV1) (< AV3 BV1)
                  (> AV2 BV7) (< AV2 BV7) (> AV2 BV6) (< AV2 BV6) (> AV2 BV5)
                  (< AV2 BV5) (> AV2 BV4) (< AV2 BV4) (> AV2 BV3) (< AV2 BV3)
                  (> AV2 BV2) (< AV2 BV2) (> AV2 BV1) (< AV2 BV1) (> AV1 BV7)
                  (< AV1 BV7) (> AV1 BV6) (< AV1 BV6) (> AV1 BV5) (< AV1 BV5)
                  (> AV1 BV4) (< AV1 BV4) (> AV1 BV3) (< AV1 BV3) (> AV1 BV2)
                  (< AV1 BV2) (> AV1 BV1) (< AV1 BV1) (< SI 0)
                  (= (NEXT AV7) AV6) (= (NEXT AV6) AV7) (= (NEXT AV7) AV5)
                  (= (NEXT AV5) AV7) (= (NEXT AV6) AV5) (= (NEXT AV5) AV6)
                  (= (NEXT AV7) AV4) (= (NEXT AV4) AV7) (= (NEXT AV6) AV4)
                  (= (NEXT AV4) AV6) (= (NEXT AV5) AV4) (= (NEXT AV4) AV5)
                  (= (NEXT AV7) AV3) (= (NEXT AV3) AV7) (= (NEXT AV6) AV3)
                  (= (NEXT AV3) AV6) (= (NEXT AV5) AV3) (= (NEXT AV3) AV5)
                  (= (NEXT AV4) AV3) (= (NEXT AV3) AV4) (= (NEXT AV7) AV2)
                  (= (NEXT AV2) AV7) (= (NEXT AV6) AV2) (= (NEXT AV2) AV6)
                  (= (NEXT AV5) AV2) (= (NEXT AV2) AV5) (= (NEXT AV4) AV2)
                  (= (NEXT AV2) AV4) (= (NEXT AV1) AV1) (= (NEXT AV3) AV2)
                  (= (NEXT AV2) AV3) (= (NEXT AV7) AV1) (= (NEXT AV1) AV7)
                  (= (NEXT AV6) AV1) (= (NEXT AV1) AV6) (= (NEXT AV5) AV1)
                  (= (NEXT AV1) AV5) (= (NEXT AV4) AV1) (= (NEXT AV1) AV4)
                  (= (NEXT AV2) AV2) (= (NEXT AV3) AV1) (= (NEXT AV1) AV3)
                  (= (NEXT AV7) AV7) (= (NEXT AV6) AV6) (= (NEXT AV5) AV5)
                  (= (NEXT AV4) AV4) (= (NEXT AV3) AV3) (= (NEXT AV2) AV1)
                  (= (NEXT AV1) AV2) (> SI 6) (< SI 6) (> SI 5) (< SI 5)
                  (> SI 4) (< SI 4) (> SI 3) (< SI 3) (> SI 2) (< SI 2)
                  (> SJ 7) (< SJ 7) (> SJ 6) (< SJ 6) (> SJ 5) (< SJ 5)
                  (> SJ 4) (< SJ 4) (> SJ 3) (< SJ 3) (> SJ 2) (< SJ 2)
                  (> SI 1) (< SI 1) (< SI SJ) (<= AV6 AV7) (<= AV5 AV6)
                  (<= AV4 AV5) (<= AV3 AV4) (<= AV2 AV3) (<= AV1 AV2) (> SI 0)
                  (<= SJ 0) (> SJ 0) (<= SI 0) (>= SJ 0) (<= SJ 7) (>= SI 0)
                  (<= SI 7) (= (NEXT BV7) BV7) (= (NEXT BV6) BV6)
                  (= (NEXT BV5) BV5) (= (NEXT BV4) BV4) (= (NEXT BV3) BV3)
                  (= (NEXT BV2) BV2) (= (NEXT BV1) BV1) (> AV6 AV7) (< AV6 AV7)
                  (> AV5 AV7) (< AV5 AV7) (> AV5 AV6) (< AV5 AV6) (> AV4 AV7)
                  (< AV4 AV7) (> AV4 AV6) (< AV4 AV6) (> AV4 AV5) (< AV4 AV5)
                  (> AV3 AV7) (< AV3 AV7) (> AV3 AV6) (< AV3 AV6) (> AV3 AV5)
                  (< AV3 AV5) (> AV3 AV4) (< AV3 AV4) (> AV2 AV7) (< AV2 AV7)
                  (> AV2 AV6) (< AV2 AV6) (> AV2 AV5) (< AV2 AV5) (> AV2 AV4)
                  (< AV2 AV4) (> AV2 AV3) (< AV2 AV3) (> AV1 AV7) (< AV1 AV7)
                  (> AV1 AV6) (< AV1 AV6) (> AV1 AV5) (< AV1 AV5) (> AV1 AV4)
                  (< AV1 AV4) (> AV1 AV3) (< AV1 AV3) (> AV1 AV2) (< AV1 AV2)
                  (= AV7 BV7) (= AV6 BV6) (= AV5 BV5) (= AV4 BV4) (= AV3 BV3)
                  (= AV2 BV2) (= AV1 BV1) (>= BV7 0) (>= BV6 0) (>= BV5 0)
                  (>= BV4 0) (>= BV3 0) (>= BV2 0) (>= BV1 0) (>= AV7 0)
                  (>= AV6 0) (>= AV5 0) (>= AV4 0) (>= AV3 0) (>= AV2 0)
                  (>= AV1 0))
This is SMT-Arithmetic-eeZot

1. processing formula
Used boolean propositions: 
((> AV7 BV7) (< AV7 BV7) (> AV7 BV6) (< AV7 BV6) (> AV7 BV5) (< AV7 BV5)
 (> AV7 BV4) (< AV7 BV4) (> AV7 BV3) (< AV7 BV3) (> AV7 BV2) (< AV7 BV2)
 (> AV7 BV1) (< AV7 BV1) (> AV6 BV7) (< AV6 BV7) (> AV6 BV6) (< AV6 BV6)
 (> AV6 BV5) (< AV6 BV5) (> AV6 BV4) (< AV6 BV4) (> AV6 BV3) (< AV6 BV3)
 (> AV6 BV2) (< AV6 BV2) (> AV6 BV1) (< AV6 BV1) (> AV5 BV7) (< AV5 BV7)
 (> AV5 BV6) (< AV5 BV6) (> AV5 BV5) (< AV5 BV5) (> AV5 BV4) (< AV5 BV4)
 (> AV5 BV3) (< AV5 BV3) (> AV5 BV2) (< AV5 BV2) (> AV5 BV1) (< AV5 BV1)
 (> AV4 BV7) (< AV4 BV7) (> AV4 BV6) (< AV4 BV6) (> AV4 BV5) (< AV4 BV5)
 (> AV4 BV4) (< AV4 BV4) (> AV4 BV3) (< AV4 BV3) (> AV4 BV2) (< AV4 BV2)
 (> AV4 BV1) (< AV4 BV1) (> AV3 BV7) (< AV3 BV7) (> AV3 BV6) (< AV3 BV6)
 (> AV3 BV5) (< AV3 BV5) (> AV3 BV4) (< AV3 BV4) (> AV3 BV3) (< AV3 BV3)
 (> AV3 BV2) (< AV3 BV2) (> AV3 BV1) (< AV3 BV1) (> AV2 BV7) (< AV2 BV7)
 (> AV2 BV6) (< AV2 BV6) (> AV2 BV5) (< AV2 BV5) (> AV2 BV4) (< AV2 BV4)
 (> AV2 BV3) (< AV2 BV3) (> AV2 BV2) (< AV2 BV2) (> AV2 BV1) (< AV2 BV1)
 (> AV1 BV7) (< AV1 BV7) (> AV1 BV6) (< AV1 BV6) (> AV1 BV5) (< AV1 BV5)
 (> AV1 BV4) (< AV1 BV4) (> AV1 BV3) (< AV1 BV3) (> AV1 BV2) (< AV1 BV2)
 (> AV1 BV1) (< AV1 BV1) (< SI 0) (= (NEXT AV7) AV6) (= (NEXT AV6) AV7)
 (= (NEXT AV7) AV5) (= (NEXT AV5) AV7) (= (NEXT AV6) AV5) (= (NEXT AV5) AV6)
 (= (NEXT AV7) AV4) (= (NEXT AV4) AV7) (= (NEXT AV6) AV4) (= (NEXT AV4) AV6)
 (= (NEXT AV5) AV4) (= (NEXT AV4) AV5) (= (NEXT AV7) AV3) (= (NEXT AV3) AV7)
 (= (NEXT AV6) AV3) (= (NEXT AV3) AV6) (= (NEXT AV5) AV3) (= (NEXT AV3) AV5)
 (= (NEXT AV4) AV3) (= (NEXT AV3) AV4) (= (NEXT AV7) AV2) (= (NEXT AV2) AV7)
 (= (NEXT AV6) AV2) (= (NEXT AV2) AV6) (= (NEXT AV5) AV2) (= (NEXT AV2) AV5)
 (= (NEXT AV4) AV2) (= (NEXT AV2) AV4) (= (NEXT AV1) AV1) (= (NEXT AV3) AV2)
 (= (NEXT AV2) AV3) (= (NEXT AV7) AV1) (= (NEXT AV1) AV7) (= (NEXT AV6) AV1)
 (= (NEXT AV1) AV6) (= (NEXT AV5) AV1) (= (NEXT AV1) AV5) (= (NEXT AV4) AV1)
 (= (NEXT AV1) AV4) (= (NEXT AV2) AV2) (= (NEXT AV3) AV1) (= (NEXT AV1) AV3)
 (= (NEXT AV7) AV7) (= (NEXT AV6) AV6) (= (NEXT AV5) AV5) (= (NEXT AV4) AV4)
 (= (NEXT AV3) AV3) (= (NEXT AV2) AV1) (= (NEXT AV1) AV2) (> SI 6) (< SI 6)
 (> SI 5) (< SI 5) (> SI 4) (< SI 4) (> SI 3) (< SI 3) (> SI 2) (< SI 2)
 (> SJ 7) (< SJ 7) (> SJ 6) (< SJ 6) (> SJ 5) (< SJ 5) (> SJ 4) (< SJ 4)
 (> SJ 3) (< SJ 3) (> SJ 2) (< SJ 2) (> SI 1) (< SI 1) (< SI SJ) (<= AV6 AV7)
 (<= AV5 AV6) (<= AV4 AV5) (<= AV3 AV4) (<= AV2 AV3) (<= AV1 AV2) (> SI 0)
 (<= SJ 0) (> SJ 0) (<= SI 0) (>= SJ 0) (<= SJ 7) (>= SI 0) (<= SI 7)
 (= (NEXT BV7) BV7) (= (NEXT BV6) BV6) (= (NEXT BV5) BV5) (= (NEXT BV4) BV4)
 (= (NEXT BV3) BV3) (= (NEXT BV2) BV2) (= (NEXT BV1) BV1) (> AV6 AV7)
 (< AV6 AV7) (> AV5 AV7) (< AV5 AV7) (> AV5 AV6) (< AV5 AV6) (> AV4 AV7)
 (< AV4 AV7) (> AV4 AV6) (< AV4 AV6) (> AV4 AV5) (< AV4 AV5) (> AV3 AV7)
 (< AV3 AV7) (> AV3 AV6) (< AV3 AV6) (> AV3 AV5) (< AV3 AV5) (> AV3 AV4)
 (< AV3 AV4) (> AV2 AV7) (< AV2 AV7) (> AV2 AV6) (< AV2 AV6) (> AV2 AV5)
 (< AV2 AV5) (> AV2 AV4) (< AV2 AV4) (> AV2 AV3) (< AV2 AV3) (> AV1 AV7)
 (< AV1 AV7) (> AV1 AV6) (< AV1 AV6) (> AV1 AV5) (< AV1 AV5) (> AV1 AV4)
 (< AV1 AV4) (> AV1 AV3) (< AV1 AV3) (> AV1 AV2) (< AV1 AV2) (= AV7 BV7)
 (= AV6 BV6) (= AV5 BV5) (= AV4 BV4) (= AV3 BV3) (= AV2 BV2) (= AV1 BV1)
 (>= BV7 0) (>= BV6 0) (>= BV5 0) (>= BV4 0) (>= BV3 0) (>= BV2 0) (>= BV1 0)
 (>= AV7 0) (>= AV6 0) (>= AV5 0) (>= AV4 0) (>= AV3 0) (>= AV2 0) (>= AV1 0))

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(SJ SI BV7 BV6 BV5 BV4 BV3 BV2 BV1 AV7 AV6 AV5 AV4 AV3 AV2 AV1)

Graph dependency over terms 
((7 1 1 SI SI SI SI SI SI SI SI SI SI 7 SI 2 2 3 3 4 4 5 5 6 6 7 7 SI SJ SI SJ
  SJ SI SI 0 0 AV1 AV1 AV1 0 AV1 AV1 AV2 AV2 AV2 0 AV1 AV1 AV2 AV2 AV3 AV3 AV3
  0 AV1 AV1 AV2 AV2 AV3 AV3 AV4 AV4 AV4 0 AV1 AV1 AV2 AV2 AV3 AV3 AV4 AV4 AV5
  AV5 AV5 0 AV1 (NEXT BV1) AV1 AV1 AV2 AV2 AV3 AV3 AV4 AV4 AV5 AV5 AV6 AV6 0
  AV2 (NEXT BV2) AV1 AV1 AV2 AV2 AV3 AV3 AV4 AV4 AV5 AV5 AV6 AV6 0 AV3
  (NEXT BV3) AV1 AV1 AV2 AV2 AV3 AV3 AV4 AV4 AV5 AV5 AV6 AV6 0 AV4 (NEXT BV4)
  AV1 AV1 AV2 AV2 AV3 AV3 AV4 AV4 AV5 AV5 AV6 AV6 0 AV5 (NEXT BV5) AV1 AV1 AV2
  AV2 AV3 AV3 AV4 AV4 AV5 AV5 AV6 AV6 0 AV6 (NEXT BV6) AV1 AV1 AV2 AV2 AV3 AV3
  AV4 AV4 AV5 AV5 AV6 AV6 0 (NEXT BV7) AV1 AV1 AV2 AV2 AV3 AV3 AV4 AV4 AV5 AV5
  AV6 AV6 AV2 AV3 AV4 AV5 AV6 AV1 AV1 AV2 AV3 AV4 AV5 AV6 AV3 AV1 AV2 AV4 AV5
  AV6 AV4 AV1 AV2 AV3 AV5 AV6 AV5 AV1 AV2 AV3 AV4 AV6 AV6 AV1 AV2 AV3 AV4 AV5 0
  BV7 AV1 AV1 AV2 AV2 AV3 AV3 AV4 AV4 AV5 AV5 AV6 AV6 AV6 (NEXT AV1) (NEXT AV2)
  (NEXT AV3) (NEXT AV4) (NEXT AV5) (NEXT AV6) BV1 BV1 BV2 BV2 BV3 BV3 BV4 BV4
  BV5 BV5 BV6 BV6 BV7 BV7 AV7 AV1 AV2 AV3 AV4 AV5 AV6 (NEXT AV7)))

Related variables 
((1 2 3 4 5 6 7 SJ SI 0 BV1 BV2 BV3 BV4 BV5 BV6 BV7 AV1 AV2 AV3 AV4 AV5 AV6
  AV7))

Time bound: 25
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
  86.418 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  0.00% CPU
  293,820,295,824 processor cycles
  32,768 bytes consed
  
---SAT---
LOOPEX = TRUE
I_LOOP = 17
------ time 0 ------
BV7 = 15.0
BV6 = 17.0
SI = 3.0
BV2 = 18.0
BV5 = 14.0
SJ = 5.0
AV5 = 14.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 19.0
AV1 = 20.0
AV3 = 16.0
AV7 = 15.0
AV2 = 18.0
AV6 = 17.0
------ time 1 ------
BV7 = 15.0
BV6 = 17.0
SI = 1.0
BV2 = 18.0
BV5 = 14.0
SJ = 2.0
AV5 = 16.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 19.0
AV1 = 20.0
AV3 = 14.0
AV7 = 15.0
AV2 = 18.0
AV6 = 17.0
------ time 2 ------
BV7 = 15.0
BV6 = 17.0
SI = 2.0
BV2 = 18.0
BV5 = 14.0
SJ = 6.0
AV5 = 16.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 19.0
AV1 = 18.0
AV3 = 14.0
AV7 = 15.0
AV2 = 20.0
AV6 = 17.0
------ time 3 ------
BV7 = 15.0
BV6 = 17.0
SI = 1.0
BV2 = 18.0
BV5 = 14.0
SJ = 2.0
AV5 = 16.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 19.0
AV1 = 18.0
AV3 = 14.0
AV7 = 15.0
AV2 = 17.0
AV6 = 20.0
------ time 4 ------
BV7 = 15.0
BV6 = 17.0
SI = 1.0
BV2 = 18.0
BV5 = 14.0
SJ = 5.0
AV5 = 16.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 19.0
AV1 = 17.0
AV3 = 14.0
AV7 = 15.0
AV2 = 18.0
AV6 = 20.0
------ time 5 ------
BV7 = 15.0
BV6 = 17.0
SI = 4.0
BV2 = 18.0
BV5 = 14.0
SJ = 5.0
AV5 = 17.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 19.0
AV1 = 16.0
AV3 = 14.0
AV7 = 15.0
AV2 = 18.0
AV6 = 20.0
------ time 6 ------
BV7 = 15.0
BV6 = 17.0
SI = 2.0
BV2 = 18.0
BV5 = 14.0
SJ = 7.0
AV5 = 19.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 16.0
AV3 = 14.0
AV7 = 15.0
AV2 = 18.0
AV6 = 20.0
------ time 7 ------
BV7 = 15.0
BV6 = 17.0
SI = 1.0
BV2 = 18.0
BV5 = 14.0
SJ = 2.0
AV5 = 19.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 16.0
AV3 = 14.0
AV7 = 18.0
AV2 = 15.0
AV6 = 20.0
------ time 8 ------
BV7 = 15.0
BV6 = 17.0
SI = 2.0
BV2 = 18.0
BV5 = 14.0
SJ = 3.0
AV5 = 19.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 15.0
AV3 = 14.0
AV7 = 18.0
AV2 = 16.0
AV6 = 20.0
------ time 9 ------
BV7 = 15.0
BV6 = 17.0
SI = 1.0
BV2 = 18.0
BV5 = 14.0
SJ = 2.0
AV5 = 19.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 15.0
AV3 = 16.0
AV7 = 18.0
AV2 = 14.0
AV6 = 20.0
------ time 10 ------
BV7 = 15.0
BV6 = 17.0
SI = 5.0
BV2 = 18.0
BV5 = 14.0
SJ = 7.0
AV5 = 19.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 14.0
AV3 = 16.0
AV7 = 18.0
AV2 = 15.0
AV6 = 20.0
------ time 11 ------
BV7 = 15.0
BV6 = 17.0
SI = 6.0
BV2 = 18.0
BV5 = 14.0
SJ = 7.0
AV5 = 18.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 14.0
AV3 = 16.0
AV7 = 19.0
AV2 = 15.0
AV6 = 20.0
------ time 12 ------
BV7 = 15.0
BV6 = 17.0
SI = 0.0
BV2 = 18.0
BV5 = 14.0
SJ = 0.0
AV5 = 18.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 14.0
AV3 = 16.0
AV7 = 20.0
AV2 = 15.0
AV6 = 19.0
------ time 13 ------
BV7 = 15.0
BV6 = 17.0
SI = 0.0
BV2 = 18.0
BV5 = 14.0
SJ = 0.0
AV5 = 18.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 14.0
AV3 = 16.0
AV7 = 20.0
AV2 = 15.0
AV6 = 19.0
------ time 14 ------
BV7 = 15.0
BV6 = 17.0
SI = 0.0
BV2 = 18.0
BV5 = 14.0
SJ = 0.0
AV5 = 18.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 14.0
AV3 = 16.0
AV7 = 20.0
AV2 = 15.0
AV6 = 19.0
------ time 15 ------
BV7 = 15.0
BV6 = 17.0
SI = 0.0
BV2 = 18.0
BV5 = 14.0
SJ = 0.0
AV5 = 18.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 14.0
AV3 = 16.0
AV7 = 20.0
AV2 = 15.0
AV6 = 19.0
------ time 16 ------
BV7 = 15.0
BV6 = 17.0
SI = 0.0
BV2 = 18.0
BV5 = 14.0
SJ = 0.0
AV5 = 18.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 14.0
AV3 = 16.0
AV7 = 20.0
AV2 = 15.0
AV6 = 19.0
------ time 17 ------
  **LOOP**
BV7 = 15.0
BV6 = 17.0
SI = 0.0
BV2 = 18.0
BV5 = 14.0
SJ = 0.0
AV5 = 18.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 14.0
AV3 = 16.0
AV7 = 20.0
AV2 = 15.0
AV6 = 19.0
------ time 18 ------
BV7 = 15.0
BV6 = 17.0
SI = 0.0
BV2 = 18.0
BV5 = 14.0
SJ = 0.0
AV5 = 18.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 14.0
AV3 = 16.0
AV7 = 20.0
AV2 = 15.0
AV6 = 19.0
------ time 19 ------
BV7 = 15.0
BV6 = 17.0
SI = 0.0
BV2 = 18.0
BV5 = 14.0
SJ = 0.0
AV5 = 18.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 14.0
AV3 = 16.0
AV7 = 20.0
AV2 = 15.0
AV6 = 19.0
------ time 20 ------
BV7 = 15.0
BV6 = 17.0
SI = 0.0
BV2 = 18.0
BV5 = 14.0
SJ = 0.0
AV5 = 18.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 14.0
AV3 = 16.0
AV7 = 20.0
AV2 = 15.0
AV6 = 19.0
------ time 21 ------
BV7 = 15.0
BV6 = 17.0
SI = 0.0
BV2 = 18.0
BV5 = 14.0
SJ = 0.0
AV5 = 18.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 14.0
AV3 = 16.0
AV7 = 20.0
AV2 = 15.0
AV6 = 19.0
------ time 22 ------
BV7 = 15.0
BV6 = 17.0
SI = 0.0
BV2 = 18.0
BV5 = 14.0
SJ = 0.0
AV5 = 18.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 14.0
AV3 = 16.0
AV7 = 20.0
AV2 = 15.0
AV6 = 19.0
------ time 23 ------
BV7 = 15.0
BV6 = 17.0
SI = 0.0
BV2 = 18.0
BV5 = 14.0
SJ = 0.0
AV5 = 18.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 14.0
AV3 = 16.0
AV7 = 20.0
AV2 = 15.0
AV6 = 19.0
------ time 24 ------
BV7 = 15.0
BV6 = 17.0
SI = 0.0
BV2 = 18.0
BV5 = 14.0
SJ = 0.0
AV5 = 18.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 14.0
AV3 = 16.0
AV7 = 20.0
AV2 = 15.0
AV6 = 19.0
------ time 25 ------
BV7 = 15.0
BV6 = 17.0
SI = 0.0
BV2 = 18.0
BV5 = 14.0
SJ = 0.0
AV5 = 18.0
BV3 = 16.0
BV4 = 19.0
BV1 = 20.0
AV4 = 17.0
AV1 = 14.0
AV3 = 16.0
AV7 = 20.0
AV2 = 15.0
AV6 = 19.0
------ end ------
Evaluation took:
  86.525 seconds of real time
  0.112000 seconds of total run time (0.104000 user, 0.008000 system)
  0.13% CPU
  294,186,698,253 processor cycles
  15,102,832 bytes consed
  
