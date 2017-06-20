This is SBCL 1.2.4.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
IPC-terms: (CAUX 5 C2 C1 0)
IPC-constraints: ((< C2 5) (< C1 5) (>= CAUX 5) (<= CAUX 5) (> CAUX 5)
                  (= CAUX 0) (>= CAUX 0) (>= C2 0) (>= C1 0) (<= C2 5)
                  (<= C1 5) (> C1 5) (= C2 5) (> C2 5) (= C1 5) (> C1 0)
                  (> C2 0) (= C2 0) (= C1 0))
This is AE2SBVZOT.

1. processing formula
Used boolean propositions: 
((< C2 5) (< C1 5) (>= CAUX 5) (<= CAUX 5) (> CAUX 5) (= CAUX 0) (>= CAUX 0)
 (>= C2 0) (>= C1 0) (<= C2 5) (<= C1 5) (> C1 5) (= C2 5) (> C2 5) (= C1 5)
 OFF TURNOFF L (> C1 0) (> C2 0) (= C2 0) (= C1 0) ON)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(CAUX C2 C1)

Graph dependency over terms 
((0 0 0 0 0 0 C1 C2 C2 C1 C1 C2 C1 C2 0 0 5 5 5 CAUX))

Related variables 
((C1 C2 0 5 CAUX))

Time bound: 70

Number of Boolean variables: 
4
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
  0.225 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  765,081,705 processor cycles
  32,672 bytes consed
  
---SAT---
------ time 0 ------
  DELTA = 0.1041666666?
  CAUX = (- 0.1041666666?)
  C2 = (- 0.1041666666?)
  C1 = (- 0.1041666666?)
------ time 1 ------
  DELTA = 0.1041666666?
  CAUX = 3.5416666666?
  C2 = 5.0
  C1 = 0.1041666666?
------ time 2 ------
  DELTA = 0.1041666666?
  CAUX = 3.6458333333?
  C2 = 5.1041666666?
  C1 = 0.2083333333?
------ time 3 ------
  DELTA = 0.1041666666?
  CAUX = 3.75
  C2 = 5.2083333333?
  C1 = 0.3125
------ time 4 ------
  DELTA = 0.1041666666?
  CAUX = 3.8541666666?
  C2 = 5.3125
  C1 = 0.4166666666?
------ time 5 ------
  DELTA = 0.1041666666?
  CAUX = 3.9583333333?
  C2 = 5.4166666666?
  C1 = 0.5208333333?
------ time 6 ------
  DELTA = 0.1041666666?
  CAUX = 4.0625
  C2 = 5.5208333333?
  C1 = 0.625
------ time 7 ------
  DELTA = 0.1041666666?
  CAUX = 4.1666666666?
  C2 = 5.625
  C1 = 0.7291666666?
------ time 8 ------
  DELTA = 0.1041666666?
  CAUX = 4.2708333333?
  C2 = 5.7291666666?
  C1 = 0.8333333333?
------ time 9 ------
  DELTA = 0.1041666666?
  CAUX = 4.375
  C2 = 5.8333333333?
  C1 = 0.9375
------ time 10 ------
  DELTA = 0.1041666666?
  CAUX = 4.4791666666?
  C2 = 5.9375
  C1 = 1.0416666666?
------ time 11 ------
  DELTA = 0.1041666666?
  CAUX = 4.5833333333?
  C2 = 6.0416666666?
  C1 = 1.1458333333?
------ time 12 ------
  DELTA = 0.1041666666?
  CAUX = 4.6875
  C2 = 6.1458333333?
  C1 = 1.25
------ time 13 ------
  DELTA = 0.1041666666?
  CAUX = 4.7916666666?
  C2 = 6.25
  C1 = 1.3541666666?
------ time 14 ------
  DELTA = 0.2083333333?
  CAUX = 4.8958333333?
  C2 = 6.3541666666?
  C1 = 1.4583333333?
------ time 15 ------
  DELTA = 0.1041666666?
  CAUX = 5.1041666666?
  C2 = 6.5625
  C1 = 1.6666666666?
------ time 16 ------
  DELTA = 0.1041666666?
  CAUX = 0.0
  C2 = 6.6666666666?
  C1 = 1.7708333333?
------ time 17 ------
  DELTA = 0.1041666666?
  CAUX = 0.1041666666?
  C2 = 6.7708333333?
  C1 = 1.875
