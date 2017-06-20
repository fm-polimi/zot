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
IPC-constraints: ((< SI 0) (= (NEXT AV8) AV7) (= (NEXT AV7) AV8)
                  (= (NEXT AV8) AV6) (= (NEXT AV6) AV8) (= (NEXT AV7) AV6)
                  (= (NEXT AV6) AV7) (= (NEXT AV8) AV5) (= (NEXT AV5) AV8)
                  (= (NEXT AV7) AV5) (= (NEXT AV5) AV7) (= (NEXT AV6) AV5)
                  (= (NEXT AV5) AV6) (= (NEXT AV8) AV4) (= (NEXT AV4) AV8)
                  (= (NEXT AV7) AV4) (= (NEXT AV4) AV7) (= (NEXT AV6) AV4)
                  (= (NEXT AV4) AV6) (= (NEXT AV5) AV4) (= (NEXT AV4) AV5)
                  (= (NEXT AV8) AV3) (= (NEXT AV3) AV8) (= (NEXT AV7) AV3)
                  (= (NEXT AV3) AV7) (= (NEXT AV6) AV3) (= (NEXT AV3) AV6)
                  (= (NEXT AV5) AV3) (= (NEXT AV3) AV5) (= (NEXT AV4) AV3)
                  (= (NEXT AV3) AV4) (= (NEXT AV8) AV2) (= (NEXT AV2) AV8)
                  (= (NEXT AV7) AV2) (= (NEXT AV2) AV7) (= (NEXT AV6) AV2)
                  (= (NEXT AV2) AV6) (= (NEXT AV5) AV2) (= (NEXT AV2) AV5)
                  (= (NEXT AV4) AV2) (= (NEXT AV2) AV4) (= (NEXT AV1) AV1)
                  (= (NEXT AV3) AV2) (= (NEXT AV2) AV3) (= (NEXT AV8) AV1)
                  (= (NEXT AV1) AV8) (= (NEXT AV7) AV1) (= (NEXT AV1) AV7)
                  (= (NEXT AV6) AV1) (= (NEXT AV1) AV6) (= (NEXT AV5) AV1)
                  (= (NEXT AV1) AV5) (= (NEXT AV4) AV1) (= (NEXT AV1) AV4)
                  (= (NEXT AV2) AV2) (= (NEXT AV3) AV1) (= (NEXT AV1) AV3)
                  (= (NEXT AV8) AV8) (= (NEXT AV7) AV7) (= (NEXT AV6) AV6)
                  (= (NEXT AV5) AV5) (= (NEXT AV4) AV4) (= (NEXT AV3) AV3)
                  (= (NEXT AV2) AV1) (= (NEXT AV1) AV2) (> SI 7) (< SI 7)
                  (> SI 6) (< SI 6) (> SI 5) (< SI 5) (> SI 4) (< SI 4)
                  (> SI 3) (< SI 3) (> SI 2) (< SI 2) (> SJ 8) (< SJ 8)
                  (> SJ 7) (< SJ 7) (> SJ 6) (< SJ 6) (> SJ 5) (< SJ 5)
                  (> SJ 4) (< SJ 4) (> SJ 3) (< SJ 3) (> SJ 2) (< SJ 2)
                  (> SI 1) (< SI 1) (< SI SJ) (<= AV7 AV8) (<= AV6 AV7)
                  (<= AV5 AV6) (<= AV4 AV5) (<= AV3 AV4) (<= AV2 AV3)
                  (<= AV1 AV2) (> SI 0) (<= SJ 0) (> SJ 0) (<= SI 0) (>= SJ 0)
                  (<= SJ 8) (>= SI 0) (<= SI 8) (= (NEXT BV8) BV8)
                  (= (NEXT BV7) BV7) (= (NEXT BV6) BV6) (= (NEXT BV5) BV5)
                  (= (NEXT BV4) BV4) (= (NEXT BV3) BV3) (= (NEXT BV2) BV2)
                  (= (NEXT BV1) BV1) (> AV7 AV8) (< AV7 AV8) (> AV6 AV8)
                  (< AV6 AV8) (> AV6 AV7) (< AV6 AV7) (> AV5 AV8) (< AV5 AV8)
                  (> AV5 AV7) (< AV5 AV7) (> AV5 AV6) (< AV5 AV6) (> AV4 AV8)
                  (< AV4 AV8) (> AV4 AV7) (< AV4 AV7) (> AV4 AV6) (< AV4 AV6)
                  (> AV4 AV5) (< AV4 AV5) (> AV3 AV8) (< AV3 AV8) (> AV3 AV7)
                  (< AV3 AV7) (> AV3 AV6) (< AV3 AV6) (> AV3 AV5) (< AV3 AV5)
                  (> AV3 AV4) (< AV3 AV4) (> AV2 AV8) (< AV2 AV8) (> AV2 AV7)
                  (< AV2 AV7) (> AV2 AV6) (< AV2 AV6) (> AV2 AV5) (< AV2 AV5)
                  (> AV2 AV4) (< AV2 AV4) (> AV2 AV3) (< AV2 AV3) (> AV1 AV8)
                  (< AV1 AV8) (> AV1 AV7) (< AV1 AV7) (> AV1 AV6) (< AV1 AV6)
                  (> AV1 AV5) (< AV1 AV5) (> AV1 AV4) (< AV1 AV4) (> AV1 AV3)
                  (< AV1 AV3) (> AV1 AV2) (< AV1 AV2) (= AV8 BV8) (= AV7 BV7)
                  (= AV6 BV6) (= AV5 BV5) (= AV4 BV4) (= AV3 BV3) (= AV2 BV2)
                  (= AV1 BV1) (>= BV8 0) (>= BV7 0) (>= BV6 0) (>= BV5 0)
                  (>= BV4 0) (>= BV3 0) (>= BV2 0) (>= BV1 0) (>= AV8 0)
                  (>= AV7 0) (>= AV6 0) (>= AV5 0) (>= AV4 0) (>= AV3 0)
                  (>= AV2 0) (>= AV1 0))
