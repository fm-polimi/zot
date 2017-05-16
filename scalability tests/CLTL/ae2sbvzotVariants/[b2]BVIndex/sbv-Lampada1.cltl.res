This is SBCL 1.2.4.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
IPC-terms: (CAUX 5 C2 C1 0)
IPC-constraints: ((< C2 5) (< C1 5) (>= CAUX 5) (> CAUX 5) (= CAUX 0)
                  (>= CAUX 0) (>= C2 0) (>= C1 0) (<= C2 5) (<= C1 5) (> C1 5)
                  (= C2 5) (> C2 5) (= C1 5) (> C1 0) (> C2 0) (= C2 0)
                  (= C1 0))
This is AE2SBVZOT.

1. processing formula
Used boolean propositions: 
((< C2 5) (< C1 5) (>= CAUX 5) (> CAUX 5) (= CAUX 0) (>= CAUX 0) (>= C2 0)
 (>= C1 0) (<= C2 5) (<= C1 5) (> C1 5) (= C2 5) (> C2 5) (= C1 5) OFF TURNOFF
 L (> C1 0) (> C2 0) (= C2 0) (= C1 0) ON)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(CAUX C2 C1)

Graph dependency over terms 
((0 0 0 0 0 0 C1 C2 C2 C1 C1 C2 C1 C2 0 0 5 5 CAUX))

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
  0.283 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  959,850,118 processor cycles
  0 bytes consed
  
---SAT---
------ time 0 ------
  DELTA = 1.0
  C2 = (- 1.0)
  C1 = (- 1.0)
  CAUX = (- 1.0)
------ time 1 ------
  ON
  L
  DELTA = 5.0
  C2 = 6.0
  C1 = 0.0
  CAUX = 0.0
------ time 2 ------
  ON
  L
  DELTA = 5.0
  C2 = 0.0
  C1 = 5.0
  CAUX = 5.0
------ time 3 ------
  TURNOFF
  DELTA = 1.0
  C2 = 5.0
  C1 = 10.0
  CAUX = 10.0
------ time 4 ------
  DELTA = 1.0
  C2 = 6.0
  C1 = 11.0
  CAUX = 11.0
------ time 5 ------
  DELTA = 1.0
  C2 = 7.0
  C1 = 12.0
  CAUX = 12.0
------ time 6 ------
  DELTA = 1.0
  C2 = 8.0
  C1 = 13.0
  CAUX = 13.0
------ time 7 ------
  DELTA = 1.0
  C2 = 9.0
  C1 = 14.0
  CAUX = 14.0
------ time 8 ------
  DELTA = 1.0
  C2 = 10.0
  C1 = 15.0
  CAUX = 15.0
------ time 9 ------
  DELTA = 1.0
  C2 = 11.0
  C1 = 16.0
  CAUX = 16.0
------ time 10 ------
  DELTA = 1.0
  C2 = 12.0
  C1 = 17.0
  CAUX = 17.0
------ time 11 ------
  DELTA = 1.0
  C2 = 13.0
  C1 = 18.0
  CAUX = 18.0
------ time 12 ------
  DELTA = 1.0
  C2 = 14.0
  C1 = 19.0
  CAUX = 19.0
------ time 13 ------
  DELTA = 1.0
  C2 = 15.0
  C1 = 20.0
  CAUX = 20.0
------ time 14 ------
  DELTA = 1.0
  C2 = 16.0
  C1 = 21.0
  CAUX = 21.0
------ time 15 ------
  DELTA = 1.0
  C2 = 17.0
  C1 = 22.0
  CAUX = 22.0
------ time 16 ------
  DELTA = 1.0
  C2 = 18.0
  C1 = 23.0
  CAUX = 23.0
------ time 17 ------
  DELTA = 1.0
  C2 = 19.0
  C1 = 24.0
  CAUX = 24.0
------ time 18 ------
  DELTA = 1.0
  C2 = 20.0
  C1 = 25.0
  CAUX = 25.0
------ time 19 ------
  DELTA = 1.0
  C2 = 21.0
  C1 = 26.0
  CAUX = 26.0
------ time 20 ------
  DELTA = 1.0
  C2 = 22.0
  C1 = 27.0
  CAUX = 27.0
------ time 21 ------
  DELTA = 1.0
  C2 = 23.0
  C1 = 28.0
  CAUX = 28.0
------ time 22 ------
  DELTA = 1.0
  C2 = 24.0
  C1 = 29.0
  CAUX = 29.0
------ time 23 ------
  DELTA = 1.0
  C2 = 25.0
  C1 = 30.0
  CAUX = 30.0
------ time 24 ------
  DELTA = 1.0
  C2 = 26.0
  C1 = 31.0
  CAUX = 31.0
------ time 25 ------
  DELTA = 1.0
  C2 = 27.0
  C1 = 32.0
  CAUX = 32.0
------ time 26 ------
  DELTA = 1.0
  C2 = 28.0
  C1 = 33.0
  CAUX = 33.0
------ time 27 ------
  DELTA = 1.0
  C2 = 29.0
  C1 = 34.0
  CAUX = 34.0
------ time 28 ------
  DELTA = 1.0
  C2 = 30.0
  C1 = 35.0
  CAUX = 35.0
------ time 29 ------
  DELTA = 1.0
  C2 = 31.0
  C1 = 36.0
  CAUX = 36.0
------ time 30 ------
  DELTA = 1.0
  C2 = 32.0
  C1 = 37.0
  CAUX = 37.0
