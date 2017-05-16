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
IPC-constraints: ((< SI 0) (= (NEXT AV6) AV5) (= (NEXT AV5) AV6)
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
                  (= (NEXT AV1) AV2) (> SI 5) (< SI 5) (> SI 4) (< SI 4)
                  (> SI 3) (< SI 3) (> SI 2) (< SI 2) (> SJ 6) (< SJ 6)
                  (> SJ 5) (< SJ 5) (> SJ 4) (< SJ 4) (> SJ 3) (< SJ 3)
                  (> SJ 2) (< SJ 2) (> SI 1) (< SI 1) (< SI SJ) (<= AV5 AV6)
                  (<= AV4 AV5) (<= AV3 AV4) (<= AV2 AV3) (<= AV1 AV2) (> SI 0)
                  (<= SJ 0) (> SJ 0) (<= SI 0) (>= SJ 0) (<= SJ 6) (>= SI 0)
                  (<= SI 6) (= (NEXT BV6) BV6) (= (NEXT BV5) BV5)
                  (= (NEXT BV4) BV4) (= (NEXT BV3) BV3) (= (NEXT BV2) BV2)
                  (= (NEXT BV1) BV1) (> AV5 AV6) (< AV5 AV6) (> AV4 AV6)
                  (< AV4 AV6) (> AV4 AV5) (< AV4 AV5) (> AV3 AV6) (< AV3 AV6)
                  (> AV3 AV5) (< AV3 AV5) (> AV3 AV4) (< AV3 AV4) (> AV2 AV6)
                  (< AV2 AV6) (> AV2 AV5) (< AV2 AV5) (> AV2 AV4) (< AV2 AV4)
                  (> AV2 AV3) (< AV2 AV3) (> AV1 AV6) (< AV1 AV6) (> AV1 AV5)
                  (< AV1 AV5) (> AV1 AV4) (< AV1 AV4) (> AV1 AV3) (< AV1 AV3)
                  (> AV1 AV2) (< AV1 AV2) (= AV6 BV6) (= AV5 BV5) (= AV4 BV4)
                  (= AV3 BV3) (= AV2 BV2) (= AV1 BV1) (>= BV6 0) (>= BV5 0)
                  (>= BV4 0) (>= BV3 0) (>= BV2 0) (>= BV1 0) (>= AV6 0)
                  (>= AV5 0) (>= AV4 0) (>= AV3 0) (>= AV2 0) (>= AV1 0))
This is SMT-Arithmetic-eeZot