This is SMT-Arithmetic-eeZot

1. processing formula
Used boolean propositions: 
((< SI 0) (= (NEXT AV8) AV7) (= (NEXT AV7) AV8) (= (NEXT AV8) AV6)
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
 (= (NEXT AV1) AV2) (> SI 7) (< SI 7) (> SI 6) (< SI 6) (> SI 5) (< SI 5)
 (> SI 4) (< SI 4) (> SI 3) (< SI 3) (> SI 2) (< SI 2) (> SJ 8) (< SJ 8)
 (> SJ 7) (< SJ 7) (> SJ 6) (< SJ 6) (> SJ 5) (< SJ 5) (> SJ 4) (< SJ 4)
 (> SJ 3) (< SJ 3) (> SJ 2) (< SJ 2) (> SI 1) (< SI 1) (< SI SJ) (<= AV7 AV8)
 (<= AV6 AV7) (<= AV5 AV6) (<= AV4 AV5) (<= AV3 AV4) (<= AV2 AV3) (<= AV1 AV2)
 (> SI 0) (<= SJ 0) (> SJ 0) (<= SI 0) (>= SJ 0) (<= SJ 8) (>= SI 0) (<= SI 8)
 (= (NEXT BV8) BV8) (= (NEXT BV7) BV7) (= (NEXT BV6) BV6) (= (NEXT BV5) BV5)
 (= (NEXT BV4) BV4) (= (NEXT BV3) BV3) (= (NEXT BV2) BV2) (= (NEXT BV1) BV1)
 (> AV7 AV8) (< AV7 AV8) (> AV6 AV8) (< AV6 AV8) (> AV6 AV7) (< AV6 AV7)
 (> AV5 AV8) (< AV5 AV8) (> AV5 AV7) (< AV5 AV7) (> AV5 AV6) (< AV5 AV6)
 (> AV4 AV8) (< AV4 AV8) (> AV4 AV7) (< AV4 AV7) (> AV4 AV6) (< AV4 AV6)
 (> AV4 AV5) (< AV4 AV5) (> AV3 AV8) (< AV3 AV8) (> AV3 AV7) (< AV3 AV7)
 (> AV3 AV6) (< AV3 AV6) (> AV3 AV5) (< AV3 AV5) (> AV3 AV4) (< AV3 AV4)
 (> AV2 AV8) (< AV2 AV8) (> AV2 AV7) (< AV2 AV7) (> AV2 AV6) (< AV2 AV6)
 (> AV2 AV5) (< AV2 AV5) (> AV2 AV4) (< AV2 AV4) (> AV2 AV3) (< AV2 AV3)
 (> AV1 AV8) (< AV1 AV8) (> AV1 AV7) (< AV1 AV7) (> AV1 AV6) (< AV1 AV6)
 (> AV1 AV5) (< AV1 AV5) (> AV1 AV4) (< AV1 AV4) (> AV1 AV3) (< AV1 AV3)
 (> AV1 AV2) (< AV1 AV2) (= AV8 BV8) (= AV7 BV7) (= AV6 BV6) (= AV5 BV5)
 (= AV4 BV4) (= AV3 BV3) (= AV2 BV2) (= AV1 BV1) (>= BV8 0) (>= BV7 0)
 (>= BV6 0) (>= BV5 0) (>= BV4 0) (>= BV3 0) (>= BV2 0) (>= BV1 0) (>= AV8 0)
 (>= AV7 0) (>= AV6 0) (>= AV5 0) (>= AV4 0) (>= AV3 0) (>= AV2 0) (>= AV1 0))

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(SJ SI BV8 BV7 BV6 BV5 BV4 BV3 BV2 BV1 AV8 AV7 AV6 AV5 AV4 AV3 AV2 AV1)

