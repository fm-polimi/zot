This is SBCL 1.2.4.debian, an implementation of ANSI Common Lisp.
More information about SBCL is available at <http://www.sbcl.org/>.

SBCL is free software, provided as is, with absolutely no warranty.
It is mostly in the public domain; some portions are provided under
BSD-style licenses.  See the CREDITS and COPYING files in the
distribution for more information.
IPC-terms: ((YESTERDAY OBJPROC_1PARAMTWO_NR) (YESTERDAY OBJPROC_1PARAMWIN_NR)
            (YESTERDAY OBJPROC_1PARAMONE_NR) OBJPROC_1ATTRMAX
            (YESTERDAY OBJPROC_1ATTRMAX) OBJPROC_1ATTRNEIGHBOURR
            (YESTERDAY OBJPROC_1ATTRNEIGHBOURR) OBJPROC_1ATTRACTIVE
            (YESTERDAY OBJPROC_1ATTRACTIVE) OBJPROC_1ATTRMYNUMBER
            (YESTERDAY OBJPROC_1ATTRMYNUMBER) (YESTERDAY OBJPROC_0PARAMTWO_NR)
            OBJPROC_1PARAMWIN_NR (YESTERDAY OBJPROC_0PARAMWIN_NR)
            OBJPROC_1PARAMTWO_NR OBJPROC_1PARAMONE_NR
            (YESTERDAY OBJPROC_0PARAMONE_NR) OBJPROC_0ATTRMAX
            (YESTERDAY OBJPROC_0ATTRMAX) OBJPROC_0ATTRNEIGHBOURR
            (YESTERDAY OBJPROC_0ATTRNEIGHBOURR) OBJPROC_0ATTRACTIVE
            (YESTERDAY OBJPROC_0ATTRACTIVE) OBJPROC_0ATTRMYNUMBER
            (YESTERDAY OBJPROC_0ATTRMYNUMBER) (YESTERDAY OBJPROC_2PARAMTWO_NR)
            (YESTERDAY OBJPROC_2PARAMWIN_NR) OBJPROC_2PARAMWIN_NR
            OBJPROC_2PARAMONE_NR OBJPROC_2PARAMTWO_NR
            (YESTERDAY OBJPROC_2PARAMONE_NR) OBJPROC_2ATTRMAX
            (YESTERDAY OBJPROC_2ATTRMAX) OBJPROC_2ATTRNEIGHBOURR
            (YESTERDAY OBJPROC_2ATTRNEIGHBOURR) OBJPROC_2ATTRACTIVE
            (YESTERDAY OBJPROC_2ATTRACTIVE) OBJPROC_2ATTRMYNUMBER
            (YESTERDAY OBJPROC_2ATTRMYNUMBER) (YESTERDAY OBJPROC_3PARAMTWO_NR)
            (YESTERDAY OBJPROC_3PARAMWIN_NR) OBJPROC_3PARAMWIN_NR
            OBJPROC_3PARAMONE_NR OBJPROC_3PARAMTWO_NR
            (YESTERDAY OBJPROC_3PARAMONE_NR) OBJPROC_3ATTRMAX
            (YESTERDAY OBJPROC_3ATTRMAX) OBJPROC_3ATTRNEIGHBOURR
            (YESTERDAY OBJPROC_3ATTRNEIGHBOURR) OBJPROC_3ATTRACTIVE
            (YESTERDAY OBJPROC_3ATTRACTIVE) OBJPROC_3ATTRMYNUMBER
            (YESTERDAY OBJPROC_3ATTRMYNUMBER) (YESTERDAY OBJPROC_4PARAMTWO_NR)
            OBJPROC_0PARAMWIN_NR (YESTERDAY OBJPROC_4PARAMWIN_NR)
            OBJPROC_4PARAMWIN_NR OBJPROC_0PARAMTWO_NR OBJPROC_4PARAMONE_NR
            OBJPROC_4PARAMTWO_NR 1 OBJPROC_0PARAMONE_NR
            (YESTERDAY OBJPROC_4PARAMONE_NR) 0 OBJPROC_4ATTRMAX
            (YESTERDAY OBJPROC_4ATTRMAX) OBJPROC_4ATTRNEIGHBOURR
            (YESTERDAY OBJPROC_4ATTRNEIGHBOURR) OBJPROC_4ATTRACTIVE
            (YESTERDAY OBJPROC_4ATTRACTIVE) OBJPROC_4ATTRMYNUMBER
            (YESTERDAY OBJPROC_4ATTRMYNUMBER))
