This is SBCL 1.2.4.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
IPC-terms: (CAUX 5 C2 C1 0)
IPC-constraints: ((>= C2 5) (>= C1 5) (>= CAUX 5) (> CAUX 5) (= CAUX 0)
                  (>= CAUX 0) (>= C2 0) (>= C1 0) (<= C2 5) (<= C1 5) (> C1 5)
                  (= C2 5) (> C2 5) (= C1 5) (<= C1 0) (> C2 0) (< C2 0)
                  (<= C2 0) (> C1 0) (< C1 0) (= C2 0) (= C1 0))
This is SMT-Arithmetic-eeZot

1. processing formula
Used boolean propositions: 
((>= C2 5) (>= C1 5) (>= CAUX 5) (> CAUX 5) (= CAUX 0) (>= CAUX 0) (>= C2 0)
 (>= C1 0) (<= C2 5) (<= C1 5) (> C1 5) (= C2 5) (> C2 5) (= C1 5) OFF TURNOFF
 L (<= C1 0) (> C2 0) (< C2 0) (<= C2 0) (> C1 0) (< C1 0) (= C2 0) (= C1 0) ON)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(CAUX C2 C1)

Graph dependency over terms 
((0 0 0 0 0 0 0 0 0 0 C1 C2 C2 C1 C1 C2 C1 C2 0 0 5 5 CAUX))

Related variables 
((C1 C2 0 5 CAUX))

Time bound: 70
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
  0.459 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  0.87% CPU
  1,559,408,238 processor cycles
  0 bytes consed
  
---SAT---
LOOPEX = TRUE
I_LOOP = 70.0
------ time 0 ------
C1 = 5.00005
CAUX = 0.00005
C2 = 0.0
------ time 1 ------
DELTA = 0.00005
C1 = 0.00005
CAUX = 5.0
C2 = 0.00005
------ time 2 ------
DELTA = 0.00005
C1 = 0.0001
CAUX = 5.00005
C2 = 0.0001
  OFF
------ time 3 ------
DELTA = 0.00005
C1 = 0.00015
CAUX = 5.0001
C2 = 0.00015
------ time 4 ------
DELTA = 0.00005
C1 = 0.0002
CAUX = 5.00015
C2 = 0.0002
  OFF
------ time 5 ------
DELTA = 0.00005
C1 = 0.00025
CAUX = 5.0002
C2 = 0.00025
------ time 6 ------
DELTA = 0.00005
C1 = 0.0003
CAUX = 5.00025
C2 = 0.0003
------ time 7 ------
DELTA = 0.00005
C1 = 0.00035
CAUX = 5.0003
C2 = 0.00035
  OFF
------ time 8 ------
DELTA = 0.00005
C1 = 0.0004
CAUX = 5.00035
C2 = 0.0004
------ time 9 ------
DELTA = 0.00005
C1 = 0.00045
CAUX = 5.0004
C2 = 0.00045
------ time 10 ------
DELTA = 0.00005
C1 = 0.0005
CAUX = 5.00045
C2 = 0.0005
  OFF
------ time 11 ------
DELTA = 0.00005
C1 = 0.00055
CAUX = 5.0005
C2 = 0.00055
  OFF
------ time 12 ------
DELTA = 0.00005
C1 = 0.0006
CAUX = 5.00055
C2 = 0.0006
------ time 13 ------
DELTA = 0.00005
C1 = 0.00065
CAUX = 0.0
C2 = 0.00065
  OFF
------ time 14 ------
DELTA = 0.00005
C1 = 0.0007
CAUX = 0.00005
C2 = 0.0007
------ time 15 ------
DELTA = 0.00005
C1 = 0.00075
CAUX = 0.0001
C2 = 0.00075
------ time 16 ------
DELTA = 0.00005
C1 = 0.0008
CAUX = 0.00015
C2 = 0.0008
------ time 17 ------
DELTA = 0.00005
C1 = 0.00085
CAUX = 0.0002
C2 = 0.00085
------ time 18 ------
DELTA = 0.00005
C1 = 0.0009
CAUX = 0.00025
C2 = 0.0009
------ time 19 ------
DELTA = 0.00005
C1 = 0.00095
CAUX = 0.0003
C2 = 0.00095
  OFF
------ time 20 ------
DELTA = 0.00005
C1 = 0.001
CAUX = 0.00035
C2 = 0.001
  OFF
------ time 21 ------
DELTA = 0.00005
C1 = 0.00105
CAUX = 0.0
C2 = 0.00105
------ time 22 ------
DELTA = 0.00005
C1 = 0.0011
CAUX = 0.0
C2 = 0.0011
  OFF
------ time 23 ------
DELTA = 0.00005
C1 = 0.00115
CAUX = 0.0
C2 = 0.00115
  OFF
------ time 24 ------
DELTA = 0.00005
C1 = 0.0012
CAUX = 0.0
C2 = 0.0012
------ time 25 ------
DELTA = 0.00005
C1 = 0.00125
CAUX = 0.0
C2 = 0.00125
------ time 26 ------
DELTA = 0.00005
C1 = 0.0013
CAUX = 0.0
C2 = 0.0013
  OFF
------ time 27 ------
DELTA = 0.00005
C1 = 0.00135
CAUX = 0.00005
C2 = 0.00135
------ time 28 ------
DELTA = 0.00005
C1 = 0.0014
CAUX = 0.0001
C2 = 0.0014
------ time 29 ------
DELTA = 0.00005
C1 = 0.00145
CAUX = 0.0
C2 = 0.00145
  OFF
------ time 30 ------
DELTA = 5.0
C1 = 0.0015
CAUX = 0.0
C2 = 0.0015
------ time 31 ------
  L
DELTA = 0.00005
C1 = 5.0015
  ON
