This is SBCL 1.2.4.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
; compiling file "/home/fmbiased/zot/trunk/asdfs/sbvzot.lisp" (written 10 FEB 2017 01:29:08 PM):
; compiling (IN-PACKAGE :CL-USER)
; compiling (DEFPACKAGE :SBVZOT ...)
; compiling (IN-PACKAGE :SBVZOT)
; compiling (DEFVAR *REAL-CONSTANTS* ...)
; compiling (DEFMACRO IN ...)
; compiling (DEFUN PREDICATEP ...)
; compiling (DECLAIM (INLINE PREDICATEP))
; compiling (DEFUN CLTL-FORMULAP ...)
; compiling (DECLAIM (INLINE CLTL-FORMULAP))
; compiling (DEFUN LTL-FORMULAP ...)
; compiling (DECLAIM (INLINE LTL-FORMULAP))
; compiling (DEFUN ARITH-COP ...)
; compiling (DECLAIM (INLINE ARITH-COP))
; compiling (DEFUN ARITH-OPP ...)
; compiling (DECLAIM (INLINE ARITH-OPP))
; compiling (DEFUN ARITH-ITEMP ...)
; compiling (DECLAIM (INLINE ARITH-ITEMP))
; compiling (DEFUN BOOL-FMLAP ...)
; compiling (DECLAIM (INLINE BOOL-ITEMP))
; compiling (DEFUN TEMP-FMLAP ...)
; compiling (DECLAIM (INLINE TEMP-FMLAP))
; compiling (DEFUN GET-ITEM-CODOM ...)
; compiling (DEFUN GET-ITEM-SIG ...)
; compiling (DEFUN GET-ITEM-SORT ...)
; compiling (DEFUN INT-OR-REAL ...)
; compiling (DEFUN ARITY ...)
; compiling (DEFUN TO-SMT-DIALECT ...)
; compiling (DEFVAR *PROPS* ...)
; compiling (DEFCLASS SBVZOT-KRIPKE ...)
; compiling (DEFUN MAKE-KRIPKE ...)
; compiling (DEFMETHOD CALL ...)
; compiling (DEFGENERIC CALL-FMLA-ID ...)
; compiling (DEFMETHOD CALL-FMLA-ID ...)
; compiling (DEFUN THE-LOOPEX ...)
; compiling (DEFUN LOOPCONSTRAINTS ...)
; compiling (DEFUN GEN-ARITH-FUTR ...)
; compiling (DEFUN GEN-ARITH-PAST ...)
; compiling (DEFUN GEN-ARITH-CONSTRAINTS ...)
; compiling (DEFUN GEN-REGIONS ...)
; compiling (DEFUN GEN-BOOL ...)
; compiling (DEFUN GEN-FUTR ...)
; compiling (DEFUN GEN-PAST2 ...)
; compiling (DEFUN THE-BIG-FORMULA ...)
; compiling (DEFUN MANAGE-TRANSITIONS ...)
; compiling (DEFUN PRN-STR ...)
; compiling (DEFUN REPEAT-STRING ...)
; compiling (DEFUN BVTRUE ...)
; compiling (DEFUN BVFALSE ...)
; compiling (DEFUN SUBSTITUTIONS ...)
; compiling (DEFUN BVF ...)
; compiling (DEFUN COLLAPSE-ATOMIC-FORMULAE ...)
; compiling (DEFUN LIST-EQ ...)
; compiling (DEFUN GET-REL ...)
; compiling (DEFUN ZOT ...)
; compiling (DEFUN DECLARE-ASSUMPTIONS ...)

; /home/fmbiased/.cache/common-lisp/sbcl-1.2.4.debian-linux-x64/home/fmbiased/zot/trunk/asdfs/sbvzot-TMP.fasl written
; compilation finished in 0:00:00.315
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 1

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.013 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  46,262,147 processor cycles
  32,720 bytes consed
  
---UNSAT---
Evaluation took:
  0.019 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  21.05% CPU
  62,975,450 processor cycles
  458,480 bytes consed
  

Checked Bound: 1
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 2

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.013 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  45,207,368 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.019 seconds of real time
  0.008000 seconds of total run time (0.004000 user, 0.004000 system)
  42.11% CPU
  61,929,659 processor cycles
  425,920 bytes consed
  

Checked Bound: 2
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 3

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.014 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  28.57% CPU
  47,475,280 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.019 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  21.05% CPU
  64,078,426 processor cycles
  425,776 bytes consed
  

Checked Bound: 3
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 4

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.016 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  55,552,201 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.022 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  18.18% CPU
  72,220,455 processor cycles
  458,608 bytes consed
  

Checked Bound: 4
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 5

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.020 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  67,600,066 processor cycles
  32,768 bytes consed
  
---UNSAT---
Evaluation took:
  0.024 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  16.67% CPU
  84,196,006 processor cycles
  458,368 bytes consed
  

Checked Bound: 5
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 6

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.020 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  20.00% CPU
  70,111,737 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.025 seconds of real time
  0.008000 seconds of total run time (0.004000 user, 0.004000 system)
  32.00% CPU
  86,638,030 processor cycles
  425,856 bytes consed
  

Checked Bound: 6
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 7

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.023 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  79,878,786 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.029 seconds of real time
  0.008000 seconds of total run time (0.004000 user, 0.004000 system)
  27.59% CPU
  96,477,308 processor cycles
  425,792 bytes consed
  

Checked Bound: 7
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 8

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.025 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  16.00% CPU
  87,090,259 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.031 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  25.81% CPU
  103,915,622 processor cycles
  425,760 bytes consed
  