IPC-constraints: ((= OBJPROC_3ATTRMYNUMBER OBJPROC_4ATTRMYNUMBER)
                  (= OBJPROC_2ATTRMYNUMBER OBJPROC_4ATTRMYNUMBER)
                  (= OBJPROC_2ATTRMYNUMBER OBJPROC_3ATTRMYNUMBER)
                  (= OBJPROC_1ATTRMYNUMBER OBJPROC_4ATTRMYNUMBER)
                  (= OBJPROC_1ATTRMYNUMBER OBJPROC_3ATTRMYNUMBER)
                  (= OBJPROC_1ATTRMYNUMBER OBJPROC_2ATTRMYNUMBER)
                  (= OBJPROC_0ATTRMYNUMBER OBJPROC_4ATTRMYNUMBER)
                  (= OBJPROC_0ATTRMYNUMBER OBJPROC_3ATTRMYNUMBER)
                  (= OBJPROC_0ATTRMYNUMBER OBJPROC_2ATTRMYNUMBER)
                  (= OBJPROC_0ATTRMYNUMBER OBJPROC_1ATTRMYNUMBER)
                  (= OBJPROC_2PARAMWIN_NR (YESTERDAY OBJPROC_1PARAMONE_NR))
                  (= OBJPROC_2PARAMTWO_NR (YESTERDAY OBJPROC_1PARAMTWO_NR))
                  (= OBJPROC_2PARAMWIN_NR (YESTERDAY OBJPROC_1PARAMWIN_NR))
                  (= OBJPROC_1PARAMWIN_NR OBJPROC_1ATTRMYNUMBER)
                  (= OBJPROC_1ATTRNEIGHBOURR (YESTERDAY OBJPROC_1PARAMONE_NR))
                  (= OBJPROC_2PARAMTWO_NR (YESTERDAY OBJPROC_1PARAMONE_NR))
                  (= OBJPROC_1PARAMONE_NR OBJPROC_1ATTRMAX)
                  (= OBJPROC_2PARAMONE_NR (YESTERDAY OBJPROC_1ATTRNEIGHBOURR))
                  (= OBJPROC_1ATTRMAX (YESTERDAY OBJPROC_1ATTRNEIGHBOURR))
                  (> OBJPROC_1ATTRNEIGHBOURR OBJPROC_1ATTRMAX)
                  (> OBJPROC_1ATTRNEIGHBOURR OBJPROC_1PARAMTWO_NR)
                  (<= OBJPROC_1ATTRNEIGHBOURR OBJPROC_1ATTRMAX)
                  (<= OBJPROC_1ATTRNEIGHBOURR OBJPROC_1PARAMTWO_NR)
                  (= OBJPROC_1ATTRACTIVE 1)
                  (= OBJPROC_1ATTRMAX OBJPROC_1ATTRMYNUMBER)
                  (= OBJPROC_2PARAMONE_NR OBJPROC_1ATTRMYNUMBER)
                  (= OBJPROC_2PARAMONE_NR (YESTERDAY OBJPROC_1PARAMONE_NR))
                  (= OBJPROC_1ATTRACTIVE 0)
                  (= OBJPROC_1ATTRMAX (YESTERDAY OBJPROC_1ATTRMAX))
                  (= OBJPROC_1ATTRNEIGHBOURR
                     (YESTERDAY OBJPROC_1ATTRNEIGHBOURR))
                  (= OBJPROC_1ATTRACTIVE (YESTERDAY OBJPROC_1ATTRACTIVE))
                  (= OBJPROC_1ATTRMYNUMBER (YESTERDAY OBJPROC_1ATTRMYNUMBER))
                  (= OBJPROC_1PARAMWIN_NR (YESTERDAY OBJPROC_0PARAMONE_NR))
                  (= OBJPROC_1PARAMTWO_NR (YESTERDAY OBJPROC_0PARAMTWO_NR))
                  (= OBJPROC_1PARAMWIN_NR (YESTERDAY OBJPROC_0PARAMWIN_NR))
                  (= OBJPROC_0PARAMWIN_NR OBJPROC_0ATTRMYNUMBER)
                  (= OBJPROC_0ATTRNEIGHBOURR (YESTERDAY OBJPROC_0PARAMONE_NR))
                  (= OBJPROC_1PARAMTWO_NR (YESTERDAY OBJPROC_0PARAMONE_NR))
                  (= OBJPROC_0PARAMONE_NR OBJPROC_0ATTRMAX)
                  (= OBJPROC_1PARAMONE_NR (YESTERDAY OBJPROC_0ATTRNEIGHBOURR))
                  (= OBJPROC_0ATTRMAX (YESTERDAY OBJPROC_0ATTRNEIGHBOURR))
                  (> OBJPROC_0ATTRNEIGHBOURR OBJPROC_0ATTRMAX)
                  (> OBJPROC_0ATTRNEIGHBOURR OBJPROC_0PARAMTWO_NR)
                  (<= OBJPROC_0ATTRNEIGHBOURR OBJPROC_0ATTRMAX)
                  (<= OBJPROC_0ATTRNEIGHBOURR OBJPROC_0PARAMTWO_NR)
                  (= OBJPROC_0ATTRACTIVE 1)
                  (= OBJPROC_0ATTRMAX OBJPROC_0ATTRMYNUMBER)
                  (= OBJPROC_1PARAMONE_NR OBJPROC_0ATTRMYNUMBER)
                  (= OBJPROC_1PARAMONE_NR (YESTERDAY OBJPROC_0PARAMONE_NR))
                  (= OBJPROC_0ATTRACTIVE 0)
                  (= OBJPROC_0ATTRMAX (YESTERDAY OBJPROC_0ATTRMAX))
                  (= OBJPROC_0ATTRNEIGHBOURR
                     (YESTERDAY OBJPROC_0ATTRNEIGHBOURR))
                  (= OBJPROC_0ATTRACTIVE (YESTERDAY OBJPROC_0ATTRACTIVE))
                  (= OBJPROC_0ATTRMYNUMBER (YESTERDAY OBJPROC_0ATTRMYNUMBER))
                  (= OBJPROC_3PARAMWIN_NR (YESTERDAY OBJPROC_2PARAMONE_NR))
                  (= OBJPROC_3PARAMTWO_NR (YESTERDAY OBJPROC_2PARAMTWO_NR))
                  (= OBJPROC_3PARAMWIN_NR (YESTERDAY OBJPROC_2PARAMWIN_NR))
                  (= OBJPROC_2PARAMWIN_NR OBJPROC_2ATTRMYNUMBER)
                  (= OBJPROC_2ATTRNEIGHBOURR (YESTERDAY OBJPROC_2PARAMONE_NR))
                  (= OBJPROC_3PARAMTWO_NR (YESTERDAY OBJPROC_2PARAMONE_NR))
                  (= OBJPROC_2PARAMONE_NR OBJPROC_2ATTRMAX)
                  (= OBJPROC_3PARAMONE_NR (YESTERDAY OBJPROC_2ATTRNEIGHBOURR))
                  (= OBJPROC_2ATTRMAX (YESTERDAY OBJPROC_2ATTRNEIGHBOURR))
                  (> OBJPROC_2ATTRNEIGHBOURR OBJPROC_2ATTRMAX)
                  (> OBJPROC_2ATTRNEIGHBOURR OBJPROC_2PARAMTWO_NR)
                  (<= OBJPROC_2ATTRNEIGHBOURR OBJPROC_2ATTRMAX)
                  (<= OBJPROC_2ATTRNEIGHBOURR OBJPROC_2PARAMTWO_NR)
                  (= OBJPROC_2ATTRACTIVE 1)
                  (= OBJPROC_2ATTRMAX OBJPROC_2ATTRMYNUMBER)
                  (= OBJPROC_3PARAMONE_NR OBJPROC_2ATTRMYNUMBER)
                  (= OBJPROC_3PARAMONE_NR (YESTERDAY OBJPROC_2PARAMONE_NR))
                  (= OBJPROC_2ATTRACTIVE 0)
                  (= OBJPROC_2ATTRMAX (YESTERDAY OBJPROC_2ATTRMAX))
                  (= OBJPROC_2ATTRNEIGHBOURR
                     (YESTERDAY OBJPROC_2ATTRNEIGHBOURR))
                  (= OBJPROC_2ATTRACTIVE (YESTERDAY OBJPROC_2ATTRACTIVE))
                  (= OBJPROC_2ATTRMYNUMBER (YESTERDAY OBJPROC_2ATTRMYNUMBER))
                  (= OBJPROC_4PARAMWIN_NR (YESTERDAY OBJPROC_3PARAMONE_NR))
                  (= OBJPROC_4PARAMTWO_NR (YESTERDAY OBJPROC_3PARAMTWO_NR))
                  (= OBJPROC_4PARAMWIN_NR (YESTERDAY OBJPROC_3PARAMWIN_NR))
                  (= OBJPROC_3PARAMWIN_NR OBJPROC_3ATTRMYNUMBER)
                  (= OBJPROC_3ATTRNEIGHBOURR (YESTERDAY OBJPROC_3PARAMONE_NR))
                  (= OBJPROC_4PARAMTWO_NR (YESTERDAY OBJPROC_3PARAMONE_NR))
                  (= OBJPROC_3PARAMONE_NR OBJPROC_3ATTRMAX)
                  (= OBJPROC_4PARAMONE_NR (YESTERDAY OBJPROC_3ATTRNEIGHBOURR))
                  (= OBJPROC_3ATTRMAX (YESTERDAY OBJPROC_3ATTRNEIGHBOURR))
                  (> OBJPROC_3ATTRNEIGHBOURR OBJPROC_3ATTRMAX)
                  (> OBJPROC_3ATTRNEIGHBOURR OBJPROC_3PARAMTWO_NR)
                  (<= OBJPROC_3ATTRNEIGHBOURR OBJPROC_3ATTRMAX)
                  (<= OBJPROC_3ATTRNEIGHBOURR OBJPROC_3PARAMTWO_NR)
                  (= OBJPROC_3ATTRACTIVE 1)
                  (= OBJPROC_3ATTRMAX OBJPROC_3ATTRMYNUMBER)
                  (= OBJPROC_4PARAMONE_NR OBJPROC_3ATTRMYNUMBER)
                  (= OBJPROC_4PARAMONE_NR (YESTERDAY OBJPROC_3PARAMONE_NR))
                  (= OBJPROC_3ATTRACTIVE 0)
                  (= OBJPROC_3ATTRMAX (YESTERDAY OBJPROC_3ATTRMAX))
                  (= OBJPROC_3ATTRNEIGHBOURR
                     (YESTERDAY OBJPROC_3ATTRNEIGHBOURR))
                  (= OBJPROC_3ATTRACTIVE (YESTERDAY OBJPROC_3ATTRACTIVE))
                  (= OBJPROC_3ATTRMYNUMBER (YESTERDAY OBJPROC_3ATTRMYNUMBER))
                  (= OBJPROC_0PARAMWIN_NR (YESTERDAY OBJPROC_4PARAMONE_NR))
                  (= OBJPROC_0PARAMTWO_NR (YESTERDAY OBJPROC_4PARAMTWO_NR))
                  (= OBJPROC_0PARAMWIN_NR (YESTERDAY OBJPROC_4PARAMWIN_NR))
                  (= OBJPROC_4PARAMWIN_NR OBJPROC_4ATTRMYNUMBER)
                  (= OBJPROC_4ATTRNEIGHBOURR (YESTERDAY OBJPROC_4PARAMONE_NR))
                  (= OBJPROC_0PARAMTWO_NR (YESTERDAY OBJPROC_4PARAMONE_NR))
                  (= OBJPROC_4PARAMONE_NR OBJPROC_4ATTRMAX)
                  (= OBJPROC_0PARAMONE_NR (YESTERDAY OBJPROC_4ATTRNEIGHBOURR))
                  (= OBJPROC_4ATTRMAX (YESTERDAY OBJPROC_4ATTRNEIGHBOURR))
                  (> OBJPROC_4ATTRNEIGHBOURR OBJPROC_4ATTRMAX)
                  (> OBJPROC_4ATTRNEIGHBOURR OBJPROC_4PARAMTWO_NR)
                  (<= OBJPROC_4ATTRNEIGHBOURR OBJPROC_4ATTRMAX)
                  (<= OBJPROC_4ATTRNEIGHBOURR OBJPROC_4PARAMTWO_NR)
                  (= OBJPROC_4ATTRACTIVE 1)
                  (= OBJPROC_4ATTRMAX OBJPROC_4ATTRMYNUMBER)
                  (= OBJPROC_0PARAMONE_NR OBJPROC_4ATTRMYNUMBER)
                  (= OBJPROC_0PARAMONE_NR (YESTERDAY OBJPROC_4PARAMONE_NR))
                  (= OBJPROC_4ATTRACTIVE 0)
                  (= OBJPROC_4ATTRMAX (YESTERDAY OBJPROC_4ATTRMAX))
                  (= OBJPROC_4ATTRNEIGHBOURR
                     (YESTERDAY OBJPROC_4ATTRNEIGHBOURR))
                  (= OBJPROC_4ATTRACTIVE (YESTERDAY OBJPROC_4ATTRACTIVE))
                  (= OBJPROC_4ATTRMYNUMBER (YESTERDAY OBJPROC_4ATTRMYNUMBER)))
