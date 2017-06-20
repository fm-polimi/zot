This is SBCL 1.2.4.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
IPC-terms: ((NEXT AV5) (NEXT AV4) (NEXT AV3) (NEXT AV2) (NEXT AV1) 4 3 2 1 S 5
            (NEXT BV5) (NEXT BV4) (NEXT BV3) (NEXT BV2) (NEXT BV1) BV5 BV4 BV3
            BV2 BV1 AV5 AV4 AV3 AV2 AV1 0)
IPC-constraints: ((> AV5 BV5) (< AV5 BV5) (> AV5 BV4) (< AV5 BV4) (> AV5 BV3)
                  (< AV5 BV3) (> AV5 BV2) (< AV5 BV2) (> AV5 BV1) (< AV5 BV1)
                  (> AV4 BV5) (< AV4 BV5) (> AV4 BV4) (< AV4 BV4) (> AV4 BV3)
                  (< AV4 BV3) (> AV4 BV2) (< AV4 BV2) (> AV4 BV1) (< AV4 BV1)
                  (> AV3 BV5) (< AV3 BV5) (> AV3 BV4) (< AV3 BV4) (> AV3 BV3)
                  (< AV3 BV3) (> AV3 BV2) (< AV3 BV2) (> AV3 BV1) (< AV3 BV1)
                  (> AV2 BV5) (< AV2 BV5) (> AV2 BV4) (< AV2 BV4) (> AV2 BV3)
                  (< AV2 BV3) (> AV2 BV2) (< AV2 BV2) (> AV2 BV1) (< AV2 BV1)
                  (> AV1 BV5) (< AV1 BV5) (> AV1 BV4) (< AV1 BV4) (> AV1 BV3)
                  (< AV1 BV3) (> AV1 BV2) (< AV1 BV2) (> AV1 BV1) (< AV1 BV1)
                  (< S 0) (= (NEXT AV5) AV4) (= (NEXT AV4) AV5)
                  (= (NEXT AV2) AV2) (= (NEXT AV4) AV3) (= (NEXT AV3) AV4)
                  (= (NEXT AV1) AV1) (= (NEXT AV3) AV2) (= (NEXT AV2) AV3)
                  (= (NEXT AV5) AV5) (= (NEXT AV4) AV4) (= (NEXT AV3) AV3)
                  (= (NEXT AV2) AV1) (= (NEXT AV1) AV2) (> S 0) (<= AV4 AV5)
                  (<= AV3 AV4) (<= AV2 AV3) (<= AV1 AV2) (> S 4) (< S 4)
                  (> S 3) (< S 3) (> S 2) (< S 2) (> S 1) (< S 1) (>= S 0)
                  (< S 5) (= (NEXT BV5) BV5) (= (NEXT BV4) BV4)
                  (= (NEXT BV3) BV3) (= (NEXT BV2) BV2) (= (NEXT BV1) BV1)
                  (> AV4 AV5) (< AV4 AV5) (> AV3 AV5) (< AV3 AV5) (> AV3 AV4)
                  (< AV3 AV4) (> AV2 AV5) (< AV2 AV5) (> AV2 AV4) (< AV2 AV4)
                  (> AV2 AV3) (< AV2 AV3) (> AV1 AV5) (< AV1 AV5) (> AV1 AV4)
                  (< AV1 AV4) (> AV1 AV3) (< AV1 AV3) (> AV1 AV2) (< AV1 AV2)
                  (= AV5 BV5) (= AV4 BV4) (= AV3 BV3) (= AV2 BV2) (= AV1 BV1)
                  (>= BV5 0) (>= BV4 0) (>= BV3 0) (>= BV2 0) (>= BV1 0)
                  (>= AV5 0) (>= AV4 0) (>= AV3 0) (>= AV2 0) (>= AV1 0))
This is SMT-Arithmetic-eeZot

