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
  11.612 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  39,482,537,583 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  11.740 seconds of real time
  0.128000 seconds of total run time (0.128000 user, 0.000000 system)
  [ Run times consist of 0.020 seconds GC time, and 0.108 seconds non-GC time. ]
  1.09% CPU
  39,916,367,310 processor cycles
  26,726,688 bytes consed
  