This is AE2SBVZOT.

1. processing formula
Used boolean propositions: 
((= OBJPROC_3ATTRMYNUMBER OBJPROC_4ATTRMYNUMBER)
 (= OBJPROC_2ATTRMYNUMBER OBJPROC_4ATTRMYNUMBER)
 (= OBJPROC_2ATTRMYNUMBER OBJPROC_3ATTRMYNUMBER)
 (= OBJPROC_1ATTRMYNUMBER OBJPROC_4ATTRMYNUMBER)
 (= OBJPROC_1ATTRMYNUMBER OBJPROC_3ATTRMYNUMBER)
 (= OBJPROC_1ATTRMYNUMBER OBJPROC_2ATTRMYNUMBER)
 (= OBJPROC_0ATTRMYNUMBER OBJPROC_4ATTRMYNUMBER)
 (= OBJPROC_0ATTRMYNUMBER OBJPROC_3ATTRMYNUMBER)
 (= OBJPROC_0ATTRMYNUMBER OBJPROC_2ATTRMYNUMBER)
 (= OBJPROC_0ATTRMYNUMBER OBJPROC_1ATTRMYNUMBER)
 (= OBJPROC_2PARAMWIN_NR (YESTERDAY OBJPROC_1PARAMONE_NR))
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0QOCPEESMKMVNP3A9VW_GUARD
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0QOCPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_2PARAMTWO_NR (YESTERDAY OBJPROC_1PARAMTWO_NR))
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0POCPEESMKMVNP3A9VW_GUARD
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0POCPEESMKMVNP3A9VW_TRIGGER
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0QECPEESMKMVNP3A9VW_GUARD
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0QECPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_2PARAMWIN_NR (YESTERDAY OBJPROC_1PARAMWIN_NR))
 (= OBJPROC_1PARAMWIN_NR OBJPROC_1ATTRMYNUMBER)
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0QUCPEESMKMVNP3A9VW_GUARD
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0QUCPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_1ATTRNEIGHBOURR (YESTERDAY OBJPROC_1PARAMONE_NR))
 (= OBJPROC_2PARAMTWO_NR (YESTERDAY OBJPROC_1PARAMONE_NR))
 (= OBJPROC_1PARAMONE_NR OBJPROC_1ATTRMAX)
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0PECPEESMKMVNP3A9VW_GUARD
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0PECPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_2PARAMONE_NR (YESTERDAY OBJPROC_1ATTRNEIGHBOURR))
 (= OBJPROC_1ATTRMAX (YESTERDAY OBJPROC_1ATTRNEIGHBOURR))
 (> OBJPROC_1ATTRNEIGHBOURR OBJPROC_1ATTRMAX)
 (> OBJPROC_1ATTRNEIGHBOURR OBJPROC_1PARAMTWO_NR)
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0PUCPEESMKMVNP3A9VW_GUARD
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0PUCPEESMKMVNP3A9VW_TRIGGER
 (<= OBJPROC_1ATTRNEIGHBOURR OBJPROC_1ATTRMAX)
 (<= OBJPROC_1ATTRNEIGHBOURR OBJPROC_1PARAMTWO_NR) (= OBJPROC_1ATTRACTIVE 1)
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0P_CPEESMKMVNP3A9VW_GUARD
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0P_CPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_1ATTRMAX OBJPROC_1ATTRMYNUMBER)
 (= OBJPROC_2PARAMONE_NR OBJPROC_1ATTRMYNUMBER)
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0OUCPEESMKMVNP3A9VW_TIMECONDITION
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0OUCPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_2PARAMONE_NR (YESTERDAY OBJPROC_1PARAMONE_NR))
 (= OBJPROC_1ATTRACTIVE 0)
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0QOCPEESMKMVNP3A9VW
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0POCPEESMKMVNP3A9VW
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0PECPEESMKMVNP3A9VW
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0PUCPEESMKMVNP3A9VW
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0P-CPEESMKMVNP3A9VW
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0O-CPEESMKMVNP3A9VW
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0O_CPEESMKMVNP3A9VW_GUARD
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0O_CPEESMKMVNP3A9VW_TRIGGER
 OBJPROC_1_STDPROCESS_SM_STATEMAIN_EXIT OBJPROC_1_STDPROCESS_SM_STATEMAIN_ENTER
 $OBJPROC_1_STDPROCESS_SM_STATEMAIN
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0OUCPEESMKMVNP3A9VW
 OBJPROC_1_STDPROCESS_SM_STATEINIT_EXIT OBJPROC_1_STDPROCESS_SM_STATEINIT_ENTER
 $OBJPROC_1_STDPROCESS_SM_STATEINIT OBJPROC_1_STDPROCESS_SM_STATELOST_EXIT
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0QUCPEESMKMVNP3A9VW
 OBJPROC_1_STDPROCESS_SM_STATELOST_ENTER $OBJPROC_1_STDPROCESS_SM_STATELOST
 OBJPROC_1_STDPROCESS_SM_STATEWIN_EXIT
 OBJPROC_1_STDPROCESS_SM_TRANSITION_OLP0QECPEESMKMVNP3A9VW
 OBJPROC_1_STDPROCESS_SM_STATEWIN_ENTER $OBJPROC_1_STDPROCESS_SM_STATEWIN
 (= OBJPROC_1ATTRMAX (YESTERDAY OBJPROC_1ATTRMAX))
 OBJPROC_1ASSIGNMENT_OLP0PUCPEESMKMVNP3A9VWMAX
 OBJPROC_1ASSIGNMENT_OLP0OUCPEESMKMVNP3A9VWMAX
 (= OBJPROC_1ATTRNEIGHBOURR (YESTERDAY OBJPROC_1ATTRNEIGHBOURR))
 OBJPROC_1ASSIGNMENT_OLP0PECPEESMKMVNP3A9VWNEIGHBOURR
 (= OBJPROC_1ATTRACTIVE (YESTERDAY OBJPROC_1ATTRACTIVE))
 OBJPROC_1ASSIGNMENT_OLP0P-CPEESMKMVNP3A9VWACTIVE
 (= OBJPROC_1ATTRMYNUMBER (YESTERDAY OBJPROC_1ATTRMYNUMBER)) OBJPROC_1OPWINNER
 OBJPROC_1OPTWO OBJPROC_1OPONE
 (= OBJPROC_1PARAMWIN_NR (YESTERDAY OBJPROC_0PARAMONE_NR))
 OBJPROC_1OPWINNERTR_OLP0QOCPEESMKMVNP3A9VW_CALL
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0QOCPEESMKMVNP3A9VW_GUARD
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0QOCPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_1PARAMTWO_NR (YESTERDAY OBJPROC_0PARAMTWO_NR))
 OBJPROC_1OPTWOTR_OLP0POCPEESMKMVNP3A9VW_CALL
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0POCPEESMKMVNP3A9VW_GUARD
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0POCPEESMKMVNP3A9VW_TRIGGER
 OBJPROC_1OPWINNERTR_OLP0QECPEESMKMVNP3A9VW_CALL
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0QECPEESMKMVNP3A9VW_GUARD
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0QECPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_1PARAMWIN_NR (YESTERDAY OBJPROC_0PARAMWIN_NR))
 OBJPROC_1OPWINNERTR_OLP0QUCPEESMKMVNP3A9VW_CALL
 (= OBJPROC_0PARAMWIN_NR OBJPROC_0ATTRMYNUMBER)
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0QUCPEESMKMVNP3A9VW_GUARD
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0QUCPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_0ATTRNEIGHBOURR (YESTERDAY OBJPROC_0PARAMONE_NR))
 (= OBJPROC_1PARAMTWO_NR (YESTERDAY OBJPROC_0PARAMONE_NR))
 OBJPROC_1OPTWOTR_OLP0PECPEESMKMVNP3A9VW_CALL
 (= OBJPROC_0PARAMONE_NR OBJPROC_0ATTRMAX)
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0PECPEESMKMVNP3A9VW_GUARD
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0PECPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_1PARAMONE_NR (YESTERDAY OBJPROC_0ATTRNEIGHBOURR))
 OBJPROC_1OPONETR_OLP0PUCPEESMKMVNP3A9VW_CALL
 (= OBJPROC_0ATTRMAX (YESTERDAY OBJPROC_0ATTRNEIGHBOURR))
 (> OBJPROC_0ATTRNEIGHBOURR OBJPROC_0ATTRMAX)
 (> OBJPROC_0ATTRNEIGHBOURR OBJPROC_0PARAMTWO_NR)
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0PUCPEESMKMVNP3A9VW_GUARD
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0PUCPEESMKMVNP3A9VW_TRIGGER
 (<= OBJPROC_0ATTRNEIGHBOURR OBJPROC_0ATTRMAX)
 (<= OBJPROC_0ATTRNEIGHBOURR OBJPROC_0PARAMTWO_NR) (= OBJPROC_0ATTRACTIVE 1)
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0P_CPEESMKMVNP3A9VW_GUARD
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0P_CPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_0ATTRMAX OBJPROC_0ATTRMYNUMBER)
 (= OBJPROC_1PARAMONE_NR OBJPROC_0ATTRMYNUMBER)
 OBJPROC_1OPONETR_OLP0OUCPEESMKMVNP3A9VW_CALL
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0OUCPEESMKMVNP3A9VW_TIMECONDITION
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0OUCPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_1PARAMONE_NR (YESTERDAY OBJPROC_0PARAMONE_NR))
 OBJPROC_1OPONETR_OLP0O-CPEESMKMVNP3A9VW_CALL (= OBJPROC_0ATTRACTIVE 0)
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0QOCPEESMKMVNP3A9VW
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0POCPEESMKMVNP3A9VW
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0PECPEESMKMVNP3A9VW
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0PUCPEESMKMVNP3A9VW
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0P-CPEESMKMVNP3A9VW
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0O-CPEESMKMVNP3A9VW
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0O_CPEESMKMVNP3A9VW_GUARD
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0O_CPEESMKMVNP3A9VW_TRIGGER
 OBJPROC_0_STDPROCESS_SM_STATEMAIN_EXIT OBJPROC_0_STDPROCESS_SM_STATEMAIN_ENTER
 $OBJPROC_0_STDPROCESS_SM_STATEMAIN
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0OUCPEESMKMVNP3A9VW
 OBJPROC_0_STDPROCESS_SM_STATEINIT_EXIT OBJPROC_0_STDPROCESS_SM_STATEINIT_ENTER
 $OBJPROC_0_STDPROCESS_SM_STATEINIT OBJPROC_0_STDPROCESS_SM_STATELOST_EXIT
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0QUCPEESMKMVNP3A9VW
 OBJPROC_0_STDPROCESS_SM_STATELOST_ENTER $OBJPROC_0_STDPROCESS_SM_STATELOST
 OBJPROC_0_STDPROCESS_SM_STATEWIN_EXIT
 OBJPROC_0_STDPROCESS_SM_TRANSITION_OLP0QECPEESMKMVNP3A9VW
 OBJPROC_0_STDPROCESS_SM_STATEWIN_ENTER $OBJPROC_0_STDPROCESS_SM_STATEWIN
 (= OBJPROC_0ATTRMAX (YESTERDAY OBJPROC_0ATTRMAX))
 OBJPROC_0ASSIGNMENT_OLP0PUCPEESMKMVNP3A9VWMAX
 OBJPROC_0ASSIGNMENT_OLP0OUCPEESMKMVNP3A9VWMAX
 (= OBJPROC_0ATTRNEIGHBOURR (YESTERDAY OBJPROC_0ATTRNEIGHBOURR))
 OBJPROC_0ASSIGNMENT_OLP0PECPEESMKMVNP3A9VWNEIGHBOURR
 (= OBJPROC_0ATTRACTIVE (YESTERDAY OBJPROC_0ATTRACTIVE))
 OBJPROC_0ASSIGNMENT_OLP0P-CPEESMKMVNP3A9VWACTIVE
 (= OBJPROC_0ATTRMYNUMBER (YESTERDAY OBJPROC_0ATTRMYNUMBER)) OBJPROC_0OPWINNER
 OBJPROC_0OPTWO OBJPROC_0OPONE
 (= OBJPROC_3PARAMWIN_NR (YESTERDAY OBJPROC_2PARAMONE_NR))
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0QOCPEESMKMVNP3A9VW_GUARD
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0QOCPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_3PARAMTWO_NR (YESTERDAY OBJPROC_2PARAMTWO_NR))
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0POCPEESMKMVNP3A9VW_GUARD
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0POCPEESMKMVNP3A9VW_TRIGGER
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0QECPEESMKMVNP3A9VW_GUARD
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0QECPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_3PARAMWIN_NR (YESTERDAY OBJPROC_2PARAMWIN_NR))
 (= OBJPROC_2PARAMWIN_NR OBJPROC_2ATTRMYNUMBER)
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0QUCPEESMKMVNP3A9VW_GUARD
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0QUCPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_2ATTRNEIGHBOURR (YESTERDAY OBJPROC_2PARAMONE_NR))
 (= OBJPROC_3PARAMTWO_NR (YESTERDAY OBJPROC_2PARAMONE_NR))
 (= OBJPROC_2PARAMONE_NR OBJPROC_2ATTRMAX)
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0PECPEESMKMVNP3A9VW_GUARD
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0PECPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_3PARAMONE_NR (YESTERDAY OBJPROC_2ATTRNEIGHBOURR))
 (= OBJPROC_2ATTRMAX (YESTERDAY OBJPROC_2ATTRNEIGHBOURR))
 (> OBJPROC_2ATTRNEIGHBOURR OBJPROC_2ATTRMAX)
 (> OBJPROC_2ATTRNEIGHBOURR OBJPROC_2PARAMTWO_NR)
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0PUCPEESMKMVNP3A9VW_GUARD
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0PUCPEESMKMVNP3A9VW_TRIGGER
 (<= OBJPROC_2ATTRNEIGHBOURR OBJPROC_2ATTRMAX)
 (<= OBJPROC_2ATTRNEIGHBOURR OBJPROC_2PARAMTWO_NR) (= OBJPROC_2ATTRACTIVE 1)
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0P_CPEESMKMVNP3A9VW_GUARD
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0P_CPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_2ATTRMAX OBJPROC_2ATTRMYNUMBER)
 (= OBJPROC_3PARAMONE_NR OBJPROC_2ATTRMYNUMBER)
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0OUCPEESMKMVNP3A9VW_TIMECONDITION
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0OUCPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_3PARAMONE_NR (YESTERDAY OBJPROC_2PARAMONE_NR))
 (= OBJPROC_2ATTRACTIVE 0)
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0QOCPEESMKMVNP3A9VW
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0POCPEESMKMVNP3A9VW
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0PECPEESMKMVNP3A9VW
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0PUCPEESMKMVNP3A9VW
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0P-CPEESMKMVNP3A9VW
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0O-CPEESMKMVNP3A9VW
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0O_CPEESMKMVNP3A9VW_GUARD
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0O_CPEESMKMVNP3A9VW_TRIGGER
 OBJPROC_2_STDPROCESS_SM_STATEMAIN_EXIT OBJPROC_2_STDPROCESS_SM_STATEMAIN_ENTER
 $OBJPROC_2_STDPROCESS_SM_STATEMAIN
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0OUCPEESMKMVNP3A9VW
 OBJPROC_2_STDPROCESS_SM_STATEINIT_EXIT OBJPROC_2_STDPROCESS_SM_STATEINIT_ENTER
 $OBJPROC_2_STDPROCESS_SM_STATEINIT OBJPROC_2_STDPROCESS_SM_STATELOST_EXIT
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0QUCPEESMKMVNP3A9VW
 OBJPROC_2_STDPROCESS_SM_STATELOST_ENTER $OBJPROC_2_STDPROCESS_SM_STATELOST
 OBJPROC_2_STDPROCESS_SM_STATEWIN_EXIT
 OBJPROC_2_STDPROCESS_SM_TRANSITION_OLP0QECPEESMKMVNP3A9VW
 OBJPROC_2_STDPROCESS_SM_STATEWIN_ENTER $OBJPROC_2_STDPROCESS_SM_STATEWIN
 (= OBJPROC_2ATTRMAX (YESTERDAY OBJPROC_2ATTRMAX))
 OBJPROC_2ASSIGNMENT_OLP0PUCPEESMKMVNP3A9VWMAX
 OBJPROC_2ASSIGNMENT_OLP0OUCPEESMKMVNP3A9VWMAX
 (= OBJPROC_2ATTRNEIGHBOURR (YESTERDAY OBJPROC_2ATTRNEIGHBOURR))
 OBJPROC_2ASSIGNMENT_OLP0PECPEESMKMVNP3A9VWNEIGHBOURR
 (= OBJPROC_2ATTRACTIVE (YESTERDAY OBJPROC_2ATTRACTIVE))
 OBJPROC_2ASSIGNMENT_OLP0P-CPEESMKMVNP3A9VWACTIVE
 (= OBJPROC_2ATTRMYNUMBER (YESTERDAY OBJPROC_2ATTRMYNUMBER))
 OBJPROC_2OPWINNERTR_OLP0QUCPEESMKMVNP3A9VW_CALL
 OBJPROC_2OPWINNERTR_OLP0QOCPEESMKMVNP3A9VW_CALL
 OBJPROC_2OPWINNERTR_OLP0QECPEESMKMVNP3A9VW_CALL OBJPROC_2OPWINNER
 OBJPROC_2OPTWOTR_OLP0PECPEESMKMVNP3A9VW_CALL
 OBJPROC_2OPTWOTR_OLP0POCPEESMKMVNP3A9VW_CALL OBJPROC_2OPTWO
 OBJPROC_2OPONETR_OLP0O-CPEESMKMVNP3A9VW_CALL
 OBJPROC_2OPONETR_OLP0PUCPEESMKMVNP3A9VW_CALL
 OBJPROC_2OPONETR_OLP0OUCPEESMKMVNP3A9VW_CALL OBJPROC_2OPONE
 (= OBJPROC_4PARAMWIN_NR (YESTERDAY OBJPROC_3PARAMONE_NR))
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0QOCPEESMKMVNP3A9VW_GUARD
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0QOCPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_4PARAMTWO_NR (YESTERDAY OBJPROC_3PARAMTWO_NR))
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0POCPEESMKMVNP3A9VW_GUARD
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0POCPEESMKMVNP3A9VW_TRIGGER
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0QECPEESMKMVNP3A9VW_GUARD
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0QECPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_4PARAMWIN_NR (YESTERDAY OBJPROC_3PARAMWIN_NR))
 (= OBJPROC_3PARAMWIN_NR OBJPROC_3ATTRMYNUMBER)
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0QUCPEESMKMVNP3A9VW_GUARD
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0QUCPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_3ATTRNEIGHBOURR (YESTERDAY OBJPROC_3PARAMONE_NR))
 (= OBJPROC_4PARAMTWO_NR (YESTERDAY OBJPROC_3PARAMONE_NR))
 (= OBJPROC_3PARAMONE_NR OBJPROC_3ATTRMAX)
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0PECPEESMKMVNP3A9VW_GUARD
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0PECPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_4PARAMONE_NR (YESTERDAY OBJPROC_3ATTRNEIGHBOURR))
 (= OBJPROC_3ATTRMAX (YESTERDAY OBJPROC_3ATTRNEIGHBOURR))
 (> OBJPROC_3ATTRNEIGHBOURR OBJPROC_3ATTRMAX)
 (> OBJPROC_3ATTRNEIGHBOURR OBJPROC_3PARAMTWO_NR)
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0PUCPEESMKMVNP3A9VW_GUARD
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0PUCPEESMKMVNP3A9VW_TRIGGER
 (<= OBJPROC_3ATTRNEIGHBOURR OBJPROC_3ATTRMAX)
 (<= OBJPROC_3ATTRNEIGHBOURR OBJPROC_3PARAMTWO_NR) (= OBJPROC_3ATTRACTIVE 1)
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0P_CPEESMKMVNP3A9VW_GUARD
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0P_CPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_3ATTRMAX OBJPROC_3ATTRMYNUMBER)
 (= OBJPROC_4PARAMONE_NR OBJPROC_3ATTRMYNUMBER)
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0OUCPEESMKMVNP3A9VW_TIMECONDITION
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0OUCPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_4PARAMONE_NR (YESTERDAY OBJPROC_3PARAMONE_NR))
 (= OBJPROC_3ATTRACTIVE 0)
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0QOCPEESMKMVNP3A9VW
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0POCPEESMKMVNP3A9VW
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0PECPEESMKMVNP3A9VW
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0PUCPEESMKMVNP3A9VW
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0P-CPEESMKMVNP3A9VW
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0O-CPEESMKMVNP3A9VW
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0O_CPEESMKMVNP3A9VW_GUARD
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0O_CPEESMKMVNP3A9VW_TRIGGER
 OBJPROC_3_STDPROCESS_SM_STATEMAIN_EXIT OBJPROC_3_STDPROCESS_SM_STATEMAIN_ENTER
 $OBJPROC_3_STDPROCESS_SM_STATEMAIN
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0OUCPEESMKMVNP3A9VW
 OBJPROC_3_STDPROCESS_SM_STATEINIT_EXIT OBJPROC_3_STDPROCESS_SM_STATEINIT_ENTER
 $OBJPROC_3_STDPROCESS_SM_STATEINIT OBJPROC_3_STDPROCESS_SM_STATELOST_EXIT
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0QUCPEESMKMVNP3A9VW
 OBJPROC_3_STDPROCESS_SM_STATELOST_ENTER $OBJPROC_3_STDPROCESS_SM_STATELOST
 OBJPROC_3_STDPROCESS_SM_STATEWIN_EXIT
 OBJPROC_3_STDPROCESS_SM_TRANSITION_OLP0QECPEESMKMVNP3A9VW
 OBJPROC_3_STDPROCESS_SM_STATEWIN_ENTER $OBJPROC_3_STDPROCESS_SM_STATEWIN
 (= OBJPROC_3ATTRMAX (YESTERDAY OBJPROC_3ATTRMAX))
 OBJPROC_3ASSIGNMENT_OLP0PUCPEESMKMVNP3A9VWMAX
 OBJPROC_3ASSIGNMENT_OLP0OUCPEESMKMVNP3A9VWMAX
 (= OBJPROC_3ATTRNEIGHBOURR (YESTERDAY OBJPROC_3ATTRNEIGHBOURR))
 OBJPROC_3ASSIGNMENT_OLP0PECPEESMKMVNP3A9VWNEIGHBOURR
 (= OBJPROC_3ATTRACTIVE (YESTERDAY OBJPROC_3ATTRACTIVE))
 OBJPROC_3ASSIGNMENT_OLP0P-CPEESMKMVNP3A9VWACTIVE
 (= OBJPROC_3ATTRMYNUMBER (YESTERDAY OBJPROC_3ATTRMYNUMBER))
 OBJPROC_3OPWINNERTR_OLP0QUCPEESMKMVNP3A9VW_CALL
 OBJPROC_3OPWINNERTR_OLP0QOCPEESMKMVNP3A9VW_CALL
 OBJPROC_3OPWINNERTR_OLP0QECPEESMKMVNP3A9VW_CALL OBJPROC_3OPWINNER
 OBJPROC_3OPTWOTR_OLP0PECPEESMKMVNP3A9VW_CALL
 OBJPROC_3OPTWOTR_OLP0POCPEESMKMVNP3A9VW_CALL OBJPROC_3OPTWO
 OBJPROC_3OPONETR_OLP0OUCPEESMKMVNP3A9VW_CALL
 OBJPROC_3OPONETR_OLP0PUCPEESMKMVNP3A9VW_CALL
 OBJPROC_3OPONETR_OLP0O-CPEESMKMVNP3A9VW_CALL OBJPROC_3OPONE
 OBJMONITOR_STDMONITOR_SM_TRANSITION_OLQBQOCPEESMKMVNP3A9VW_TRIGGER
 OBJMONITOR_STDMONITOR_SM_TRANSITION_OLQBQECPEESMKMVNP3A9VW_TRIGGER
 OBJMONITOR_STDMONITOR_SM_STATESTATE_ERROR_EXIT
 OBJMONITOR_STDMONITOR_SM_STATESTATE_ERROR_ENTER
 $OBJMONITOR_STDMONITOR_SM_STATESTATE_ERROR
 OBJMONITOR_STDMONITOR_SM_TRANSITION_OLQBQECPEESMKMVNP3A9VW
 OBJMONITOR_STDMONITOR_SM_STATESTATE_WINNER_EXIT
 OBJMONITOR_STDMONITOR_SM_STATESTATE_WINNER_ENTER
 $OBJMONITOR_STDMONITOR_SM_STATESTATE_WINNER
 OBJMONITOR_STDMONITOR_SM_TRANSITION_OLQBQOCPEESMKMVNP3A9VW
 OBJMONITOR_STDMONITOR_SM_STATESTATE_NO_WINNER_EXIT
 OBJMONITOR_STDMONITOR_SM_STATESTATE_NO_WINNER_ENTER
 $OBJMONITOR_STDMONITOR_SM_STATESTATE_NO_WINNER
 (= OBJPROC_0PARAMWIN_NR (YESTERDAY OBJPROC_4PARAMONE_NR))
 OBJPROC_0OPWINNERTR_OLP0QOCPEESMKMVNP3A9VW_CALL
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0QOCPEESMKMVNP3A9VW_GUARD
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0QOCPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_0PARAMTWO_NR (YESTERDAY OBJPROC_4PARAMTWO_NR))
 OBJPROC_0OPTWOTR_OLP0POCPEESMKMVNP3A9VW_CALL
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0POCPEESMKMVNP3A9VW_GUARD
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0POCPEESMKMVNP3A9VW_TRIGGER
 OBJPROC_0OPWINNERTR_OLP0QECPEESMKMVNP3A9VW_CALL
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0QECPEESMKMVNP3A9VW_GUARD
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0QECPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_0PARAMWIN_NR (YESTERDAY OBJPROC_4PARAMWIN_NR))
 OBJPROC_0OPWINNERTR_OLP0QUCPEESMKMVNP3A9VW_CALL
 (= OBJPROC_4PARAMWIN_NR OBJPROC_4ATTRMYNUMBER)
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0QUCPEESMKMVNP3A9VW_GUARD
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0QUCPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_4ATTRNEIGHBOURR (YESTERDAY OBJPROC_4PARAMONE_NR))
 (= OBJPROC_0PARAMTWO_NR (YESTERDAY OBJPROC_4PARAMONE_NR))
 OBJPROC_0OPTWOTR_OLP0PECPEESMKMVNP3A9VW_CALL
 (= OBJPROC_4PARAMONE_NR OBJPROC_4ATTRMAX)
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0PECPEESMKMVNP3A9VW_GUARD
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0PECPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_0PARAMONE_NR (YESTERDAY OBJPROC_4ATTRNEIGHBOURR))
 OBJPROC_0OPONETR_OLP0PUCPEESMKMVNP3A9VW_CALL
 (= OBJPROC_4ATTRMAX (YESTERDAY OBJPROC_4ATTRNEIGHBOURR))
 (> OBJPROC_4ATTRNEIGHBOURR OBJPROC_4ATTRMAX)
 (> OBJPROC_4ATTRNEIGHBOURR OBJPROC_4PARAMTWO_NR)
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0PUCPEESMKMVNP3A9VW_GUARD
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0PUCPEESMKMVNP3A9VW_TRIGGER
 (<= OBJPROC_4ATTRNEIGHBOURR OBJPROC_4ATTRMAX)
 (<= OBJPROC_4ATTRNEIGHBOURR OBJPROC_4PARAMTWO_NR) (= OBJPROC_4ATTRACTIVE 1)
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0P_CPEESMKMVNP3A9VW_GUARD
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0P_CPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_4ATTRMAX OBJPROC_4ATTRMYNUMBER)
 (= OBJPROC_0PARAMONE_NR OBJPROC_4ATTRMYNUMBER)
 OBJPROC_0OPONETR_OLP0OUCPEESMKMVNP3A9VW_CALL
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0OUCPEESMKMVNP3A9VW_TIMECONDITION
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0OUCPEESMKMVNP3A9VW_TRIGGER
 (= OBJPROC_0PARAMONE_NR (YESTERDAY OBJPROC_4PARAMONE_NR))
 OBJPROC_0OPONETR_OLP0O-CPEESMKMVNP3A9VW_CALL (= OBJPROC_4ATTRACTIVE 0)
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0QOCPEESMKMVNP3A9VW
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0POCPEESMKMVNP3A9VW
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0PECPEESMKMVNP3A9VW
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0PUCPEESMKMVNP3A9VW
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0P-CPEESMKMVNP3A9VW
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0O-CPEESMKMVNP3A9VW
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0O_CPEESMKMVNP3A9VW_GUARD
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0O_CPEESMKMVNP3A9VW_TRIGGER
 OBJPROC_4_STDPROCESS_SM_STATEMAIN_EXIT OBJPROC_4_STDPROCESS_SM_STATEMAIN_ENTER
 $OBJPROC_4_STDPROCESS_SM_STATEMAIN
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0OUCPEESMKMVNP3A9VW
 OBJPROC_4_STDPROCESS_SM_STATEINIT_EXIT OBJPROC_4_STDPROCESS_SM_STATEINIT_ENTER
 $OBJPROC_4_STDPROCESS_SM_STATEINIT OBJPROC_4_STDPROCESS_SM_STATELOST_EXIT
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0QUCPEESMKMVNP3A9VW
 OBJPROC_4_STDPROCESS_SM_STATELOST_ENTER $OBJPROC_4_STDPROCESS_SM_STATELOST
 OBJPROC_4_STDPROCESS_SM_STATEWIN_EXIT
 OBJPROC_4_STDPROCESS_SM_TRANSITION_OLP0QECPEESMKMVNP3A9VW
 OBJPROC_4_STDPROCESS_SM_STATEWIN_ENTER $OBJPROC_4_STDPROCESS_SM_STATEWIN
 MADESYSTEMSTART (= OBJPROC_4ATTRMAX (YESTERDAY OBJPROC_4ATTRMAX))
 OBJPROC_4ASSIGNMENT_OLP0PUCPEESMKMVNP3A9VWMAX
 OBJPROC_4ASSIGNMENT_OLP0OUCPEESMKMVNP3A9VWMAX
 (= OBJPROC_4ATTRNEIGHBOURR (YESTERDAY OBJPROC_4ATTRNEIGHBOURR))
 OBJPROC_4ASSIGNMENT_OLP0PECPEESMKMVNP3A9VWNEIGHBOURR
 (= OBJPROC_4ATTRACTIVE (YESTERDAY OBJPROC_4ATTRACTIVE))
 OBJPROC_4ASSIGNMENT_OLP0P-CPEESMKMVNP3A9VWACTIVE
 (= OBJPROC_4ATTRMYNUMBER (YESTERDAY OBJPROC_4ATTRMYNUMBER))
 OBJPROC_4OPWINNERTR_OLP0QUCPEESMKMVNP3A9VW_CALL
 OBJPROC_4OPWINNERTR_OLP0QECPEESMKMVNP3A9VW_CALL
 OBJPROC_4OPWINNERTR_OLP0QOCPEESMKMVNP3A9VW_CALL OBJPROC_4OPWINNER
 OBJPROC_4OPTWOTR_OLP0PECPEESMKMVNP3A9VW_CALL
 OBJPROC_4OPTWOTR_OLP0POCPEESMKMVNP3A9VW_CALL OBJPROC_4OPTWO
 OBJPROC_4OPONETR_OLP0O-CPEESMKMVNP3A9VW_CALL
 OBJPROC_4OPONETR_OLP0OUCPEESMKMVNP3A9VW_CALL
 OBJPROC_4OPONETR_OLP0PUCPEESMKMVNP3A9VW_CALL OBJPROC_4OPONE
 OBJPROC_1OPWE_HAVE_WINNERTR_OLP0QOCPEESMKMVNP3A9VW_CALL
 OBJPROC_0OPWE_HAVE_WINNERTR_OLP0QOCPEESMKMVNP3A9VW_CALL
 OBJPROC_2OPWE_HAVE_WINNERTR_OLP0QOCPEESMKMVNP3A9VW_CALL
 OBJPROC_3OPWE_HAVE_WINNERTR_OLP0QOCPEESMKMVNP3A9VW_CALL
 OBJPROC_4OPWE_HAVE_WINNERTR_OLP0QOCPEESMKMVNP3A9VW_CALL WE_HAVE_WINNER)