Graph dependency over terms 
((8 1 1 SI SI SI SI SI SI SI SI SI SI SI SI 8 SI 2 2 3 3 4 4 5 5 6 6 7 7 8 8 SI
  SJ SI SJ SJ SI SI 0 (NEXT BV1) 0 BV1 0 (NEXT BV2) 0 BV2 AV1 AV1 AV1 0
  (NEXT BV3) 0 BV3 AV1 AV1 AV2 AV2 AV2 0 (NEXT BV4) 0 BV4 AV1 AV1 AV2 AV2 AV3
  AV3 AV3 0 (NEXT BV5) 0 BV5 AV1 AV1 AV2 AV2 AV3 AV3 AV4 AV4 AV4 0 (NEXT BV6) 0
  BV6 AV1 AV1 AV2 AV2 AV3 AV3 AV4 AV4 AV5 AV5 AV5 0 (NEXT BV7) 0 BV7 AV1 AV1
  AV2 AV2 AV3 AV3 AV4 AV4 AV5 AV5 AV6 AV6 AV6 0 (NEXT BV8) AV2 AV3 AV4 AV5 AV6
  AV7 AV1 AV1 AV2 AV3 AV4 AV5 AV6 AV7 AV3 AV1 AV2 AV4 AV5 AV6 AV7 AV4 AV1 AV2
  AV3 AV5 AV6 AV7 AV5 AV1 AV2 AV3 AV4 AV6 AV7 AV6 AV1 AV2 AV3 AV4 AV5 AV7 AV7
  AV1 AV2 AV3 AV4 AV5 AV6 0 BV8 AV1 AV1 AV2 AV2 AV3 AV3 AV4 AV4 AV5 AV5 AV6 AV6
  AV7 AV7 AV7 (NEXT AV1) (NEXT AV2) (NEXT AV3) (NEXT AV4) (NEXT AV5) (NEXT AV6)
  (NEXT AV7) AV8 AV1 AV2 AV3 AV4 AV5 AV6 AV7 (NEXT AV8)))