1. processing formula
Used boolean propositions: 
((< SI 0) (= (NEXT AV6) AV5) (= (NEXT AV5) AV6) (= (NEXT AV6) AV4)
 (= (NEXT AV4) AV6) (= (NEXT AV5) AV4) (= (NEXT AV4) AV5) (= (NEXT AV6) AV3)
 (= (NEXT AV3) AV6) (= (NEXT AV5) AV3) (= (NEXT AV3) AV5) (= (NEXT AV4) AV3)
 (= (NEXT AV3) AV4) (= (NEXT AV6) AV2) (= (NEXT AV2) AV6) (= (NEXT AV5) AV2)
 (= (NEXT AV2) AV5) (= (NEXT AV4) AV2) (= (NEXT AV2) AV4) (= (NEXT AV1) AV1)
 (= (NEXT AV3) AV2) (= (NEXT AV2) AV3) (= (NEXT AV6) AV1) (= (NEXT AV1) AV6)
 (= (NEXT AV5) AV1) (= (NEXT AV1) AV5) (= (NEXT AV4) AV1) (= (NEXT AV1) AV4)
 (= (NEXT AV2) AV2) (= (NEXT AV3) AV1) (= (NEXT AV1) AV3) (= (NEXT AV6) AV6)
 (= (NEXT AV5) AV5) (= (NEXT AV4) AV4) (= (NEXT AV3) AV3) (= (NEXT AV2) AV1)
 (= (NEXT AV1) AV2) (> SI 5) (< SI 5) (> SI 4) (< SI 4) (> SI 3) (< SI 3)
 (> SI 2) (< SI 2) (> SJ 6) (< SJ 6) (> SJ 5) (< SJ 5) (> SJ 4) (< SJ 4)
 (> SJ 3) (< SJ 3) (> SJ 2) (< SJ 2) (> SI 1) (< SI 1) (< SI SJ) (<= AV5 AV6)
 (<= AV4 AV5) (<= AV3 AV4) (<= AV2 AV3) (<= AV1 AV2) (> SI 0) (<= SJ 0)
 (> SJ 0) (<= SI 0) (>= SJ 0) (<= SJ 6) (>= SI 0) (<= SI 6) (= (NEXT BV6) BV6)
 (= (NEXT BV5) BV5) (= (NEXT BV4) BV4) (= (NEXT BV3) BV3) (= (NEXT BV2) BV2)
 (= (NEXT BV1) BV1) (> AV5 AV6) (< AV5 AV6) (> AV4 AV6) (< AV4 AV6) (> AV4 AV5)
 (< AV4 AV5) (> AV3 AV6) (< AV3 AV6) (> AV3 AV5) (< AV3 AV5) (> AV3 AV4)
 (< AV3 AV4) (> AV2 AV6) (< AV2 AV6) (> AV2 AV5) (< AV2 AV5) (> AV2 AV4)
 (< AV2 AV4) (> AV2 AV3) (< AV2 AV3) (> AV1 AV6) (< AV1 AV6) (> AV1 AV5)
 (< AV1 AV5) (> AV1 AV4) (< AV1 AV4) (> AV1 AV3) (< AV1 AV3) (> AV1 AV2)
 (< AV1 AV2) (= AV6 BV6) (= AV5 BV5) (= AV4 BV4) (= AV3 BV3) (= AV2 BV2)
 (= AV1 BV1) (>= BV6 0) (>= BV5 0) (>= BV4 0) (>= BV3 0) (>= BV2 0) (>= BV1 0)
 (>= AV6 0) (>= AV5 0) (>= AV4 0) (>= AV3 0) (>= AV2 0) (>= AV1 0))

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(SJ SI BV6 BV5 BV4 BV3 BV2 BV1 AV6 AV5 AV4 AV3 AV2 AV1)

Graph dependency over terms 
((6 1 1 SI SI SI SI SI SI SI SI 6 SI 2 2 3 3 4 4 5 5 6 6 SI SJ SI SJ SJ SI SI 0
  (NEXT BV1) 0 BV1 0 (NEXT BV2) 0 BV2 AV1 AV1 AV1 0 (NEXT BV3) 0 BV3 AV1 AV1
  AV2 AV2 AV2 0 (NEXT BV4) 0 BV4 AV1 AV1 AV2 AV2 AV3 AV3 AV3 0 (NEXT BV5) 0 BV5
  AV1 AV1 AV2 AV2 AV3 AV3 AV4 AV4 AV4 0 (NEXT BV6) AV2 AV3 AV4 AV5 AV1 AV1 AV2
  AV3 AV4 AV5 AV3 AV1 AV2 AV4 AV5 AV4 AV1 AV2 AV3 AV5 AV5 AV1 AV2 AV3 AV4 0 BV6
  AV1 AV1 AV2 AV2 AV3 AV3 AV4 AV4 AV5 AV5 AV5 (NEXT AV1) (NEXT AV2) (NEXT AV3)
  (NEXT AV4) (NEXT AV5) AV6 AV1 AV2 AV3 AV4 AV5 (NEXT AV6)))

Related variables 
((1 2 3 4 5 6 SJ SI BV1 BV2 BV3 BV4 BV5 0 BV6 AV1 AV2 AV3 AV4 AV5 AV6))

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
  17.133 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  0.02% CPU
  58,253,241,394 processor cycles
  0 bytes consed
  