Used arithmetic terms: 
NIL

Used timed arithmetic terms: 
(OBJPROC_1ATTRMAX OBJPROC_1ATTRNEIGHBOURR OBJPROC_1ATTRACTIVE
 OBJPROC_1ATTRMYNUMBER OBJPROC_1PARAMWIN_NR OBJPROC_1PARAMTWO_NR
 OBJPROC_1PARAMONE_NR OBJPROC_0ATTRMAX OBJPROC_0ATTRNEIGHBOURR
 OBJPROC_0ATTRACTIVE OBJPROC_0ATTRMYNUMBER OBJPROC_2PARAMWIN_NR
 OBJPROC_2PARAMTWO_NR OBJPROC_2PARAMONE_NR OBJPROC_2ATTRMAX
 OBJPROC_2ATTRNEIGHBOURR OBJPROC_2ATTRACTIVE OBJPROC_2ATTRMYNUMBER
 OBJPROC_3PARAMWIN_NR OBJPROC_3PARAMTWO_NR OBJPROC_3PARAMONE_NR
 OBJPROC_3ATTRMAX OBJPROC_3ATTRNEIGHBOURR OBJPROC_3ATTRACTIVE
 OBJPROC_3ATTRMYNUMBER OBJPROC_0PARAMWIN_NR OBJPROC_4PARAMWIN_NR
 OBJPROC_0PARAMTWO_NR OBJPROC_4PARAMTWO_NR OBJPROC_4PARAMONE_NR
 OBJPROC_0PARAMONE_NR OBJPROC_4ATTRMAX OBJPROC_4ATTRNEIGHBOURR
 OBJPROC_4ATTRACTIVE OBJPROC_4ATTRMYNUMBER)