1. processing formula
Used boolean propositions: 
((> AV5 BV5) (< AV5 BV5) (> AV5 BV4) (< AV5 BV4) (> AV5 BV3) (< AV5 BV3)
 (> AV5 BV2) (< AV5 BV2) (> AV5 BV1) (< AV5 BV1) (> AV4 BV5) (< AV4 BV5)
 (> AV4 BV4) (< AV4 BV4) (> AV4 BV3) (< AV4 BV3) (> AV4 BV2) (< AV4 BV2)
 (> AV4 BV1) (< AV4 BV1) (> AV3 BV5) (< AV3 BV5) (> AV3 BV4) (< AV3 BV4)
 (> AV3 BV3) (< AV3 BV3) (> AV3 BV2) (< AV3 BV2) (> AV3 BV1) (< AV3 BV1)
 (> AV2 BV5) (< AV2 BV5) (> AV2 BV4) (< AV2 BV4) (> AV2 BV3) (< AV2 BV3)
 (> AV2 BV2) (< AV2 BV2) (> AV2 BV1) (< AV2 BV1) (> AV1 BV5) (< AV1 BV5)
 (> AV1 BV4) (< AV1 BV4) (> AV1 BV3) (< AV1 BV3) (> AV1 BV2) (< AV1 BV2)
 (> AV1 BV1) (< AV1 BV1) (< S 0) (= (NEXT AV5) AV4) (= (NEXT AV4) AV5)
 (= (NEXT AV2) AV2) (= (NEXT AV4) AV3) (= (NEXT AV3) AV4) (= (NEXT AV1) AV1)
 (= (NEXT AV3) AV2) (= (NEXT AV2) AV3) (= (NEXT AV5) AV5) (= (NEXT AV4) AV4)
 (= (NEXT AV3) AV3) (= (NEXT AV2) AV1) (= (NEXT AV1) AV2) (> S 0) (<= AV4 AV5)
 (<= AV3 AV4) (<= AV2 AV3) (<= AV1 AV2) (> S 4) (< S 4) (> S 3) (< S 3) (> S 2)
 (< S 2) (> S 1) (< S 1) (>= S 0) (< S 5) (= (NEXT BV5) BV5) (= (NEXT BV4) BV4)
 (= (NEXT BV3) BV3) (= (NEXT BV2) BV2) (= (NEXT BV1) BV1) (> AV4 AV5)
 (< AV4 AV5) (> AV3 AV5) (< AV3 AV5) (> AV3 AV4) (< AV3 AV4) (> AV2 AV5)
 (< AV2 AV5) (> AV2 AV4) (< AV2 AV4) (> AV2 AV3) (< AV2 AV3) (> AV1 AV5)
 (< AV1 AV5) (> AV1 AV4) (< AV1 AV4) (> AV1 AV3) (< AV1 AV3) (> AV1 AV2)
 (< AV1 AV2) (= AV5 BV5) (= AV4 BV4) (= AV3 BV3) (= AV2 BV2) (= AV1 BV1)
 (>= BV5 0) (>= BV4 0) (>= BV3 0) (>= BV2 0) (>= BV1 0) (>= AV5 0) (>= AV4 0)
 (>= AV3 0) (>= AV2 0) (>= AV1 0))

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(S BV5 BV4 BV3 BV2 BV1 AV5 AV4 AV3 AV2 AV1)

Graph dependency over terms 
((5 1 1 2 2 3 3 4 4 S S S 0 AV1 0 AV1 AV1 AV1 (NEXT AV1) AV1 AV2 0 AV1 AV1 AV2
  AV2 AV2 (NEXT AV2) AV3 AV2 0 AV1 AV1 AV2 AV2 AV3 AV3 AV3 (NEXT AV3) 0 AV1
  (NEXT BV1) AV1 AV1 AV2 AV2 AV3 AV3 AV4 AV4 0 AV2 (NEXT BV2) AV1 AV1 AV2 AV2
  AV3 AV3 AV4 AV4 0 AV3 (NEXT BV3) AV1 AV1 AV2 AV2 AV3 AV3 AV4 AV4 0 AV4
  (NEXT BV4) AV1 AV1 AV2 AV2 AV3 AV3 AV4 AV4 0 (NEXT BV5) AV1 AV1 AV2 AV2 AV3
  AV3 AV4 AV4 AV4 AV3 0 BV5 AV1 AV1 AV2 AV2 AV3 AV3 AV4 AV4 AV4 (NEXT AV4) BV1
  BV1 BV2 BV2 BV3 BV3 BV4 BV4 BV5 BV5 AV5 AV4 (NEXT AV5)))

