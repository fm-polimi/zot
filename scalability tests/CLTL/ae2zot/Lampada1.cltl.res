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
  0.623 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  2,117,751,620 processor cycles
  0 bytes consed
  
---SAT---
LOOPEX = TRUE
I_LOOP = 66.0
------ time 0 ------
C1 = 0.0
CAUX = -0.00005
C2 = 0.0
------ time 1 ------
DELTA = 0.00005
C1 = 4.9999
CAUX = 0.00005
C2 = 0.00005
------ time 2 ------
  L
DELTA = 4.9993
C1 = 4.99995
  ON
CAUX = 0.0
C2 = 0.0
------ time 3 ------
  L
DELTA = 0.00005
C1 = 9.99925
CAUX = 4.9993
C2 = 4.9993
------ time 4 ------
  L
DELTA = 0.00005
C1 = 9.9993
CAUX = 4.99935
C2 = 4.99935
------ time 5 ------
  L
DELTA = 0.00015
C1 = 9.99935
CAUX = 4.9994
C2 = 4.9994
------ time 6 ------
  L
DELTA = 0.00005
C1 = 9.9995
CAUX = 4.99955
C2 = 4.99955
------ time 7 ------
  L
DELTA = 0.00005
C1 = 9.99955
CAUX = 4.9996
C2 = 4.9996
------ time 8 ------
  L
DELTA = 0.00005
C1 = 9.9996
CAUX = 4.99965
C2 = 4.99965
------ time 9 ------
  L
DELTA = 0.00005
C1 = 9.99965
CAUX = 4.9997
C2 = 4.9997
------ time 10 ------
  L
DELTA = 0.00005
C1 = 9.9997
CAUX = 4.99975
C2 = 4.99975
------ time 11 ------
  L
DELTA = 0.00005
C1 = 9.99975
CAUX = 4.9998
C2 = 4.9998
------ time 12 ------
  L
DELTA = 0.00005
C1 = 9.9998
CAUX = 4.99985
C2 = 4.99985
------ time 13 ------
  L
DELTA = 0.00005
C1 = 9.99985
CAUX = 4.9999
C2 = 4.9999
------ time 14 ------
  L
DELTA = 0.00005
C1 = 9.9999
CAUX = 4.99995
C2 = 4.99995
------ time 15 ------
  L
DELTA = 0.00005
C1 = 0.0
  ON
CAUX = 5.0
C2 = 5.0
------ time 16 ------
  L
DELTA = 0.00005
C1 = 0.00005
CAUX = 5.00005
C2 = 5.00005
------ time 17 ------
  TURNOFF
DELTA = 0.00005
C1 = 0.0001
CAUX = 5.0001
C2 = 5.0001
  OFF
------ time 18 ------
DELTA = 0.00005
C1 = 0.00015
CAUX = 5.00015
C2 = 5.00015
------ time 19 ------
DELTA = 0.00005
C1 = 0.0002
CAUX = 5.0002
C2 = 5.0002
  OFF
------ time 20 ------
DELTA = 0.00005
C1 = 0.00025
CAUX = 5.00025
C2 = 5.00025
------ time 21 ------
DELTA = 0.00005
C1 = 0.0003
CAUX = 5.0003
C2 = 5.0003
------ time 22 ------
DELTA = 0.00005
C1 = 0.00035
CAUX = 5.00035
C2 = 5.00035
  OFF
------ time 23 ------
DELTA = 0.00005
C1 = 0.0004
CAUX = 5.0004
C2 = 5.0004
------ time 24 ------
DELTA = 0.00005
C1 = 0.00045
CAUX = 5.00045
C2 = 5.00045
  OFF
------ time 25 ------
DELTA = 0.00005
C1 = 0.0005
CAUX = 5.0005
C2 = 5.0005
------ time 26 ------
DELTA = 0.00005
C1 = 0.00055
CAUX = 5.00055
C2 = 5.00055
------ time 27 ------
DELTA = 0.00005
C1 = 0.0006
CAUX = 5.0006
C2 = 5.0006
  OFF
------ time 28 ------
DELTA = 0.00005
C1 = 0.00065
CAUX = 5.00065
C2 = 5.00065
  OFF
------ time 29 ------
DELTA = 0.00005
C1 = 0.0007
CAUX = 5.0007
C2 = 5.0007
------ time 30 ------
DELTA = 0.00005
C1 = 0.00075
CAUX = 5.00075
C2 = 5.00075
------ time 31 ------
DELTA = 0.00005
C1 = 0.0008
CAUX = 5.0008
C2 = 5.0008
------ time 32 ------
DELTA = 0.00005
C1 = 0.00085
CAUX = 5.00085
C2 = 5.00085
------ time 33 ------
DELTA = 0.00005
C1 = 0.0009
CAUX = 5.0009
C2 = 5.0009
------ time 34 ------
DELTA = 0.00005
C1 = 0.00095
CAUX = 5.00095
C2 = 5.00095
------ time 35 ------
DELTA = 0.00005
C1 = 0.001
CAUX = 5.001
C2 = 5.001
  OFF