Graph dependency over terms 
(((YESTERDAY OBJPROC_4ATTRACTIVE) OBJPROC_4ATTRACTIVE
  (YESTERDAY OBJPROC_3ATTRACTIVE) 0 (YESTERDAY OBJPROC_2ATTRACTIVE) 0
  (YESTERDAY OBJPROC_0ATTRACTIVE) 0 OBJPROC_4ATTRACTIVE OBJPROC_3ATTRACTIVE
  OBJPROC_2ATTRACTIVE OBJPROC_0ATTRACTIVE (YESTERDAY OBJPROC_1ATTRACTIVE) 0 1
  OBJPROC_1ATTRACTIVE)
 ((YESTERDAY OBJPROC_4ATTRMYNUMBER) (YESTERDAY OBJPROC_4ATTRNEIGHBOURR)
  (YESTERDAY OBJPROC_4ATTRMAX) OBJPROC_4ATTRMYNUMBER OBJPROC_4ATTRNEIGHBOURR
  OBJPROC_4ATTRNEIGHBOURR (YESTERDAY OBJPROC_4ATTRNEIGHBOURR)
  OBJPROC_4ATTRNEIGHBOURR (YESTERDAY OBJPROC_4PARAMONE_NR)
  OBJPROC_4ATTRMYNUMBER (YESTERDAY OBJPROC_4ATTRNEIGHBOURR)
  OBJPROC_4ATTRNEIGHBOURR OBJPROC_4ATTRNEIGHBOURR
  (YESTERDAY OBJPROC_3PARAMTWO_NR) OBJPROC_4ATTRMAX
  (YESTERDAY OBJPROC_4PARAMONE_NR) (YESTERDAY OBJPROC_4PARAMTWO_NR)
  OBJPROC_4ATTRMYNUMBER (YESTERDAY OBJPROC_3PARAMWIN_NR)
  (YESTERDAY OBJPROC_4PARAMWIN_NR) (YESTERDAY OBJPROC_4PARAMONE_NR)
  (YESTERDAY OBJPROC_3ATTRMYNUMBER) OBJPROC_4PARAMONE_NR OBJPROC_4ATTRMYNUMBER
  OBJPROC_4PARAMONE_NR OBJPROC_4PARAMONE_NR OBJPROC_4PARAMTWO_NR
  OBJPROC_4PARAMWIN_NR (YESTERDAY OBJPROC_3ATTRNEIGHBOURR)
  (YESTERDAY OBJPROC_3PARAMONE_NR) (YESTERDAY OBJPROC_3ATTRMAX)
  OBJPROC_3ATTRMYNUMBER OBJPROC_3ATTRNEIGHBOURR OBJPROC_3ATTRNEIGHBOURR
  (YESTERDAY OBJPROC_3ATTRNEIGHBOURR) OBJPROC_3ATTRNEIGHBOURR
  OBJPROC_3ATTRNEIGHBOURR (YESTERDAY OBJPROC_2PARAMTWO_NR) OBJPROC_3ATTRMAX
  OBJPROC_3ATTRMYNUMBER (YESTERDAY OBJPROC_2PARAMWIN_NR)
  (YESTERDAY OBJPROC_2ATTRMYNUMBER) OBJPROC_3PARAMONE_NR OBJPROC_3ATTRMYNUMBER
  OBJPROC_4ATTRMYNUMBER OBJPROC_3PARAMONE_NR OBJPROC_3PARAMONE_NR
  OBJPROC_3PARAMTWO_NR OBJPROC_3PARAMWIN_NR (YESTERDAY OBJPROC_2ATTRNEIGHBOURR)
  (YESTERDAY OBJPROC_2PARAMONE_NR) (YESTERDAY OBJPROC_2ATTRMAX)
  OBJPROC_2ATTRMYNUMBER OBJPROC_2ATTRNEIGHBOURR OBJPROC_2ATTRNEIGHBOURR
  (YESTERDAY OBJPROC_2ATTRNEIGHBOURR) OBJPROC_2ATTRMAX OBJPROC_2ATTRMYNUMBER
  (YESTERDAY OBJPROC_1PARAMWIN_NR) (YESTERDAY OBJPROC_0ATTRMYNUMBER)
  OBJPROC_0PARAMWIN_NR OBJPROC_2ATTRMYNUMBER OBJPROC_3ATTRMYNUMBER
  OBJPROC_4ATTRMYNUMBER (YESTERDAY OBJPROC_0ATTRMAX) OBJPROC_0ATTRMYNUMBER
  (YESTERDAY OBJPROC_0ATTRNEIGHBOURR) OBJPROC_0PARAMONE_NR
  (YESTERDAY OBJPROC_0ATTRNEIGHBOURR) OBJPROC_0PARAMTWO_NR OBJPROC_0ATTRMAX
  OBJPROC_0PARAMTWO_NR OBJPROC_0ATTRMAX OBJPROC_0ATTRNEIGHBOURR
  (YESTERDAY OBJPROC_0PARAMONE_NR) OBJPROC_0ATTRMYNUMBER
  (YESTERDAY OBJPROC_0ATTRNEIGHBOURR) (YESTERDAY OBJPROC_0PARAMONE_NR)
  (YESTERDAY OBJPROC_0PARAMTWO_NR) (YESTERDAY OBJPROC_0PARAMWIN_NR)
  (YESTERDAY OBJPROC_0PARAMONE_NR) (YESTERDAY OBJPROC_1ATTRMYNUMBER)
  OBJPROC_2PARAMONE_NR OBJPROC_1PARAMWIN_NR OBJPROC_0ATTRMYNUMBER
  OBJPROC_2ATTRMYNUMBER OBJPROC_3ATTRMYNUMBER OBJPROC_4ATTRMYNUMBER
  OBJPROC_2PARAMONE_NR (YESTERDAY OBJPROC_1ATTRMAX) OBJPROC_1ATTRMYNUMBER
  (YESTERDAY OBJPROC_1ATTRNEIGHBOURR) OBJPROC_1PARAMONE_NR
  (YESTERDAY OBJPROC_1ATTRNEIGHBOURR) OBJPROC_1PARAMTWO_NR OBJPROC_1ATTRMAX
  OBJPROC_1PARAMTWO_NR OBJPROC_1ATTRMAX OBJPROC_2PARAMONE_NR
  OBJPROC_1ATTRNEIGHBOURR OBJPROC_2PARAMWIN_NR OBJPROC_2ATTRNEIGHBOURR
  OBJPROC_2ATTRNEIGHBOURR (YESTERDAY OBJPROC_1PARAMONE_NR) OBJPROC_2PARAMTWO_NR
  (YESTERDAY OBJPROC_1PARAMTWO_NR)))