------ time 18 ------
  DELTA = 0.1041666666?
  CAUX = 0.2083333333?
  C2 = 6.875
  C1 = 1.9791666666?
------ time 19 ------
  DELTA = 0.1041666666?
  CAUX = 0.3125
  C2 = 6.9791666666?
  C1 = 2.0833333333?
------ time 20 ------
  DELTA = 0.1041666666?
  CAUX = 0.4166666666?
  C2 = 7.0833333333?
  C1 = 2.1875
------ time 21 ------
  DELTA = 0.1041666666?
  CAUX = 0.5208333333?
  C2 = 7.1875
  C1 = 2.2916666666?
------ time 22 ------
  DELTA = 0.1041666666?
  CAUX = 0.625
  C2 = 7.2916666666?
  C1 = 2.3958333333?
------ time 23 ------
  DELTA = 0.1041666666?
  CAUX = 0.0
  C2 = 7.3958333333?
  C1 = 2.5
------ time 24 ------
  DELTA = 0.1041666666?
  CAUX = 0.1041666666?
  C2 = 7.5
  C1 = 2.6041666666?
------ time 25 ------
  DELTA = 0.1041666666?
  CAUX = 0.2083333333?
  C2 = 7.6041666666?
  C1 = 2.7083333333?
------ time 26 ------
  DELTA = 0.1041666666?
  CAUX = 0.3125
  C2 = 7.7083333333?
  C1 = 2.8125
------ time 27 ------
  DELTA = 0.1041666666?
  CAUX = 0.4166666666?
  C2 = 7.8125
  C1 = 2.9166666666?
------ time 28 ------
  DELTA = 0.1041666666?
  CAUX = 0.5208333333?
  C2 = 7.9166666666?
  C1 = 3.0208333333?
------ time 29 ------
  DELTA = 0.1041666666?
  CAUX = 0.625
  C2 = 8.0208333333?
  C1 = 3.125
------ time 30 ------
  DELTA = 0.1041666666?
  CAUX = 0.7291666666?
  C2 = 8.125
  C1 = 3.2291666666?
------ time 31 ------
  DELTA = 0.1041666666?
  CAUX = 0.8333333333?
  C2 = 8.2291666666?
  C1 = 3.3333333333?
------ time 32 ------
  DELTA = 0.1041666666?
  CAUX = 0.9375
  C2 = 8.3333333333?
  C1 = 3.4375
------ time 33 ------
  DELTA = 0.1041666666?
  CAUX = 1.0416666666?
  C2 = 8.4375
  C1 = 3.5416666666?
------ time 34 ------
  DELTA = 0.1041666666?
  CAUX = 1.1458333333?
  C2 = 8.5416666666?
  C1 = 3.6458333333?
------ time 35 ------
  DELTA = 0.1041666666?
  CAUX = 0.0
  C2 = 8.6458333333?
  C1 = 3.75
------ time 36 ------
  DELTA = 0.1041666666?
  CAUX = 0.1041666666?
  C2 = 8.75
  C1 = 3.8541666666?
------ time 37 ------
  DELTA = 0.1041666666?
  CAUX = 0.2083333333?
  C2 = 8.8541666666?
  C1 = 3.9583333333?
------ time 38 ------
  DELTA = 0.1041666666?
  CAUX = 0.3125
  C2 = 8.9583333333?
  C1 = 4.0625
------ time 39 ------
  DELTA = 0.1041666666?
  CAUX = 0.4166666666?
  C2 = 9.0625
  C1 = 4.1666666666?
------ time 40 ------
  DELTA = 0.1041666666?
  CAUX = 0.5208333333?
  C2 = 9.1666666666?
  C1 = 4.2708333333?
------ time 41 ------
  DELTA = 0.1041666666?
  CAUX = 0.625
  C2 = 9.2708333333?
  C1 = 4.375
------ time 42 ------
  DELTA = 0.1041666666?
  CAUX = 0.0
  C2 = 9.375
  C1 = 4.4791666666?
------ time 43 ------
  DELTA = 0.1041666666?
  CAUX = 0.1041666666?
  C2 = 9.4791666666?
  C1 = 4.5833333333?
------ time 44 ------
  DELTA = 0.1041666666?
  CAUX = 0.2083333333?
  C2 = 9.5833333333?
  C1 = 4.6875
------ time 45 ------
  DELTA = 0.1041666666?
  CAUX = 0.3125
  C2 = 9.6875
  C1 = 4.7916666666?