Related variables 
((1 2 3 4 5 6 7 8 SJ SI BV1 BV2 BV3 BV4 BV5 BV6 BV7 0 BV8 AV1 AV2 AV3 AV4 AV5
  AV6 AV7 AV8))

Time bound: 30
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
  92.014 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  0.00% CPU
  312,848,905,467 processor cycles
  32,768 bytes consed
  
---SAT---
LOOPEX = TRUE
I_LOOP = 23
------ time 0 ------
BV7 = 11.0
BV6 = 13.0
SI = 4.0
BV2 = 15.0
BV5 = 16.0
SJ = 5.0
BV8 = 9.0
AV5 = 16.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 17.0
AV1 = 12.0
AV3 = 14.0
AV8 = 9.0
AV7 = 11.0
AV2 = 15.0
AV6 = 13.0
------ time 1 ------
BV7 = 11.0
BV6 = 13.0
SI = 4.0
BV2 = 15.0
BV5 = 16.0
SJ = 6.0
BV8 = 9.0
AV5 = 17.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 16.0
AV1 = 12.0
AV3 = 14.0
AV8 = 9.0
AV7 = 11.0
AV2 = 15.0
AV6 = 13.0
------ time 2 ------
BV7 = 11.0
BV6 = 13.0
SI = 5.0
BV2 = 15.0
BV5 = 16.0
SJ = 6.0
BV8 = 9.0
AV5 = 17.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 12.0
AV3 = 14.0
AV8 = 9.0
AV7 = 11.0
AV2 = 15.0
AV6 = 16.0
------ time 3 ------
BV7 = 11.0
BV6 = 13.0
SI = 6.0
BV2 = 15.0
BV5 = 16.0
SJ = 7.0
BV8 = 9.0
AV5 = 16.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 12.0
AV3 = 14.0
AV8 = 9.0
AV7 = 11.0
AV2 = 15.0
AV6 = 17.0
------ time 4 ------
BV7 = 11.0
BV6 = 13.0
SI = 2.0
BV2 = 15.0
BV5 = 16.0
SJ = 6.0
BV8 = 9.0
AV5 = 16.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 12.0
AV3 = 14.0
AV8 = 9.0
AV7 = 17.0
AV2 = 15.0
AV6 = 11.0
------ time 5 ------
BV7 = 11.0
BV6 = 13.0
SI = 5.0
BV2 = 15.0
BV5 = 16.0
SJ = 6.0
BV8 = 9.0
AV5 = 16.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 12.0
AV3 = 14.0
AV8 = 9.0
AV7 = 17.0
AV2 = 11.0
AV6 = 15.0
------ time 6 ------
BV7 = 11.0
BV6 = 13.0
SI = 1.0
BV2 = 15.0
BV5 = 16.0
SJ = 2.0
BV8 = 9.0
AV5 = 15.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 12.0
AV3 = 14.0
AV8 = 9.0
AV7 = 17.0
AV2 = 11.0
AV6 = 16.0
------ time 7 ------
BV7 = 11.0
BV6 = 13.0
SI = 4.0
BV2 = 15.0
BV5 = 16.0
SJ = 8.0
BV8 = 9.0
AV5 = 15.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 11.0
AV3 = 14.0
AV8 = 9.0
AV7 = 17.0
AV2 = 12.0
AV6 = 16.0
------ time 8 ------
BV7 = 11.0
BV6 = 13.0
SI = 6.0
BV2 = 15.0
BV5 = 16.0
SJ = 8.0
BV8 = 9.0
AV5 = 15.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 9.0
AV1 = 11.0
AV3 = 14.0
AV8 = 13.0
AV7 = 17.0
AV2 = 12.0
AV6 = 16.0
------ time 9 ------
BV7 = 11.0
BV6 = 13.0
SI = 7.0
BV2 = 15.0
BV5 = 16.0
SJ = 8.0
BV8 = 9.0
AV5 = 15.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 9.0
AV1 = 11.0
AV3 = 14.0
AV8 = 16.0
AV7 = 17.0
AV2 = 12.0
AV6 = 13.0
------ time 10 ------
BV7 = 11.0
BV6 = 13.0
SI = 1.0
BV2 = 15.0
BV5 = 16.0
SJ = 4.0
BV8 = 9.0
AV5 = 15.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 9.0
AV1 = 11.0
AV3 = 14.0
AV8 = 17.0
AV7 = 16.0
AV2 = 12.0
AV6 = 13.0
------ time 11 ------
BV7 = 11.0
BV6 = 13.0
SI = 5.0
BV2 = 15.0
BV5 = 16.0
SJ = 6.0
BV8 = 9.0
AV5 = 15.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 11.0
AV1 = 9.0
AV3 = 14.0
AV8 = 17.0
AV7 = 16.0
AV2 = 12.0
AV6 = 13.0
------ time 12 ------
BV7 = 11.0
BV6 = 13.0
SI = 2.0
BV2 = 15.0
BV5 = 16.0
SJ = 4.0
BV8 = 9.0
AV5 = 13.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 11.0
AV1 = 9.0
AV3 = 14.0
AV8 = 17.0
AV7 = 16.0
AV2 = 12.0
AV6 = 15.0
------ time 13 ------
BV7 = 11.0
BV6 = 13.0
SI = 3.0
BV2 = 15.0
BV5 = 16.0
SJ = 5.0
BV8 = 9.0
AV5 = 13.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 12.0
AV1 = 9.0
AV3 = 14.0
AV8 = 17.0
AV7 = 16.0
AV2 = 11.0
AV6 = 15.0
------ time 14 ------
BV7 = 11.0
BV6 = 13.0
SI = 3.0
BV2 = 15.0
BV5 = 16.0
SJ = 4.0
BV8 = 9.0
AV5 = 14.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 12.0
AV1 = 9.0
AV3 = 13.0
AV8 = 17.0
AV7 = 16.0
AV2 = 11.0
AV6 = 15.0
------ time 15 ------
BV7 = 11.0
BV6 = 13.0
SI = 0.0
BV2 = 15.0
BV5 = 16.0
SJ = 0.0
BV8 = 9.0
AV5 = 14.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 9.0
AV3 = 12.0
AV8 = 17.0
AV7 = 16.0
AV2 = 11.0
AV6 = 15.0
------ time 16 ------
BV7 = 11.0
BV6 = 13.0
SI = 0.0
BV2 = 15.0
BV5 = 16.0
SJ = 0.0
BV8 = 9.0
AV5 = 14.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 9.0
AV3 = 12.0
AV8 = 17.0
AV7 = 16.0
AV2 = 11.0
AV6 = 15.0
------ time 17 ------
BV7 = 11.0
BV6 = 13.0
SI = 0.0
BV2 = 15.0
BV5 = 16.0
SJ = 0.0
BV8 = 9.0
AV5 = 14.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 9.0
AV3 = 12.0
AV8 = 17.0
AV7 = 16.0
AV2 = 11.0
AV6 = 15.0
------ time 18 ------
BV7 = 11.0
BV6 = 13.0
SI = 0.0
BV2 = 15.0
BV5 = 16.0
SJ = 0.0
BV8 = 9.0
AV5 = 14.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 9.0
AV3 = 12.0
AV8 = 17.0
AV7 = 16.0
AV2 = 11.0
AV6 = 15.0
------ time 19 ------
BV7 = 11.0
BV6 = 13.0
SI = 0.0
BV2 = 15.0
BV5 = 16.0
SJ = 0.0
BV8 = 9.0
AV5 = 14.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 9.0
AV3 = 12.0
AV8 = 17.0
AV7 = 16.0
AV2 = 11.0
AV6 = 15.0
------ time 20 ------
BV7 = 11.0
BV6 = 13.0
SI = 0.0
BV2 = 15.0
BV5 = 16.0
SJ = 0.0
BV8 = 9.0
AV5 = 14.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 9.0
AV3 = 12.0
AV8 = 17.0
AV7 = 16.0
AV2 = 11.0
AV6 = 15.0
------ time 21 ------
BV7 = 11.0
BV6 = 13.0
SI = 0.0
BV2 = 15.0
BV5 = 16.0
SJ = 0.0
BV8 = 9.0
AV5 = 14.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 9.0
AV3 = 12.0
AV8 = 17.0
AV7 = 16.0
AV2 = 11.0
AV6 = 15.0
------ time 22 ------
BV7 = 11.0
BV6 = 13.0
SI = 0.0
BV2 = 15.0
BV5 = 16.0
SJ = 0.0
BV8 = 9.0
AV5 = 14.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 9.0
AV3 = 12.0
AV8 = 17.0
AV7 = 16.0
AV2 = 11.0
AV6 = 15.0
------ time 23 ------
  **LOOP**
