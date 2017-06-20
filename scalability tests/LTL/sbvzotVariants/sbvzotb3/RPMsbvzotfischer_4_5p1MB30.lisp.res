This is SBCL 1.2.4.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
; compiling file "/home/fmbiased/zot/trunk/asdfs/sbvzot.lisp" (written 10 FEB 2017 03:51:49 PM):
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
; compilation finished in 0:00:00.306
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
  0.016 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  55,303,358 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.021 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  19.05% CPU
  72,742,368 processor cycles
  425,856 bytes consed
  

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
  0.015 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  26.67% CPU
  47,814,642 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.019 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  21.05% CPU
  64,258,109 processor cycles
  425,872 bytes consed
  

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
  0.017 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  23.53% CPU
  56,068,576 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.022 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  18.18% CPU
  72,496,947 processor cycles
  425,888 bytes consed
  

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
  0.019 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  64,497,272 processor cycles
  32,672 bytes consed
  
---UNSAT---
Evaluation took:
  0.024 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  16.67% CPU
  81,074,632 processor cycles
  458,320 bytes consed
  

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
  0.022 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  76,209,302 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.028 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  28.57% CPU
  92,413,599 processor cycles
  425,904 bytes consed
  

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
  0.025 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  16.00% CPU
  85,929,920 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.030 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  26.67% CPU
  102,585,377 processor cycles
  425,840 bytes consed
  

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
  0.027 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  93,861,131 processor cycles
  32,624 bytes consed
  
---UNSAT---
Evaluation took:
  0.033 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  24.24% CPU
  110,414,513 processor cycles
  458,480 bytes consed
  

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
  0.030 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  13.33% CPU
  104,188,793 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.036 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  22.22% CPU
  120,774,849 processor cycles
  425,776 bytes consed
  

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
  0.036 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  123,375,156 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.042 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  9.52% CPU
  140,420,867 processor cycles
  425,808 bytes consed
  

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
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  9.76% CPU
  137,263,755 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.046 seconds of real time
  0.008000 seconds of total run time (0.004000 user, 0.004000 system)
  17.39% CPU
  154,031,890 processor cycles
  425,840 bytes consed
  

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
  0.056 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  193,497,572 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.062 seconds of real time
  0.012000 seconds of total run time (0.004000 user, 0.008000 system)
  19.35% CPU
  210,422,854 processor cycles
  425,728 bytes consed
  

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
  0.061 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  6.56% CPU
  207,679,909 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.066 seconds of real time
  0.008000 seconds of total run time (0.004000 user, 0.004000 system)
  12.12% CPU
  224,412,376 processor cycles
  425,760 bytes consed
  

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
  0.066 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  6.06% CPU
  225,575,461 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.072 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  11.11% CPU
  242,423,558 processor cycles
  425,920 bytes consed
  

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
  0.070 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  239,423,246 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.076 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  10.53% CPU
  256,264,562 processor cycles
  425,872 bytes consed
  

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
  0.082 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  4.88% CPU
  277,804,048 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.086 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  9.30% CPU
  294,780,460 processor cycles
  425,920 bytes consed
  

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
  0.081 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  274,609,526 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.085 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  4.71% CPU
  291,314,101 processor cycles
  425,760 bytes consed
  

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
  0.170 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  2.35% CPU
  575,990,400 processor cycles
  32,592 bytes consed
  
---UNSAT---
Evaluation took:
  0.174 seconds of real time
  0.008000 seconds of total run time (0.004000 user, 0.004000 system)
  4.60% CPU
  592,666,067 processor cycles
  458,048 bytes consed
  

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
  0.090 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  4.44% CPU
  303,911,801 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.094 seconds of real time
  0.008000 seconds of total run time (0.004000 user, 0.004000 system)
  8.51% CPU
  320,609,434 processor cycles
  425,968 bytes consed
  

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
  0.096 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  326,035,964 processor cycles
  32,752 bytes consed
  
---UNSAT---
Evaluation took:
  0.100 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  4.00% CPU
  342,763,109 processor cycles
  458,256 bytes consed
  

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
  0.096 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  4.17% CPU
  328,121,144 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.101 seconds of real time
  0.008000 seconds of total run time (0.004000 user, 0.004000 system)
  7.92% CPU
  344,895,468 processor cycles
  425,632 bytes consed
  

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
  0.103 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  3.88% CPU
  349,847,520 processor cycles
  32,768 bytes consed
  
---UNSAT---
Evaluation took:
  0.108 seconds of real time
  0.008000 seconds of total run time (0.004000 user, 0.004000 system)
  7.41% CPU
  366,806,812 processor cycles
  458,384 bytes consed
  

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
  0.107 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  361,543,376 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.111 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  7.21% CPU
  378,707,489 processor cycles
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
  0.113 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  3.54% CPU
  385,713,353 processor cycles
  32,624 bytes consed
  
---UNSAT---
Evaluation took:
  0.119 seconds of real time
  0.008000 seconds of total run time (0.004000 user, 0.004000 system)
  6.72% CPU
  402,425,750 processor cycles
  458,256 bytes consed
  

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
  0.205 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  1.95% CPU
  696,984,965 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.210 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  3.81% CPU
  713,681,746 processor cycles
  425,664 bytes consed
  

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
  0.129 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  436,883,873 processor cycles
  32,576 bytes consed
  
---UNSAT---
Evaluation took:
  0.133 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  6.02% CPU
  453,853,035 processor cycles
  458,416 bytes consed
  

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
  0.127 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  432,066,597 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.132 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  6.06% CPU
  448,768,183 processor cycles
  425,936 bytes consed
  

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
  0.137 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  2.92% CPU
  466,654,851 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.142 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  2.82% CPU
  483,264,839 processor cycles
  425,824 bytes consed
  

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
  0.139 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  472,014,659 processor cycles
  32,768 bytes consed
  
---UNSAT---
Evaluation took:
  0.144 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  2.78% CPU
  488,819,228 processor cycles
  458,448 bytes consed
  

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
  0.144 seconds of real time
  0.004000 seconds of total run time (0.004000 user, 0.000000 system)
  2.78% CPU
  490,986,383 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.150 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  5.33% CPU
  507,740,230 processor cycles
  425,840 bytes consed
  

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
  0.238 seconds of real time
  0.000000 seconds of total run time (0.000000 user, 0.000000 system)
  0.00% CPU
  809,612,108 processor cycles
  0 bytes consed
  
---UNSAT---
Evaluation took:
  0.243 seconds of real time
  0.008000 seconds of total run time (0.008000 user, 0.000000 system)
  3.29% CPU
  826,445,843 processor cycles
  425,920 bytes consed
  

Checked Bound: 30

Found: NIL