------ time 31 ------
  DELTA = 1.0
  C2 = 33.0
  C1 = 38.0
  CAUX = 38.0
------ time 32 ------
  DELTA = 1.0
  C2 = 34.0
  C1 = 39.0
  CAUX = 39.0
------ time 33 ------
  DELTA = 1.0
  C2 = 35.0
  C1 = 40.0
  CAUX = 40.0
------ time 34 ------
  DELTA = 1.0
  C2 = 36.0
  C1 = 41.0
  CAUX = 41.0
------ time 35 ------
  DELTA = 1.0
  C2 = 37.0
  C1 = 42.0
  CAUX = 42.0
------ time 36 ------
  DELTA = 1.0
  C2 = 38.0
  C1 = 43.0
  CAUX = 43.0
------ time 37 ------
  OFF
  DELTA = 1.0
  C2 = 39.0
  C1 = 44.0
  CAUX = 44.0
------ time 38 ------
  DELTA = 1.0
  C2 = 40.0
  C1 = 45.0
  CAUX = 45.0
------ time 39 ------
  DELTA = 1.0
  C2 = 41.0
  C1 = 46.0
  CAUX = 46.0
------ time 40 ------
  DELTA = 1.0
  C2 = 42.0
  C1 = 47.0
  CAUX = 47.0
------ time 41 ------
  DELTA = 1.0
  C2 = 43.0
  C1 = 48.0
  CAUX = 48.0
------ time 42 ------
  DELTA = 1.0
  C2 = 44.0
  C1 = 49.0
  CAUX = 49.0
------ time 43 ------
  DELTA = 1.0
  C2 = 45.0
  C1 = 50.0
  CAUX = 50.0
------ time 44 ------
  DELTA = 1.0
  C2 = 46.0
  C1 = 51.0
  CAUX = 51.0
------ time 45 ------
  DELTA = 1.0
  C2 = 47.0
  C1 = 52.0
  CAUX = 52.0
------ time 46 ------
  DELTA = 1.0
  C2 = 48.0
  C1 = 53.0
  CAUX = 53.0
------ time 47 ------
  DELTA = 1.0
  C2 = 49.0
  C1 = 54.0
  CAUX = 54.0
------ time 48 ------
  DELTA = 1.0
  C2 = 50.0
  C1 = 55.0
  CAUX = 55.0
------ time 49 ------
  DELTA = 1.0
  C2 = 51.0
  C1 = 56.0
  CAUX = 56.0
------ time 50 ------
  DELTA = 1.0
  C2 = 52.0
  C1 = 57.0
  CAUX = 57.0
------ time 51 ------
  DELTA = 1.0
  C2 = 53.0
  C1 = 58.0
  CAUX = 58.0
------ time 52 ------
  DELTA = 1.0
  C2 = 54.0
  C1 = 59.0
  CAUX = 59.0
------ time 53 ------
  DELTA = 1.0
  C2 = 55.0
  C1 = 60.0
  CAUX = 60.0
------ time 54 ------
  DELTA = 1.0
  C2 = 56.0
  C1 = 61.0
  CAUX = 61.0
------ time 55 ------
  DELTA = 1.0
  C2 = 57.0
  C1 = 62.0
  CAUX = 62.0
------ time 56 ------
  DELTA = 1.0
  C2 = 58.0
  C1 = 63.0
  CAUX = 63.0
------ time 57 ------
  DELTA = 1.0
  C2 = 59.0
  C1 = 64.0
  CAUX = 64.0
------ time 58 ------
  DELTA = 1.0
  C2 = 60.0
  C1 = 65.0
  CAUX = 65.0
------ time 59 ------
  DELTA = 1.0
  C2 = 61.0
  C1 = 66.0
  CAUX = 66.0
------ time 60 ------
  DELTA = 1.0
  C2 = 62.0
  C1 = 67.0
  CAUX = 67.0
------ time 61 ------
  DELTA = 1.0
  C2 = 63.0
  C1 = 68.0
  CAUX = 68.0
------ time 62 ------
  DELTA = 1.0
  C2 = 64.0
  C1 = 69.0
  CAUX = 69.0
------ time 63 ------
  DELTA = 1.0
  C2 = 65.0
  C1 = 70.0
  CAUX = 70.0
------ time 64 ------
**LOOP**
  DELTA = 1.0
  C2 = 66.0
  C1 = 71.0
  CAUX = 71.0
------ time 65 ------
  DELTA = 1.0
  C2 = 67.0
  C1 = 72.0
  CAUX = 72.0
------ time 66 ------
  DELTA = 1.0
  C2 = 68.0
  C1 = 73.0
  CAUX = 73.0
------ time 67 ------
  DELTA = 1.0
  C2 = 69.0
  C1 = 74.0
  CAUX = 74.0
------ time 68 ------
  DELTA = 1.0
  C2 = 70.0
  C1 = 75.0
  CAUX = 75.0
------ time 69 ------
  DELTA = 1.0
  C2 = 71.0
  C1 = 76.0
  CAUX = 76.0
------ time 70 ------
  DELTA = 1.0
  C2 = 72.0
  C1 = 77.0
  CAUX = 77.0
------ end ------
Evaluation took:
  0.379 seconds of real time
  0.096000 seconds of total run time (0.088000 user, 0.008000 system)
  [ Run times consist of 0.024 seconds GC time, and 0.072 seconds non-GC time. ]
  25.33% CPU
  1,289,450,997 processor cycles
  83,402,432 bytes consed
  