Checked Bound: 8
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 9

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.027 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  14.81% CPU
  90,707,146 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.032 seconds of real time
  0.008000 seconds of total run time (0.004000 user, 0.004000 system)
  25.00% CPU
  107,449,780 processor cycles
  458,576 bytes consed
  

Checked Bound: 9
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 10

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.041 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  9.76% CPU
  138,396,704 processor cycles
  32,736 bytes consed
  
---UNSAT---
Evaluation took:
  0.046 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  17.39% CPU
  155,289,684 processor cycles
  458,608 bytes consed
  

Checked Bound: 10
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 11

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.049 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  167,671,348 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.055 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  14.55% CPU
  184,738,732 processor cycles
  458,544 bytes consed
  

Checked Bound: 11
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 12

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.054 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  7.41% CPU
  184,017,500 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.059 seconds of real time
  0.008000 seconds of total run time (0.004000 user, 0.004000 system)
  13.56% CPU
  200,863,497 processor cycles
  425,904 bytes consed
  

Checked Bound: 12
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 13

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.057 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  7.02% CPU
  193,939,122 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.062 seconds of real time
  0.008000 seconds of total run time (0.004000 user, 0.004000 system)
  12.90% CPU
  210,745,113 processor cycles
  425,712 bytes consed
  

Checked Bound: 13
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 14

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.061 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  207,509,111 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.066 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  6.06% CPU
  224,327,999 processor cycles
  425,360 bytes consed
  

Checked Bound: 14
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 15

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.064 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  216,558,622 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.069 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  11.59% CPU
  233,395,271 processor cycles
  425,744 bytes consed
  

Checked Bound: 15
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 16

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.069 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  235,998,745 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.074 seconds of real time
  0.008000 seconds of total run time (0.004000 user, 0.004000 system)
  10.81% CPU
  253,030,895 processor cycles
  458,688 bytes consed
  

Checked Bound: 16
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 17

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.074 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  251,317,193 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.079 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  5.06% CPU
  268,324,842 processor cycles
  458,448 bytes consed
  

Checked Bound: 17
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 18

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.078 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  5.13% CPU
  265,474,496 processor cycles
  32,576 bytes consed
  
---UNSAT---
Evaluation took:
  0.083 seconds of real time
  0.008000 seconds of total run time (0.004000 user, 0.004000 system)
  9.64% CPU
  282,415,266 processor cycles
  458,512 bytes consed
  

Checked Bound: 18
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 19

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.125 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  427,020,691 processor cycles
  32,752 bytes consed
  
---UNSAT---
Evaluation took:
  0.131 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  6.11% CPU
  443,955,957 processor cycles
  457,664 bytes consed
  

Checked Bound: 19
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 20

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.082 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  279,814,327 processor cycles
  32,768 bytes consed
  
---UNSAT---
Evaluation took:
  0.087 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  9.20% CPU
  296,656,809 processor cycles
  457,936 bytes consed
  

Checked Bound: 20
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 21

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.086 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  4.65% CPU
  292,377,122 processor cycles
  32,752 bytes consed
  
---UNSAT---
Evaluation took:
  0.091 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  4.40% CPU
  309,129,925 processor cycles
  425,744 bytes consed
  

Checked Bound: 21
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 22

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.087 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  296,383,890 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.092 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  8.70% CPU
  313,430,029 processor cycles
  425,904 bytes consed
  

Checked Bound: 22
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 23

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.094 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  4.26% CPU
  320,582,328 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.100 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  8.00% CPU
  337,375,040 processor cycles
  425,888 bytes consed
  

Checked Bound: 23
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 24

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.098 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  4.08% CPU
  334,601,798 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.103 seconds of real time
  0.008000 seconds of total run time (0.004000 user, 0.004000 system)
  7.77% CPU
  351,399,765 processor cycles
  425,920 bytes consed
  

Checked Bound: 24
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 25

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.105 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  358,467,139 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.110 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  3.64% CPU
  375,293,661 processor cycles
  425,792 bytes consed
  

Checked Bound: 25
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 26

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.198 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  2.02% CPU
  675,834,519 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.204 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  3.92% CPU
  692,713,070 processor cycles
  425,920 bytes consed
  

Checked Bound: 26
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 27

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.111 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  3.60% CPU
  379,629,255 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.117 seconds of real time
  0.008000 seconds of total run time (0.004000 user, 0.004000 system)
  6.84% CPU
  396,646,608 processor cycles
  458,288 bytes consed
  

Checked Bound: 27
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 28

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.209 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  709,281,951 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.214 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  1.87% CPU
  726,147,082 processor cycles
  458,320 bytes consed
  

Checked Bound: 28
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 29

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.195 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  2.05% CPU
  661,667,834 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.199 seconds of real time
  0.008000 seconds of total run time (0.004000 user, 0.004000 system)
  4.02% CPU
  678,652,720 processor cycles
  458,432 bytes consed
  

Checked Bound: 29
IPC-terms: NIL
IPC-constraints: NIL
This is SBVZOT.

1. processing formula
Used boolean propositions: 
(T ZOT-FALSE PROC_4_1 PROC_4_0 PROC_3_1 PROC_3_0 PROC_2_1 PROC_2_0 PROC_1_1
 PROC_1_0 THE-X_2 THE-X_1 THE-X_0)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
NIL

Graph dependency over terms 
NIL

Related variables 
NIL

Time bound: 30

Number of atomic propositions: 
13
define FO future formulae Xt
define FO future formulae Yt
define FO terms for +,-,*,/,mod 
define LTL future formulae X, U, R
define LTL boolean connectives
gen-past2...
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
  0.222 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  755,070,446 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.227 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  1.76% CPU
  771,873,942 processor cycles
  458,176 bytes consed
  

Checked Bound: 30

Found: NIL