BV7 = 11.0
BV6 = 13.0
SI = 0.0
BV2 = 15.0
BV5 = 16.0
SJ = 0.0
BV8 = 9.0
AV5 = 14.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 9.0
AV3 = 12.0
AV8 = 17.0
AV7 = 16.0
AV2 = 11.0
AV6 = 15.0
------ time 24 ------
BV7 = 11.0
BV6 = 13.0
SI = 0.0
BV2 = 15.0
BV5 = 16.0
SJ = 0.0
BV8 = 9.0
AV5 = 14.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 9.0
AV3 = 12.0
AV8 = 17.0
AV7 = 16.0
AV2 = 11.0
AV6 = 15.0
------ time 25 ------
BV7 = 11.0
BV6 = 13.0
SI = 0.0
BV2 = 15.0
BV5 = 16.0
SJ = 0.0
BV8 = 9.0
AV5 = 14.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 9.0
AV3 = 12.0
AV8 = 17.0
AV7 = 16.0
AV2 = 11.0
AV6 = 15.0
------ time 26 ------
BV7 = 11.0
BV6 = 13.0
SI = 0.0
BV2 = 15.0
BV5 = 16.0
SJ = 0.0
BV8 = 9.0
AV5 = 14.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 9.0
AV3 = 12.0
AV8 = 17.0
AV7 = 16.0
AV2 = 11.0
AV6 = 15.0
------ time 27 ------
BV7 = 11.0
BV6 = 13.0
SI = 0.0
BV2 = 15.0
BV5 = 16.0
SJ = 0.0
BV8 = 9.0
AV5 = 14.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 9.0
AV3 = 12.0
AV8 = 17.0
AV7 = 16.0
AV2 = 11.0
AV6 = 15.0
------ time 28 ------
BV7 = 11.0
BV6 = 13.0
SI = 0.0
BV2 = 15.0
BV5 = 16.0
SJ = 0.0
BV8 = 9.0
AV5 = 14.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 9.0
AV3 = 12.0
AV8 = 17.0
AV7 = 16.0
AV2 = 11.0
AV6 = 15.0
------ time 29 ------
BV7 = 11.0
BV6 = 13.0
SI = 0.0
BV2 = 15.0
BV5 = 16.0
SJ = 0.0
BV8 = 9.0
AV5 = 14.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 9.0
AV3 = 12.0
AV8 = 17.0
AV7 = 16.0
AV2 = 11.0
AV6 = 15.0
------ time 30 ------
BV7 = 11.0
BV6 = 13.0
SI = 0.0
BV2 = 15.0
BV5 = 16.0
SJ = 0.0
BV8 = 9.0
AV5 = 14.0
BV3 = 14.0
BV4 = 17.0
BV1 = 12.0
AV4 = 13.0
AV1 = 9.0
AV3 = 12.0
AV8 = 17.0
AV7 = 16.0
AV2 = 11.0
AV6 = 15.0
------ end ------
Evaluation took:
  92.106 seconds of real time
  0.096000 seconds of total run time (0.092000 user, 0.004000 system)
  0.10% CPU
  313,158,846,921 processor cycles
  16,151,120 bytes consed
  