------ time 46 ------
  ON
  L
  DELTA = 5.0
  CAUX = 0.0
  C2 = 0.0
  C1 = 4.8958333333?
------ time 47 ------
  ON
  L
  DELTA = 3.1041666666?
  CAUX = 5.0
  C2 = 5.0
  C1 = 0.0
------ time 48 ------
  L
  DELTA = 0.1041666666?
  CAUX = 8.1041666666?
  C2 = 8.1041666666?
  C1 = 3.1041666666?
------ time 49 ------
  L
  DELTA = 0.1041666666?
  CAUX = 8.2083333333?
  C2 = 8.2083333333?
  C1 = 3.2083333333?
------ time 50 ------
  L
  DELTA = 0.1041666666?
  CAUX = 0.0
  C2 = 8.3125
  C1 = 3.3125
------ time 51 ------
  L
  DELTA = 0.1041666666?
  CAUX = 0.1041666666?
  C2 = 8.4166666666?
  C1 = 3.4166666666?
------ time 52 ------
  L
  DELTA = 0.1041666666?
  CAUX = 0.0
  C2 = 8.5208333333?
  C1 = 3.5208333333?
------ time 53 ------
  TURNOFF
  OFF
  DELTA = 1.0625
  CAUX = 0.0
  C2 = 8.625
  C1 = 3.625
------ time 54 ------
  DELTA = 0.1041666666?
  CAUX = 1.0625
  C2 = 9.6875
  C1 = 4.6875
------ time 55 ------
  DELTA = 0.1041666666?
  CAUX = 1.1666666666?
  C2 = 9.7916666666?
  C1 = 4.7916666666?
------ time 56 ------
  DELTA = 0.2083333333?
  CAUX = 1.2708333333?
  C2 = 9.8958333333?
  C1 = 4.8958333333?
------ time 57 ------
  DELTA = 0.1041666666?
  CAUX = 1.4791666666?
  C2 = 10.1041666666?
  C1 = 5.1041666666?
------ time 58 ------
  DELTA = 0.1041666666?
  CAUX = 1.5833333333?
  C2 = 10.2083333333?
  C1 = 5.2083333333?
------ time 59 ------
  DELTA = 0.1041666666?
  CAUX = 1.6875
  C2 = 10.3125
  C1 = 5.3125
------ time 60 ------
  DELTA = 0.1041666666?
  CAUX = 1.7916666666?
  C2 = 10.4166666666?
  C1 = 5.4166666666?
------ time 61 ------
  DELTA = 0.1041666666?
  CAUX = 1.8958333333?
  C2 = 10.5208333333?
  C1 = 5.5208333333?
------ time 62 ------
  DELTA = 0.1041666666?
  CAUX = 2.0
  C2 = 10.625
  C1 = 5.625
------ time 63 ------
  OFF
  DELTA = 0.1041666666?
  CAUX = 2.1041666666?
  C2 = 10.7291666666?
  C1 = 5.7291666666?
------ time 64 ------
**LOOP**
  DELTA = 5.1041666666?
  CAUX = 0.0
  C2 = 10.8333333333?
  C1 = 5.8333333333?
------ time 65 ------
  DELTA = 0.1041666666?
  CAUX = 5.1041666666?
  C2 = 15.9375
  C1 = 10.9375
------ time 66 ------
  DELTA = 0.1041666666?
  CAUX = 5.2083333333?
  C2 = 16.0416666666?
  C1 = 11.0416666666?
------ time 67 ------
  DELTA = 0.1041666666?
  CAUX = 0.0
  C2 = 16.1458333333?
  C1 = 11.1458333333?
------ time 68 ------
  DELTA = 0.1041666666?
  CAUX = 0.1041666666?
  C2 = 16.25
  C1 = 11.25
------ time 69 ------
  DELTA = 1.8958333333?
  CAUX = 0.2083333333?
  C2 = 16.3541666666?
  C1 = 11.3541666666?
------ time 70 ------
  OFF
  DELTA = 0.1041666666?
  CAUX = 2.1041666666?
  C2 = 18.25
  C1 = 13.25
------ end ------
Evaluation took:
  0.302 seconds of real time
  0.076000 seconds of total run time (0.056000 user, 0.020000 system)
  [ Run times consist of 0.028 seconds GC time, and 0.048 seconds non-GC time. ]
  25.17% CPU
  1,025,805,713 processor cycles
  71,900,080 bytes consed
  