---SAT---
LOOPEX = TRUE
I_LOOP = 21
------ time 0 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 5.0
AV4 = 10.0
AV1 = 14.0
AV3 = 13.0
BV2 = 12.0
AV2 = 12.0
BV5 = 9.0
SJ = 6.0
AV5 = 9.0
AV6 = 8.0
BV3 = 13.0
------ time 1 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 4.0
AV4 = 10.0
AV1 = 14.0
AV3 = 13.0
BV2 = 12.0
AV2 = 12.0
BV5 = 9.0
SJ = 6.0
AV5 = 8.0
AV6 = 9.0
BV3 = 13.0
------ time 2 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 2.0
AV4 = 9.0
AV1 = 14.0
AV3 = 13.0
BV2 = 12.0
AV2 = 12.0
BV5 = 9.0
SJ = 6.0
AV5 = 8.0
AV6 = 10.0
BV3 = 13.0
------ time 3 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 3.0
AV4 = 9.0
AV1 = 14.0
AV3 = 13.0
BV2 = 12.0
AV2 = 10.0
BV5 = 9.0
SJ = 4.0
AV5 = 8.0
AV6 = 12.0
BV3 = 13.0
------ time 4 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 4.0
AV4 = 13.0
AV1 = 14.0
AV3 = 9.0
BV2 = 12.0
AV2 = 10.0
BV5 = 9.0
SJ = 6.0
AV5 = 8.0
AV6 = 12.0
BV3 = 13.0
------ time 5 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 1.0
AV4 = 12.0
AV1 = 14.0
AV3 = 9.0
BV2 = 12.0
AV2 = 10.0
BV5 = 9.0
SJ = 6.0
AV5 = 8.0
AV6 = 13.0
BV3 = 13.0
------ time 6 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 1.0
AV4 = 12.0
AV1 = 13.0
AV3 = 9.0
BV2 = 12.0
AV2 = 10.0
BV5 = 9.0
SJ = 4.0
AV5 = 8.0
AV6 = 14.0
BV3 = 13.0
------ time 7 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 1.0
AV4 = 13.0
AV1 = 12.0
AV3 = 9.0
BV2 = 12.0
AV2 = 10.0
BV5 = 9.0
SJ = 3.0
AV5 = 8.0
AV6 = 14.0
BV3 = 13.0
------ time 8 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 4.0
AV4 = 13.0
AV1 = 9.0
AV3 = 12.0
BV2 = 12.0
AV2 = 10.0
BV5 = 9.0
SJ = 5.0
AV5 = 8.0
AV6 = 14.0
BV3 = 13.0
------ time 9 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 2.0
AV4 = 8.0
AV1 = 9.0
AV3 = 12.0
BV2 = 12.0
AV2 = 10.0
BV5 = 9.0
SJ = 4.0
AV5 = 13.0
AV6 = 14.0
BV3 = 13.0
------ time 10 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 1.0
AV4 = 10.0
AV1 = 9.0
AV3 = 12.0
BV2 = 12.0
AV2 = 8.0
BV5 = 9.0
SJ = 2.0
AV5 = 13.0
AV6 = 14.0
BV3 = 13.0
------ time 11 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 3.0
AV4 = 10.0
AV1 = 8.0
AV3 = 12.0
BV2 = 12.0
AV2 = 9.0
BV5 = 9.0
SJ = 4.0
AV5 = 13.0
AV6 = 14.0
BV3 = 13.0
------ time 12 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 0.0
AV4 = 12.0
AV1 = 8.0
AV3 = 10.0
BV2 = 12.0
AV2 = 9.0
BV5 = 9.0
SJ = 0.0
AV5 = 13.0
AV6 = 14.0
BV3 = 13.0
------ time 13 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 0.0
AV4 = 12.0
AV1 = 8.0
AV3 = 10.0
BV2 = 12.0
AV2 = 9.0
BV5 = 9.0
SJ = 0.0
AV5 = 13.0
AV6 = 14.0
BV3 = 13.0
------ time 14 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 0.0
AV4 = 12.0
AV1 = 8.0
AV3 = 10.0
BV2 = 12.0
AV2 = 9.0
BV5 = 9.0
SJ = 0.0
AV5 = 13.0
AV6 = 14.0
BV3 = 13.0
------ time 15 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 0.0
AV4 = 12.0
AV1 = 8.0
AV3 = 10.0
BV2 = 12.0
AV2 = 9.0
BV5 = 9.0
SJ = 0.0
AV5 = 13.0
AV6 = 14.0
BV3 = 13.0
------ time 16 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 0.0
AV4 = 12.0
AV1 = 8.0
AV3 = 10.0
BV2 = 12.0
AV2 = 9.0
BV5 = 9.0
SJ = 0.0
AV5 = 13.0
AV6 = 14.0
BV3 = 13.0
------ time 17 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 0.0
AV4 = 12.0
AV1 = 8.0
AV3 = 10.0
BV2 = 12.0
AV2 = 9.0
BV5 = 9.0
SJ = 0.0
AV5 = 13.0
AV6 = 14.0
BV3 = 13.0
------ time 18 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 0.0
AV4 = 12.0
AV1 = 8.0
AV3 = 10.0
BV2 = 12.0
AV2 = 9.0
BV5 = 9.0
SJ = 0.0
AV5 = 13.0
AV6 = 14.0
BV3 = 13.0
------ time 19 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 0.0
AV4 = 12.0
AV1 = 8.0
AV3 = 10.0
BV2 = 12.0
AV2 = 9.0
BV5 = 9.0
SJ = 0.0
AV5 = 13.0
AV6 = 14.0
BV3 = 13.0
------ time 20 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 0.0
AV4 = 12.0
AV1 = 8.0
AV3 = 10.0
BV2 = 12.0
AV2 = 9.0
BV5 = 9.0
SJ = 0.0
AV5 = 13.0
AV6 = 14.0
BV3 = 13.0
------ time 21 ------
  **LOOP**
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 0.0
AV4 = 12.0
AV1 = 8.0
AV3 = 10.0
BV2 = 12.0
AV2 = 9.0
BV5 = 9.0
SJ = 0.0
AV5 = 13.0
AV6 = 14.0
BV3 = 13.0
------ time 22 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 0.0
AV4 = 12.0
AV1 = 8.0
AV3 = 10.0
BV2 = 12.0
AV2 = 9.0
BV5 = 9.0
SJ = 0.0
AV5 = 13.0
AV6 = 14.0
BV3 = 13.0
------ time 23 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 0.0
AV4 = 12.0
AV1 = 8.0
AV3 = 10.0
BV2 = 12.0
AV2 = 9.0
BV5 = 9.0
SJ = 0.0
AV5 = 13.0
AV6 = 14.0
BV3 = 13.0
------ time 24 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 0.0
AV4 = 12.0
AV1 = 8.0
AV3 = 10.0
BV2 = 12.0
AV2 = 9.0
BV5 = 9.0
SJ = 0.0
AV5 = 13.0
AV6 = 14.0
BV3 = 13.0
------ time 25 ------
BV4 = 10.0
BV1 = 14.0
BV6 = 8.0
SI = 0.0
AV4 = 12.0
AV1 = 8.0
AV3 = 10.0
BV2 = 12.0
AV2 = 9.0
BV5 = 9.0
SJ = 0.0
AV5 = 13.0
AV6 = 14.0
BV3 = 13.0
------ end ------
Evaluation took:
  17.181 seconds of real time
  0.048000 seconds of total run time (0.040000 user, 0.008000 system)
  0.28% CPU
  58,415,058,431 processor cycles
  8,909,248 bytes consed
  