Related variables 
((5 1 2 3 4 S 0 AV1 AV2 AV3 BV1 BV2 BV3 BV4 BV5 AV4 AV5))

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
  3.753 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  12,760,070,168 processor cycles
  0 bytes consed
  
---SAT---
LOOPEX = TRUE
I_LOOP = 23
------ time 0 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 10.0
AV1 = 13.0
AV3 = 11.0
BV2 = 12.0
AV2 = 12.0
BV5 = 6.0
AV5 = 6.0
S = 2.0
BV3 = 11.0
------ time 1 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 10.0
AV1 = 13.0
AV3 = 12.0
BV2 = 12.0
AV2 = 11.0
BV5 = 6.0
AV5 = 6.0
S = 1.0
BV3 = 11.0
------ time 2 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 10.0
AV1 = 11.0
AV3 = 12.0
BV2 = 12.0
AV2 = 13.0
BV5 = 6.0
AV5 = 6.0
S = 3.0
BV3 = 11.0
------ time 3 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 11.0
AV3 = 10.0
BV2 = 12.0
AV2 = 13.0
BV5 = 6.0
AV5 = 6.0
S = 4.0
BV3 = 11.0
------ time 4 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 6.0
AV1 = 11.0
AV3 = 10.0
BV2 = 12.0
AV2 = 13.0
BV5 = 6.0
AV5 = 12.0
S = 2.0
BV3 = 11.0
------ time 5 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 6.0
AV1 = 11.0
AV3 = 13.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 12.0
S = 3.0
BV3 = 11.0
------ time 6 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 13.0
AV1 = 11.0
AV3 = 6.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 12.0
S = 4.0
BV3 = 11.0
------ time 7 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 11.0
AV3 = 6.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 13.0
S = 1.0
BV3 = 11.0
------ time 8 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 10.0
AV3 = 6.0
BV2 = 12.0
AV2 = 11.0
BV5 = 6.0
AV5 = 13.0
S = 2.0
BV3 = 11.0
------ time 9 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 10.0
AV3 = 11.0
BV2 = 12.0
AV2 = 6.0
BV5 = 6.0
AV5 = 13.0
S = 1.0
BV3 = 11.0
------ time 10 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 6.0
AV3 = 11.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 13.0
S = 0.0
BV3 = 11.0
------ time 11 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 6.0
AV3 = 11.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 13.0
S = 0.0
BV3 = 11.0
------ time 12 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 6.0
AV3 = 11.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 13.0
S = 0.0
BV3 = 11.0
------ time 13 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 6.0
AV3 = 11.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 13.0
S = 0.0
BV3 = 11.0
------ time 14 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 6.0
AV3 = 11.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 13.0
S = 0.0
BV3 = 11.0
------ time 15 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 6.0
AV3 = 11.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 13.0
S = 0.0
BV3 = 11.0
------ time 16 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 6.0
AV3 = 11.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 13.0
S = 0.0
BV3 = 11.0
------ time 17 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 6.0
AV3 = 11.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 13.0
S = 0.0
BV3 = 11.0
------ time 18 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 6.0
AV3 = 11.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 13.0
S = 0.0
BV3 = 11.0
------ time 19 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 6.0
AV3 = 11.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 13.0
S = 0.0
BV3 = 11.0
------ time 20 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 6.0
AV3 = 11.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 13.0
S = 0.0
BV3 = 11.0
------ time 21 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 6.0
AV3 = 11.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 13.0
S = 0.0
BV3 = 11.0
------ time 22 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 6.0
AV3 = 11.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 13.0
S = 0.0
BV3 = 11.0
------ time 23 ------
  **LOOP**
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 6.0
AV3 = 11.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 13.0
S = 0.0
BV3 = 11.0
------ time 24 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 6.0
AV3 = 11.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 13.0
S = 0.0
BV3 = 11.0
------ time 25 ------
BV4 = 10.0
BV1 = 13.0
AV4 = 12.0
AV1 = 6.0
AV3 = 11.0
BV2 = 12.0
AV2 = 10.0
BV5 = 6.0
AV5 = 13.0
S = 0.0
BV3 = 11.0
------ end ------
Evaluation took:
  3.802 seconds of real time
  0.048000 seconds of total run time (0.048000 user, 0.000000 system)
  1.26% CPU
  12,926,732,051 processor cycles
  7,042,928 bytes consed
  