CAUX = 5.0
C2 = 0.0
------ time 32 ------
  TURNOFF
DELTA = 0.00005
C1 = 5.00155
CAUX = 5.00005
C2 = 0.00005
  OFF
------ time 33 ------
DELTA = 0.00005
C1 = 5.0016
CAUX = 5.0001
C2 = 0.0001
------ time 34 ------
DELTA = 0.00005
C1 = 5.00165
CAUX = 5.00015
C2 = 0.00015
  OFF
------ time 35 ------
DELTA = 0.0002
C1 = 5.0017
CAUX = 5.0002
C2 = 0.0002
------ time 36 ------
DELTA = 0.00015
C1 = 5.0019
CAUX = 0.0
C2 = 0.0004
  OFF
------ time 37 ------
DELTA = 0.00005
C1 = 5.00205
CAUX = 0.00015
C2 = 0.00055
  OFF
------ time 38 ------
DELTA = 0.00005
C1 = 5.0021
CAUX = 0.0002
C2 = 0.0006
  OFF
------ time 39 ------
DELTA = 0.00005
C1 = 5.00215
CAUX = 0.00025
C2 = 0.00065
  OFF
------ time 40 ------
DELTA = 0.00005
C1 = 5.0022
CAUX = 0.0003
C2 = 0.0007
------ time 41 ------
DELTA = 0.00005
C1 = 5.00225
CAUX = 0.00035
C2 = 0.00075
  OFF
------ time 42 ------
DELTA = 4.99925
C1 = 5.0023
CAUX = 0.0004
C2 = 0.0008
  OFF
------ time 43 ------
DELTA = 0.00005
C1 = 10.00155
CAUX = 4.99965
C2 = 5.00005
------ time 44 ------
DELTA = 0.00005
C1 = 10.0016
CAUX = 4.9997
C2 = 5.0001
------ time 45 ------
DELTA = 0.00005
C1 = 10.00165
CAUX = 4.99975
C2 = 5.00015
  OFF
------ time 46 ------
DELTA = 0.00005
C1 = 10.0017
CAUX = 4.9998
C2 = 5.0002
------ time 47 ------
  L
DELTA = 0.00005
C1 = 0.0
  ON
CAUX = 4.99985
C2 = 5.00025
------ time 48 ------
  L
DELTA = 0.00005
C1 = 0.00005
CAUX = 4.9999
C2 = 5.0003
------ time 49 ------
  L
DELTA = 0.00005
C1 = 0.0001
CAUX = 4.99995
C2 = 5.00035
------ time 50 ------
  L
DELTA = 0.00005
C1 = 0.00015
CAUX = 0.0
C2 = 5.0004
------ time 51 ------
  L
DELTA = 0.00005
C1 = 0.0002
CAUX = 0.00005
C2 = 5.00045
------ time 52 ------
  L
DELTA = 0.00005
C1 = 0.00025
CAUX = 0.0001
C2 = 5.0005
------ time 53 ------
  L
DELTA = 0.00005
C1 = 0.0003
CAUX = 0.00015
C2 = 5.00055
------ time 54 ------
  L
DELTA = 0.00005
C1 = 0.00035
CAUX = 0.0002
C2 = 5.0006
------ time 55 ------
  L
DELTA = 0.00005
C1 = 0.0004
CAUX = 0.00025
C2 = 5.00065
------ time 56 ------
  L
DELTA = 0.00005
C1 = 0.00045
CAUX = 0.0003
C2 = 5.0007
------ time 57 ------
  L
DELTA = 0.00005
C1 = 0.0005
CAUX = 0.0
C2 = 5.00075
------ time 58 ------
  L
DELTA = 0.00005
C1 = 0.00055
CAUX = 0.00005
C2 = 5.0008
------ time 59 ------
  L
DELTA = 0.00005
C1 = 0.0006
CAUX = 0.0001
C2 = 5.00085
------ time 60 ------
  L
DELTA = 0.00005
C1 = 0.00065
CAUX = 0.00015
C2 = 5.0009
------ time 61 ------
  L
DELTA = 0.00005
C1 = 0.0007
CAUX = 0.0002
C2 = 5.00095
------ time 62 ------
  L
DELTA = 0.00005
C1 = 0.00075
CAUX = 0.0
C2 = 5.001
------ time 63 ------
  L
DELTA = 0.00005
C1 = 0.0008
CAUX = 0.0
C2 = 5.00105
------ time 64 ------
  L
DELTA = 0.00005
C1 = 0.00085
CAUX = 0.00005
C2 = 5.0011
------ time 65 ------
  L
DELTA = 0.00005
C1 = 0.0009
CAUX = 0.0001
C2 = 5.00115
------ time 66 ------
  L
DELTA = 0.00005
C1 = 0.00095
CAUX = 0.00015
C2 = 5.0012
------ time 67 ------
  TURNOFF
DELTA = 4.99905
C1 = 0.001
CAUX = 0.0
C2 = 5.00125
  OFF
------ time 68 ------
DELTA = 0.0019
C1 = 5.00005
CAUX = 4.99905
C2 = 10.0003
  OFF
------ time 69 ------
DELTA = 0.00005
C1 = 5.00195
CAUX = 0.0
C2 = 10.0022
  OFF
------ time 70 ------
  **LOOP**
DELTA = 0.00005
C1 = 5.002
CAUX = 0.0
C2 = 10.00225
  OFF
------ end ------
Evaluation took:
  0.581 seconds of real time
  0.124000 seconds of total run time (0.112000 user, 0.012000 system)
  [ Run times consist of 0.016 seconds GC time, and 0.108 seconds non-GC time. ]
  21.34% CPU
  795 forms interpreted
  1,974,431,510 processor cycles
  24,304,048 bytes consed
  