Related variables 
((OBJPROC_4ATTRACTIVE OBJPROC_3ATTRACTIVE OBJPROC_2ATTRACTIVE
  OBJPROC_0ATTRACTIVE 0 1 OBJPROC_1ATTRACTIVE)
 (OBJPROC_4ATTRNEIGHBOURR OBJPROC_4ATTRMAX OBJPROC_4PARAMONE_NR
  OBJPROC_4PARAMTWO_NR OBJPROC_4PARAMWIN_NR OBJPROC_3ATTRNEIGHBOURR
  OBJPROC_3ATTRMAX OBJPROC_3PARAMONE_NR OBJPROC_3PARAMTWO_NR
  OBJPROC_3PARAMWIN_NR OBJPROC_2ATTRMAX OBJPROC_0ATTRMAX
  OBJPROC_0ATTRNEIGHBOURR OBJPROC_0PARAMTWO_NR OBJPROC_0PARAMWIN_NR
  OBJPROC_0PARAMONE_NR OBJPROC_1PARAMWIN_NR OBJPROC_0ATTRMYNUMBER
  OBJPROC_2ATTRMYNUMBER OBJPROC_3ATTRMYNUMBER OBJPROC_4ATTRMYNUMBER
  OBJPROC_1ATTRMYNUMBER OBJPROC_1ATTRMAX OBJPROC_2PARAMONE_NR
  OBJPROC_1ATTRNEIGHBOURR OBJPROC_2PARAMWIN_NR OBJPROC_2ATTRNEIGHBOURR
  OBJPROC_1PARAMONE_NR OBJPROC_2PARAMTWO_NR OBJPROC_1PARAMTWO_NR))

Time bound: 50

Number of Boolean variables: 
290
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
  3.834 seconds of real time
  0.004000 seconds of total run time (0.000000 user, 0.004000 system)
  0.10% CPU
  13,033,079,718 processor cycles
  32,288 bytes consed
  
---UNSAT---
Evaluation took:
  3.974 seconds of real time
  0.144000 seconds of total run time (0.132000 user, 0.012000 system)
  3.62% CPU
  13,512,892,921 processor cycles
  16,208,848 bytes consed
  