------ time 36 ------
DELTA = 0.00005
C1 = 0.00105
CAUX = 5.00105
C2 = 5.00105
  OFF
------ time 37 ------
DELTA = 0.00005
C1 = 0.0011
CAUX = 5.0011
C2 = 5.0011
  OFF
------ time 38 ------
DELTA = 0.00005
C1 = 0.00115
CAUX = 5.00115
C2 = 5.00115
  OFF
------ time 39 ------
DELTA = 0.00005
C1 = 0.0012
CAUX = 5.0012
C2 = 5.0012
  OFF
------ time 40 ------
DELTA = 0.00005
C1 = 0.00125
CAUX = 5.00125
C2 = 5.00125
------ time 41 ------
DELTA = 0.00005
C1 = 0.0013
CAUX = 5.0013
C2 = 5.0013
  OFF
------ time 42 ------
DELTA = 4.99825
C1 = 0.00135
CAUX = 5.00135
C2 = 5.00135
  OFF
------ time 43 ------
DELTA = 0.00005
C1 = 4.9996
CAUX = 9.9996
C2 = 9.9996
  OFF
------ time 44 ------
DELTA = 0.00005
C1 = 4.99965
CAUX = 9.99965
C2 = 9.99965
------ time 45 ------
DELTA = 0.00005
C1 = 4.9997
CAUX = 9.9997
C2 = 9.9997
  OFF
------ time 46 ------
DELTA = 0.00005
C1 = 4.99975
CAUX = 9.99975
C2 = 9.99975
  OFF
------ time 47 ------
DELTA = 0.00005
C1 = 4.9998
CAUX = 9.9998
C2 = 9.9998
  OFF
------ time 48 ------
DELTA = 0.00005
C1 = 4.99985
CAUX = 9.99985
C2 = 9.99985
------ time 49 ------
DELTA = 0.00005
C1 = 4.9999
CAUX = 9.9999
C2 = 9.9999
  OFF
------ time 50 ------
DELTA = 0.0001
C1 = 4.99995
CAUX = 9.99995
C2 = 9.99995
  OFF
------ time 51 ------
DELTA = 0.00005
C1 = 5.00005
CAUX = 10.00005
C2 = 10.00005
------ time 52 ------
DELTA = 0.00005
C1 = 5.0001
CAUX = 10.0001
C2 = 10.0001
------ time 53 ------
DELTA = 0.00005
C1 = 5.00015
CAUX = 10.00015
C2 = 10.00015
  OFF
------ time 54 ------
DELTA = 0.00005
C1 = 5.0002
CAUX = 10.0002
C2 = 10.0002
------ time 55 ------
DELTA = 0.00005
C1 = 5.00025
CAUX = 10.00025
C2 = 10.00025
------ time 56 ------
DELTA = 0.00005
C1 = 5.0003
CAUX = 10.0003
C2 = 10.0003
------ time 57 ------
DELTA = 0.00005
C1 = 5.00035
CAUX = 10.00035
C2 = 10.00035
  OFF
------ time 58 ------
DELTA = 0.00005
C1 = 5.0004
CAUX = 10.0004
C2 = 10.0004
  OFF
------ time 59 ------
DELTA = 0.00005
C1 = 5.00045
CAUX = 10.00045
C2 = 10.00045
------ time 60 ------
DELTA = 0.00005
C1 = 5.0005
CAUX = 10.0005
C2 = 10.0005
  OFF
------ time 61 ------
DELTA = 0.00005
C1 = 5.00055
CAUX = 10.00055
C2 = 10.00055
------ time 62 ------
DELTA = 0.00005
C1 = 5.0006
CAUX = 10.0006
C2 = 10.0006
------ time 63 ------
DELTA = 0.00005
C1 = 5.00065
CAUX = 10.00065
C2 = 10.00065
------ time 64 ------
DELTA = 4.9987
C1 = 5.0007
CAUX = 10.0007
C2 = 10.0007
------ time 65 ------
DELTA = 0.00005
C1 = 9.9994
CAUX = 14.9994
C2 = 14.9994
------ time 66 ------
  **LOOP**
DELTA = 0.00005
C1 = 9.99945
CAUX = 14.99945
C2 = 14.99945
------ time 67 ------
DELTA = 0.00005
C1 = 9.9995
CAUX = 14.9995
C2 = 14.9995
------ time 68 ------
DELTA = 0.00005
C1 = 9.99955
CAUX = 14.99955
C2 = 14.99955
------ time 69 ------
DELTA = 0.00005
C1 = 9.9996
CAUX = 14.9996
C2 = 14.9996
  OFF
------ time 70 ------
DELTA = 0.00005
C1 = 9.99965
CAUX = 14.99965
C2 = 14.99965
------ end ------
Evaluation took:
  0.751 seconds of real time
  0.128000 seconds of total run time (0.116000 user, 0.012000 system)
  [ Run times consist of 0.016 seconds GC time, and 0.112 seconds non-GC time. ]
  17.04% CPU
  848 forms interpreted
  2,552,807,064 processor cycles
  24,532,496 bytes consed
  
