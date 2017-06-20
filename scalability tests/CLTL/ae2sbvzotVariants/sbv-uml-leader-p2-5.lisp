(asdf:operate 'asdf:load-op 'ae2sbvzot)
(use-package :trio-utils)
(defvar TSPACE 50)
(define-tvar OBJproc_4ATTRneighbourR *int*)
(define-tvar OBJproc_2ATTRmynumber *int*)
(define-tvar OBJproc_3ATTRneighbourR *int*)
(define-tvar OBJproc_0ATTRmynumber *int*)
(define-tvar OBJproc_1ATTRneighbourR *int*)
(define-tvar OBJproc_3PARAMone_nr *int*)
(define-tvar OBJproc_2PARAMone_nr *int*)
(define-tvar OBJproc_4ATTRmax *int*)
(define-tvar OBJproc_4ATTRmynumber *int*)
(define-tvar OBJproc_1PARAMwin_nr *int*)
(define-tvar OBJproc_0PARAMwin_nr *int*)
(define-tvar OBJproc_0PARAMtwo_nr *int*)
(define-tvar OBJproc_2PARAMtwo_nr *int*)
(define-tvar OBJproc_0ATTRneighbourR *int*)
(define-tvar OBJproc_4PARAMwin_nr *int*)
(define-tvar OBJproc_2ATTRactive *int*)
(define-tvar OBJproc_2PARAMwin_nr *int*)
(define-tvar OBJproc_4PARAMone_nr *int*)
(define-tvar OBJproc_2ATTRmax *int*)
(define-tvar OBJproc_1ATTRmax *int*)
(define-tvar OBJproc_0PARAMone_nr *int*)
(define-tvar OBJproc_3ATTRmax *int*)
(define-tvar OBJproc_2ATTRneighbourR *int*)
(define-tvar OBJproc_1ATTRactive *int*)
(define-tvar OBJproc_3PARAMwin_nr *int*)
(define-tvar OBJproc_3ATTRmynumber *int*)
(define-tvar OBJproc_0ATTRmax *int*)
(define-tvar OBJproc_4ATTRactive *int*)
(define-tvar OBJproc_1PARAMtwo_nr *int*)
(define-tvar OBJproc_0ATTRactive *int*)
(define-tvar OBJproc_4PARAMtwo_nr *int*)
(define-tvar OBJproc_1ATTRmynumber *int*)
(define-tvar OBJproc_1PARAMone_nr *int*)
(define-tvar OBJproc_3PARAMtwo_nr *int*)
(define-tvar OBJproc_3ATTRactive *int*)
(defvar AX1 
 (&& 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLASS DIAGRAM 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SIGNALS SEMANTICS
(<-> (-P- we_have_winner) (||  (-P- OBJproc_4OPwe_have_winnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_3OPwe_have_winnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_2OPwe_have_winnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_0OPwe_have_winnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_1OPwe_have_winnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL)))


;;proc_4SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_4OPone) (||  (-P- OBJproc_4OPoneTR_OLP0puCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_4OPoneTR_OLP0ouCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_4OPoneTR_OLP0o-CpEeSMKMvNp3A9vw_CALL)))

(<-> (-P- OBJproc_4OPtwo) (||  (-P- OBJproc_4OPtwoTR_OLP0pOCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_4OPtwoTR_OLP0peCpEeSMKMvNp3A9vw_CALL)))

(<-> (-P- OBJproc_4OPwinner) (||  (-P- OBJproc_4OPwinnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_4OPwinnerTR_OLP0qeCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_4OPwinnerTR_OLP0quCpEeSMKMvNp3A9vw_CALL)))

;;Attribute semantics
([=] (-V- OBJproc_4ATTRmynumber) (yesterday (-V- OBJproc_4ATTRmynumber)))
(-> (!! (-P- OBJproc_4ASSIGNMENT_OLP0p-CpEeSMKMvNp3A9vwactive)) ([=] (-V- OBJproc_4ATTRactive) (yesterday (-V- OBJproc_4ATTRactive))))

(-> (!! (-P- OBJproc_4ASSIGNMENT_OLP0peCpEeSMKMvNp3A9vwneighbourR)) ([=] (-V- OBJproc_4ATTRneighbourR) (yesterday (-V- OBJproc_4ATTRneighbourR))))

(-> (!! (||  (-P- OBJproc_4ASSIGNMENT_OLP0ouCpEeSMKMvNp3A9vwmax) (-P- OBJproc_4ASSIGNMENT_OLP0puCpEeSMKMvNp3A9vwmax))) ([=] (-V- OBJproc_4ATTRmax) (yesterday (-V- OBJproc_4ATTRmax))))


;;proc_4 STD org.correttouml.uml.diagrams.statediagram.StateDiagram@5e8027a3 SEMANTICS

;;STATE WIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_4_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)))
(!! (-P- OBJproc_4_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_4_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_4_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEWIN) (-P- OBJproc_4_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_4_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_4_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_4_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEWIN))))

;;STATE LOST
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_4_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_4_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)))
(!! (-P- OBJproc_4_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATELOST) (!! (-P- OBJproc_4_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_4_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATELOST) (-P- OBJproc_4_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATELOST)) (next (-P- OBJproc_4_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_4_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_4_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATELOST))))

;;STATE INIT
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_4_STDProcess_SM_STATEINIT)))
(-> (-P- MADESYSTEMSTART) (next (-P- OBJproc_4_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- MADESYSTEMSTART)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_4_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_4_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_4_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_4_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_4_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEINIT))))

;;STATE MAIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_4_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_4_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_4_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_4_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_4_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_4_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEMAIN))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_4ATTRactive) 0)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPone)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (next (-P- OBJproc_0OPoneTR_OLP0o-CpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_0OPoneTR_OLP0o-CpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_0PARAMone_nr) (yesterday (-V- OBJproc_4PARAMone_nr))))

(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @now - @INIT.enter > 1/#link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw) (&&  (-P- OBJproc_4_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_4_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TRIGGER)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TRIGGER)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TIMECONDITION)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TIMECONDITION) (&&  (lasted_ii (!! (-P- OBJproc_4_STDProcess_SM_STATEINIT_ENTER)) 1) (somp (-P- OBJproc_4_STDProcess_SM_STATEINIT_ENTER))))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_0OPoneTR_OLP0ouCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_0OPoneTR_OLP0ouCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_0PARAMone_nr) (-V- OBJproc_4ATTRmynumber)))

(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_4ASSIGNMENT_OLP0ouCpEeSMKMvNp3A9vwmax)))
(-> (-P- OBJproc_4ASSIGNMENT_OLP0ouCpEeSMKMvNp3A9vwmax) ([=] (-V- OBJproc_4ATTRmax) (-V- OBJproc_4ATTRmynumber)))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_4ATTRactive) 1) (||  ([<=] (-V- OBJproc_4ATTRneighbourR) (-V- OBJproc_4PARAMtwo_nr)) ([<=] (-V- OBJproc_4ATTRneighbourR) (-V- OBJproc_4ATTRmax))))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPtwo)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (next (-P- OBJproc_4ASSIGNMENT_OLP0p-CpEeSMKMvNp3A9vwactive)))
(-> (-P- OBJproc_4ASSIGNMENT_OLP0p-CpEeSMKMvNp3A9vwactive) ([=] (-V- OBJproc_4ATTRactive) 0))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_4ATTRactive) 1) (&&  ([>] (-V- OBJproc_4ATTRneighbourR) (-V- OBJproc_4PARAMtwo_nr)) ([>] (-V- OBJproc_4ATTRneighbourR) (-V- OBJproc_4ATTRmax))))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPtwo)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_4ASSIGNMENT_OLP0puCpEeSMKMvNp3A9vwmax)))
(-> (-P- OBJproc_4ASSIGNMENT_OLP0puCpEeSMKMvNp3A9vwmax) ([=] (-V- OBJproc_4ATTRmax) (yesterday (-V- OBJproc_4ATTRneighbourR))))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_0OPoneTR_OLP0puCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_0OPoneTR_OLP0puCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_0PARAMone_nr) (yesterday (-V- OBJproc_4ATTRneighbourR))))

(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_4ATTRactive) 1) (!! ([=] (-V- OBJproc_4PARAMone_nr) (-V- OBJproc_4ATTRmax))))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPone)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_0OPtwoTR_OLP0peCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_0OPtwoTR_OLP0peCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_0PARAMtwo_nr) (yesterday (-V- OBJproc_4PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_4ASSIGNMENT_OLP0peCpEeSMKMvNp3A9vwneighbourR)))
(-> (-P- OBJproc_4ASSIGNMENT_OLP0peCpEeSMKMvNp3A9vwneighbourR) ([=] (-V- OBJproc_4ATTRneighbourR) (yesterday (-V- OBJproc_4PARAMone_nr))))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (&&  (-P- OBJproc_4_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_4_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_4PARAMwin_nr) (-V- OBJproc_4ATTRmynumber)))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPwinner)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_0OPwinnerTR_OLP0quCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_0OPwinnerTR_OLP0quCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_0PARAMwin_nr) (yesterday (-V- OBJproc_4PARAMwin_nr))))

(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (&&  (-P- OBJproc_4_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_4_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_4PARAMwin_nr) (-V- OBJproc_4ATTRmynumber))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPwinner)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_0OPwinnerTR_OLP0qeCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_0OPwinnerTR_OLP0qeCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_0PARAMwin_nr) (yesterday (-V- OBJproc_4PARAMwin_nr))))

(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_4ATTRactive) 0)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPtwo)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_0OPtwoTR_OLP0pOCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_0OPtwoTR_OLP0pOCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_0PARAMtwo_nr) (yesterday (-V- OBJproc_4PARAMtwo_nr))))

(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_4ATTRactive) 1) ([=] (-V- OBJproc_4PARAMone_nr) (-V- OBJproc_4ATTRmax)))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPone)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_0OPwinnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_0OPwinnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_0PARAMwin_nr) (yesterday (-V- OBJproc_4PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_4OPwe_have_winnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw))))

;;monitorSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;monitor STD org.correttouml.uml.diagrams.statediagram.StateDiagram@423b8ab3 SEMANTICS

;;STATE STATE_NO_WINNER
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER)))
(-> (-P- MADESYSTEMSTART) (next (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_ENTER)))
(-> (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_ENTER) (yesterday (-P- MADESYSTEMSTART)))
(-> (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_EXIT) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_OLQbqOCpEeSMKMvNp3A9vw))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER) (!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_EXIT))) (next (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER)))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER) (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_EXIT)) (next (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER))))
(-> (&&  (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER)) (next (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_ENTER))) (next (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER)))
(-> (&&  (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER)) (next (!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_ENTER)))) (next (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER))))

;;STATE STATE_WINNER
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER)))
(-> (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_ENTER) (yesterday (-P- OBJmonitor_STDMonitor_SM_TRANSITION_OLQbqOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_EXIT) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_OLQbqeCpEeSMKMvNp3A9vw))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER) (!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_EXIT))) (next (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER)))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER) (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_EXIT)) (next (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER))))
(-> (&&  (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER)) (next (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_ENTER))) (next (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER)))
(-> (&&  (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER)) (next (!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_ENTER)))) (next (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER))))

;;STATE STATE_ERROR
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR)))
(-> (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_ENTER) (yesterday (-P- OBJmonitor_STDMonitor_SM_TRANSITION_OLQbqeCpEeSMKMvNp3A9vw)))
(!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_EXIT))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR) (!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_EXIT))) (next (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR)))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR) (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_EXIT)) (next (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR))))
(-> (&&  (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR)) (next (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_ENTER))) (next (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR)))
(-> (&&  (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR)) (next (!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_ENTER)))) (next (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR))))

;;TRANSITION we_have_winner.sig
(-> (-P- OBJmonitor_STDMonitor_SM_TRANSITION_OLQbqeCpEeSMKMvNp3A9vw) (&&  (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_EXIT) (next (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_ENTER))))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_OLQbqeCpEeSMKMvNp3A9vw_TRIGGER)) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_OLQbqeCpEeSMKMvNp3A9vw))
(-> (-P- OBJmonitor_STDMonitor_SM_TRANSITION_OLQbqeCpEeSMKMvNp3A9vw) (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_OLQbqeCpEeSMKMvNp3A9vw_TRIGGER)))
(<-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER) (-P- we_have_winner)) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_OLQbqeCpEeSMKMvNp3A9vw_TRIGGER))

;;TRANSITION we_have_winner.sig
(-> (-P- OBJmonitor_STDMonitor_SM_TRANSITION_OLQbqOCpEeSMKMvNp3A9vw) (&&  (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_EXIT) (next (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_ENTER))))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_OLQbqOCpEeSMKMvNp3A9vw_TRIGGER)) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_OLQbqOCpEeSMKMvNp3A9vw))
(-> (-P- OBJmonitor_STDMonitor_SM_TRANSITION_OLQbqOCpEeSMKMvNp3A9vw) (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_OLQbqOCpEeSMKMvNp3A9vw_TRIGGER)))
(<-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER) (-P- we_have_winner)) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_OLQbqOCpEeSMKMvNp3A9vw_TRIGGER))

;;proc_3SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_3OPone) (||  (-P- OBJproc_3OPoneTR_OLP0o-CpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_3OPoneTR_OLP0puCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_3OPoneTR_OLP0ouCpEeSMKMvNp3A9vw_CALL)))

(<-> (-P- OBJproc_3OPtwo) (||  (-P- OBJproc_3OPtwoTR_OLP0pOCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_3OPtwoTR_OLP0peCpEeSMKMvNp3A9vw_CALL)))

(<-> (-P- OBJproc_3OPwinner) (||  (-P- OBJproc_3OPwinnerTR_OLP0qeCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_3OPwinnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_3OPwinnerTR_OLP0quCpEeSMKMvNp3A9vw_CALL)))

;;Attribute semantics
([=] (-V- OBJproc_3ATTRmynumber) (yesterday (-V- OBJproc_3ATTRmynumber)))
(-> (!! (-P- OBJproc_3ASSIGNMENT_OLP0p-CpEeSMKMvNp3A9vwactive)) ([=] (-V- OBJproc_3ATTRactive) (yesterday (-V- OBJproc_3ATTRactive))))

(-> (!! (-P- OBJproc_3ASSIGNMENT_OLP0peCpEeSMKMvNp3A9vwneighbourR)) ([=] (-V- OBJproc_3ATTRneighbourR) (yesterday (-V- OBJproc_3ATTRneighbourR))))

(-> (!! (||  (-P- OBJproc_3ASSIGNMENT_OLP0ouCpEeSMKMvNp3A9vwmax) (-P- OBJproc_3ASSIGNMENT_OLP0puCpEeSMKMvNp3A9vwmax))) ([=] (-V- OBJproc_3ATTRmax) (yesterday (-V- OBJproc_3ATTRmax))))


;;proc_3 STD org.correttouml.uml.diagrams.statediagram.StateDiagram@5e8027a3 SEMANTICS

;;STATE WIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_3_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)))
(!! (-P- OBJproc_3_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_3_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_3_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEWIN) (-P- OBJproc_3_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_3_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_3_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_3_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEWIN))))

;;STATE LOST
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_3_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_3_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)))
(!! (-P- OBJproc_3_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATELOST) (!! (-P- OBJproc_3_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_3_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATELOST) (-P- OBJproc_3_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATELOST)) (next (-P- OBJproc_3_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_3_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_3_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATELOST))))

;;STATE INIT
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_3_STDProcess_SM_STATEINIT)))
(-> (-P- MADESYSTEMSTART) (next (-P- OBJproc_3_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- MADESYSTEMSTART)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_3_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_3_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_3_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_3_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_3_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEINIT))))

;;STATE MAIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_3_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_3_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_3_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_3_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_3_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_3_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEMAIN))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_3ATTRactive) 0)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPone)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (next (-P- OBJproc_4OPoneTR_OLP0o-CpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_4OPoneTR_OLP0o-CpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_4PARAMone_nr) (yesterday (-V- OBJproc_3PARAMone_nr))))

(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @now - @INIT.enter > 1/#link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw) (&&  (-P- OBJproc_3_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_3_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TRIGGER)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TRIGGER)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TIMECONDITION)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TIMECONDITION) (&&  (lasted_ii (!! (-P- OBJproc_3_STDProcess_SM_STATEINIT_ENTER)) 1) (somp (-P- OBJproc_3_STDProcess_SM_STATEINIT_ENTER))))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_4OPoneTR_OLP0ouCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_4OPoneTR_OLP0ouCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_4PARAMone_nr) (-V- OBJproc_3ATTRmynumber)))

(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_3ASSIGNMENT_OLP0ouCpEeSMKMvNp3A9vwmax)))
(-> (-P- OBJproc_3ASSIGNMENT_OLP0ouCpEeSMKMvNp3A9vwmax) ([=] (-V- OBJproc_3ATTRmax) (-V- OBJproc_3ATTRmynumber)))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_3ATTRactive) 1) (||  ([<=] (-V- OBJproc_3ATTRneighbourR) (-V- OBJproc_3PARAMtwo_nr)) ([<=] (-V- OBJproc_3ATTRneighbourR) (-V- OBJproc_3ATTRmax))))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPtwo)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (next (-P- OBJproc_3ASSIGNMENT_OLP0p-CpEeSMKMvNp3A9vwactive)))
(-> (-P- OBJproc_3ASSIGNMENT_OLP0p-CpEeSMKMvNp3A9vwactive) ([=] (-V- OBJproc_3ATTRactive) 0))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_3ATTRactive) 1) (&&  ([>] (-V- OBJproc_3ATTRneighbourR) (-V- OBJproc_3PARAMtwo_nr)) ([>] (-V- OBJproc_3ATTRneighbourR) (-V- OBJproc_3ATTRmax))))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPtwo)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_3ASSIGNMENT_OLP0puCpEeSMKMvNp3A9vwmax)))
(-> (-P- OBJproc_3ASSIGNMENT_OLP0puCpEeSMKMvNp3A9vwmax) ([=] (-V- OBJproc_3ATTRmax) (yesterday (-V- OBJproc_3ATTRneighbourR))))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_4OPoneTR_OLP0puCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_4OPoneTR_OLP0puCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_4PARAMone_nr) (yesterday (-V- OBJproc_3ATTRneighbourR))))

(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_3ATTRactive) 1) (!! ([=] (-V- OBJproc_3PARAMone_nr) (-V- OBJproc_3ATTRmax))))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPone)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_4OPtwoTR_OLP0peCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_4OPtwoTR_OLP0peCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_4PARAMtwo_nr) (yesterday (-V- OBJproc_3PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_3ASSIGNMENT_OLP0peCpEeSMKMvNp3A9vwneighbourR)))
(-> (-P- OBJproc_3ASSIGNMENT_OLP0peCpEeSMKMvNp3A9vwneighbourR) ([=] (-V- OBJproc_3ATTRneighbourR) (yesterday (-V- OBJproc_3PARAMone_nr))))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (&&  (-P- OBJproc_3_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_3_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_3PARAMwin_nr) (-V- OBJproc_3ATTRmynumber)))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPwinner)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_4OPwinnerTR_OLP0quCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_4OPwinnerTR_OLP0quCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_4PARAMwin_nr) (yesterday (-V- OBJproc_3PARAMwin_nr))))

(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (&&  (-P- OBJproc_3_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_3_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_3PARAMwin_nr) (-V- OBJproc_3ATTRmynumber))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPwinner)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_4OPwinnerTR_OLP0qeCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_4OPwinnerTR_OLP0qeCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_4PARAMwin_nr) (yesterday (-V- OBJproc_3PARAMwin_nr))))

(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_3ATTRactive) 0)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPtwo)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_4OPtwoTR_OLP0pOCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_4OPtwoTR_OLP0pOCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_4PARAMtwo_nr) (yesterday (-V- OBJproc_3PARAMtwo_nr))))

(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_3ATTRactive) 1) ([=] (-V- OBJproc_3PARAMone_nr) (-V- OBJproc_3ATTRmax)))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPone)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_4OPwinnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_4OPwinnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_4PARAMwin_nr) (yesterday (-V- OBJproc_3PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_3OPwe_have_winnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw))))

;;proc_2SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_2OPone) (||  (-P- OBJproc_2OPoneTR_OLP0ouCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_2OPoneTR_OLP0puCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_2OPoneTR_OLP0o-CpEeSMKMvNp3A9vw_CALL)))

(<-> (-P- OBJproc_2OPtwo) (||  (-P- OBJproc_2OPtwoTR_OLP0pOCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_2OPtwoTR_OLP0peCpEeSMKMvNp3A9vw_CALL)))

(<-> (-P- OBJproc_2OPwinner) (||  (-P- OBJproc_2OPwinnerTR_OLP0qeCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_2OPwinnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_2OPwinnerTR_OLP0quCpEeSMKMvNp3A9vw_CALL)))

;;Attribute semantics
([=] (-V- OBJproc_2ATTRmynumber) (yesterday (-V- OBJproc_2ATTRmynumber)))
(-> (!! (-P- OBJproc_2ASSIGNMENT_OLP0p-CpEeSMKMvNp3A9vwactive)) ([=] (-V- OBJproc_2ATTRactive) (yesterday (-V- OBJproc_2ATTRactive))))

(-> (!! (-P- OBJproc_2ASSIGNMENT_OLP0peCpEeSMKMvNp3A9vwneighbourR)) ([=] (-V- OBJproc_2ATTRneighbourR) (yesterday (-V- OBJproc_2ATTRneighbourR))))

(-> (!! (||  (-P- OBJproc_2ASSIGNMENT_OLP0ouCpEeSMKMvNp3A9vwmax) (-P- OBJproc_2ASSIGNMENT_OLP0puCpEeSMKMvNp3A9vwmax))) ([=] (-V- OBJproc_2ATTRmax) (yesterday (-V- OBJproc_2ATTRmax))))


;;proc_2 STD org.correttouml.uml.diagrams.statediagram.StateDiagram@5e8027a3 SEMANTICS

;;STATE WIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_2_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)))
(!! (-P- OBJproc_2_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_2_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_2_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEWIN) (-P- OBJproc_2_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_2_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_2_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_2_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEWIN))))

;;STATE LOST
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_2_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_2_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)))
(!! (-P- OBJproc_2_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATELOST) (!! (-P- OBJproc_2_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_2_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATELOST) (-P- OBJproc_2_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATELOST)) (next (-P- OBJproc_2_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_2_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_2_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATELOST))))

;;STATE INIT
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_2_STDProcess_SM_STATEINIT)))
(-> (-P- MADESYSTEMSTART) (next (-P- OBJproc_2_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- MADESYSTEMSTART)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_2_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_2_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_2_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_2_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_2_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEINIT))))

;;STATE MAIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_2_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_2_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_2_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_2_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_2_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_2_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEMAIN))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_2ATTRactive) 0)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPone)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (next (-P- OBJproc_3OPoneTR_OLP0o-CpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_3OPoneTR_OLP0o-CpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_3PARAMone_nr) (yesterday (-V- OBJproc_2PARAMone_nr))))

(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @now - @INIT.enter > 1/#link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw) (&&  (-P- OBJproc_2_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_2_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TRIGGER)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TRIGGER)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TIMECONDITION)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TIMECONDITION) (&&  (lasted_ii (!! (-P- OBJproc_2_STDProcess_SM_STATEINIT_ENTER)) 1) (somp (-P- OBJproc_2_STDProcess_SM_STATEINIT_ENTER))))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_3OPoneTR_OLP0ouCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_3OPoneTR_OLP0ouCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_3PARAMone_nr) (-V- OBJproc_2ATTRmynumber)))

(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_2ASSIGNMENT_OLP0ouCpEeSMKMvNp3A9vwmax)))
(-> (-P- OBJproc_2ASSIGNMENT_OLP0ouCpEeSMKMvNp3A9vwmax) ([=] (-V- OBJproc_2ATTRmax) (-V- OBJproc_2ATTRmynumber)))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_2ATTRactive) 1) (||  ([<=] (-V- OBJproc_2ATTRneighbourR) (-V- OBJproc_2PARAMtwo_nr)) ([<=] (-V- OBJproc_2ATTRneighbourR) (-V- OBJproc_2ATTRmax))))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPtwo)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (next (-P- OBJproc_2ASSIGNMENT_OLP0p-CpEeSMKMvNp3A9vwactive)))
(-> (-P- OBJproc_2ASSIGNMENT_OLP0p-CpEeSMKMvNp3A9vwactive) ([=] (-V- OBJproc_2ATTRactive) 0))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_2ATTRactive) 1) (&&  ([>] (-V- OBJproc_2ATTRneighbourR) (-V- OBJproc_2PARAMtwo_nr)) ([>] (-V- OBJproc_2ATTRneighbourR) (-V- OBJproc_2ATTRmax))))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPtwo)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_2ASSIGNMENT_OLP0puCpEeSMKMvNp3A9vwmax)))
(-> (-P- OBJproc_2ASSIGNMENT_OLP0puCpEeSMKMvNp3A9vwmax) ([=] (-V- OBJproc_2ATTRmax) (yesterday (-V- OBJproc_2ATTRneighbourR))))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_3OPoneTR_OLP0puCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_3OPoneTR_OLP0puCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_3PARAMone_nr) (yesterday (-V- OBJproc_2ATTRneighbourR))))

(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_2ATTRactive) 1) (!! ([=] (-V- OBJproc_2PARAMone_nr) (-V- OBJproc_2ATTRmax))))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPone)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_3OPtwoTR_OLP0peCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_3OPtwoTR_OLP0peCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_3PARAMtwo_nr) (yesterday (-V- OBJproc_2PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_2ASSIGNMENT_OLP0peCpEeSMKMvNp3A9vwneighbourR)))
(-> (-P- OBJproc_2ASSIGNMENT_OLP0peCpEeSMKMvNp3A9vwneighbourR) ([=] (-V- OBJproc_2ATTRneighbourR) (yesterday (-V- OBJproc_2PARAMone_nr))))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (&&  (-P- OBJproc_2_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_2_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_2PARAMwin_nr) (-V- OBJproc_2ATTRmynumber)))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPwinner)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_3OPwinnerTR_OLP0quCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_3OPwinnerTR_OLP0quCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_3PARAMwin_nr) (yesterday (-V- OBJproc_2PARAMwin_nr))))

(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (&&  (-P- OBJproc_2_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_2_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_2PARAMwin_nr) (-V- OBJproc_2ATTRmynumber))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPwinner)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_3OPwinnerTR_OLP0qeCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_3OPwinnerTR_OLP0qeCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_3PARAMwin_nr) (yesterday (-V- OBJproc_2PARAMwin_nr))))

(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_2ATTRactive) 0)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPtwo)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_3OPtwoTR_OLP0pOCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_3OPtwoTR_OLP0pOCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_3PARAMtwo_nr) (yesterday (-V- OBJproc_2PARAMtwo_nr))))

(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_2ATTRactive) 1) ([=] (-V- OBJproc_2PARAMone_nr) (-V- OBJproc_2ATTRmax)))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPone)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_3OPwinnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_3OPwinnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_3PARAMwin_nr) (yesterday (-V- OBJproc_2PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_2OPwe_have_winnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw))))

;;proc_0SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_0OPone) (||  (-P- OBJproc_0OPoneTR_OLP0o-CpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_0OPoneTR_OLP0puCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_0OPoneTR_OLP0ouCpEeSMKMvNp3A9vw_CALL)))

(<-> (-P- OBJproc_0OPtwo) (||  (-P- OBJproc_0OPtwoTR_OLP0pOCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_0OPtwoTR_OLP0peCpEeSMKMvNp3A9vw_CALL)))

(<-> (-P- OBJproc_0OPwinner) (||  (-P- OBJproc_0OPwinnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_0OPwinnerTR_OLP0quCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_0OPwinnerTR_OLP0qeCpEeSMKMvNp3A9vw_CALL)))

;;Attribute semantics
([=] (-V- OBJproc_0ATTRmynumber) (yesterday (-V- OBJproc_0ATTRmynumber)))
(-> (!! (-P- OBJproc_0ASSIGNMENT_OLP0p-CpEeSMKMvNp3A9vwactive)) ([=] (-V- OBJproc_0ATTRactive) (yesterday (-V- OBJproc_0ATTRactive))))

(-> (!! (-P- OBJproc_0ASSIGNMENT_OLP0peCpEeSMKMvNp3A9vwneighbourR)) ([=] (-V- OBJproc_0ATTRneighbourR) (yesterday (-V- OBJproc_0ATTRneighbourR))))

(-> (!! (||  (-P- OBJproc_0ASSIGNMENT_OLP0ouCpEeSMKMvNp3A9vwmax) (-P- OBJproc_0ASSIGNMENT_OLP0puCpEeSMKMvNp3A9vwmax))) ([=] (-V- OBJproc_0ATTRmax) (yesterday (-V- OBJproc_0ATTRmax))))


;;proc_0 STD org.correttouml.uml.diagrams.statediagram.StateDiagram@5e8027a3 SEMANTICS

;;STATE WIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_0_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)))
(!! (-P- OBJproc_0_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_0_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWIN) (-P- OBJproc_0_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_0_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEWIN))))

;;STATE LOST
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_0_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_0_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)))
(!! (-P- OBJproc_0_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATELOST) (!! (-P- OBJproc_0_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATELOST) (-P- OBJproc_0_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATELOST)) (next (-P- OBJproc_0_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATELOST))))

;;STATE INIT
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_0_STDProcess_SM_STATEINIT)))
(-> (-P- MADESYSTEMSTART) (next (-P- OBJproc_0_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- MADESYSTEMSTART)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_0_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_0_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEINIT))))

;;STATE MAIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_0_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_0_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_0_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEMAIN))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_0ATTRactive) 0)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPone)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (next (-P- OBJproc_1OPoneTR_OLP0o-CpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_1OPoneTR_OLP0o-CpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_1PARAMone_nr) (yesterday (-V- OBJproc_0PARAMone_nr))))

(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @now - @INIT.enter > 1/#link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw) (&&  (-P- OBJproc_0_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TRIGGER)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TRIGGER)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TIMECONDITION)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TIMECONDITION) (&&  (lasted_ii (!! (-P- OBJproc_0_STDProcess_SM_STATEINIT_ENTER)) 1) (somp (-P- OBJproc_0_STDProcess_SM_STATEINIT_ENTER))))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_1OPoneTR_OLP0ouCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_1OPoneTR_OLP0ouCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_1PARAMone_nr) (-V- OBJproc_0ATTRmynumber)))

(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_0ASSIGNMENT_OLP0ouCpEeSMKMvNp3A9vwmax)))
(-> (-P- OBJproc_0ASSIGNMENT_OLP0ouCpEeSMKMvNp3A9vwmax) ([=] (-V- OBJproc_0ATTRmax) (-V- OBJproc_0ATTRmynumber)))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_0ATTRactive) 1) (||  ([<=] (-V- OBJproc_0ATTRneighbourR) (-V- OBJproc_0PARAMtwo_nr)) ([<=] (-V- OBJproc_0ATTRneighbourR) (-V- OBJproc_0ATTRmax))))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPtwo)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (next (-P- OBJproc_0ASSIGNMENT_OLP0p-CpEeSMKMvNp3A9vwactive)))
(-> (-P- OBJproc_0ASSIGNMENT_OLP0p-CpEeSMKMvNp3A9vwactive) ([=] (-V- OBJproc_0ATTRactive) 0))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_0ATTRactive) 1) (&&  ([>] (-V- OBJproc_0ATTRneighbourR) (-V- OBJproc_0PARAMtwo_nr)) ([>] (-V- OBJproc_0ATTRneighbourR) (-V- OBJproc_0ATTRmax))))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPtwo)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_0ASSIGNMENT_OLP0puCpEeSMKMvNp3A9vwmax)))
(-> (-P- OBJproc_0ASSIGNMENT_OLP0puCpEeSMKMvNp3A9vwmax) ([=] (-V- OBJproc_0ATTRmax) (yesterday (-V- OBJproc_0ATTRneighbourR))))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_1OPoneTR_OLP0puCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_1OPoneTR_OLP0puCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_1PARAMone_nr) (yesterday (-V- OBJproc_0ATTRneighbourR))))

(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_0ATTRactive) 1) (!! ([=] (-V- OBJproc_0PARAMone_nr) (-V- OBJproc_0ATTRmax))))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPone)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_1OPtwoTR_OLP0peCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_1OPtwoTR_OLP0peCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_1PARAMtwo_nr) (yesterday (-V- OBJproc_0PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_0ASSIGNMENT_OLP0peCpEeSMKMvNp3A9vwneighbourR)))
(-> (-P- OBJproc_0ASSIGNMENT_OLP0peCpEeSMKMvNp3A9vwneighbourR) ([=] (-V- OBJproc_0ATTRneighbourR) (yesterday (-V- OBJproc_0PARAMone_nr))))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (&&  (-P- OBJproc_0_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_0PARAMwin_nr) (-V- OBJproc_0ATTRmynumber)))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPwinner)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_1OPwinnerTR_OLP0quCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_1OPwinnerTR_OLP0quCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_1PARAMwin_nr) (yesterday (-V- OBJproc_0PARAMwin_nr))))

(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (&&  (-P- OBJproc_0_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_0PARAMwin_nr) (-V- OBJproc_0ATTRmynumber))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPwinner)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_1OPwinnerTR_OLP0qeCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_1OPwinnerTR_OLP0qeCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_1PARAMwin_nr) (yesterday (-V- OBJproc_0PARAMwin_nr))))

(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_0ATTRactive) 0)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPtwo)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_1OPtwoTR_OLP0pOCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_1OPtwoTR_OLP0pOCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_1PARAMtwo_nr) (yesterday (-V- OBJproc_0PARAMtwo_nr))))

(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_0ATTRactive) 1) ([=] (-V- OBJproc_0PARAMone_nr) (-V- OBJproc_0ATTRmax)))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPone)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_1OPwinnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_1OPwinnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_1PARAMwin_nr) (yesterday (-V- OBJproc_0PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_0OPwe_have_winnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw))))

;;proc_1SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_1OPone) (||  (-P- OBJproc_1OPoneTR_OLP0puCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_1OPoneTR_OLP0ouCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_1OPoneTR_OLP0o-CpEeSMKMvNp3A9vw_CALL)))

(<-> (-P- OBJproc_1OPtwo) (||  (-P- OBJproc_1OPtwoTR_OLP0peCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_1OPtwoTR_OLP0pOCpEeSMKMvNp3A9vw_CALL)))

(<-> (-P- OBJproc_1OPwinner) (||  (-P- OBJproc_1OPwinnerTR_OLP0qeCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_1OPwinnerTR_OLP0quCpEeSMKMvNp3A9vw_CALL) (-P- OBJproc_1OPwinnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL)))

;;Attribute semantics
([=] (-V- OBJproc_1ATTRmynumber) (yesterday (-V- OBJproc_1ATTRmynumber)))
(-> (!! (-P- OBJproc_1ASSIGNMENT_OLP0p-CpEeSMKMvNp3A9vwactive)) ([=] (-V- OBJproc_1ATTRactive) (yesterday (-V- OBJproc_1ATTRactive))))

(-> (!! (-P- OBJproc_1ASSIGNMENT_OLP0peCpEeSMKMvNp3A9vwneighbourR)) ([=] (-V- OBJproc_1ATTRneighbourR) (yesterday (-V- OBJproc_1ATTRneighbourR))))

(-> (!! (||  (-P- OBJproc_1ASSIGNMENT_OLP0ouCpEeSMKMvNp3A9vwmax) (-P- OBJproc_1ASSIGNMENT_OLP0puCpEeSMKMvNp3A9vwmax))) ([=] (-V- OBJproc_1ATTRmax) (yesterday (-V- OBJproc_1ATTRmax))))


;;proc_1 STD org.correttouml.uml.diagrams.statediagram.StateDiagram@5e8027a3 SEMANTICS

;;STATE WIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_1_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)))
(!! (-P- OBJproc_1_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_1_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWIN) (-P- OBJproc_1_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_1_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEWIN))))

;;STATE LOST
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_1_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_1_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)))
(!! (-P- OBJproc_1_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATELOST) (!! (-P- OBJproc_1_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATELOST) (-P- OBJproc_1_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATELOST)) (next (-P- OBJproc_1_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATELOST))))

;;STATE INIT
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_1_STDProcess_SM_STATEINIT)))
(-> (-P- MADESYSTEMSTART) (next (-P- OBJproc_1_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- MADESYSTEMSTART)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_1_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_1_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEINIT))))

;;STATE MAIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_1_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_1_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_1_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEMAIN))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_1ATTRactive) 0)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPone)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o_CpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (next (-P- OBJproc_2OPoneTR_OLP0o-CpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_2OPoneTR_OLP0o-CpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_2PARAMone_nr) (yesterday (-V- OBJproc_1PARAMone_nr))))

(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @now - @INIT.enter > 1/#link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw) (&&  (-P- OBJproc_1_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TRIGGER)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TRIGGER)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TIMECONDITION)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw_TIMECONDITION) (&&  (lasted_ii (!! (-P- OBJproc_1_STDProcess_SM_STATEINIT_ENTER)) 1) (somp (-P- OBJproc_1_STDProcess_SM_STATEINIT_ENTER))))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_2OPoneTR_OLP0ouCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_2OPoneTR_OLP0ouCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_2PARAMone_nr) (-V- OBJproc_1ATTRmynumber)))

(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0ouCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_1ASSIGNMENT_OLP0ouCpEeSMKMvNp3A9vwmax)))
(-> (-P- OBJproc_1ASSIGNMENT_OLP0ouCpEeSMKMvNp3A9vwmax) ([=] (-V- OBJproc_1ATTRmax) (-V- OBJproc_1ATTRmynumber)))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_1ATTRactive) 1) (||  ([<=] (-V- OBJproc_1ATTRneighbourR) (-V- OBJproc_1PARAMtwo_nr)) ([<=] (-V- OBJproc_1ATTRneighbourR) (-V- OBJproc_1ATTRmax))))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPtwo)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p_CpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (next (-P- OBJproc_1ASSIGNMENT_OLP0p-CpEeSMKMvNp3A9vwactive)))
(-> (-P- OBJproc_1ASSIGNMENT_OLP0p-CpEeSMKMvNp3A9vwactive) ([=] (-V- OBJproc_1ATTRactive) 0))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_1ATTRactive) 1) (&&  ([>] (-V- OBJproc_1ATTRneighbourR) (-V- OBJproc_1PARAMtwo_nr)) ([>] (-V- OBJproc_1ATTRneighbourR) (-V- OBJproc_1ATTRmax))))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPtwo)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_1ASSIGNMENT_OLP0puCpEeSMKMvNp3A9vwmax)))
(-> (-P- OBJproc_1ASSIGNMENT_OLP0puCpEeSMKMvNp3A9vwmax) ([=] (-V- OBJproc_1ATTRmax) (yesterday (-V- OBJproc_1ATTRneighbourR))))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_2OPoneTR_OLP0puCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_2OPoneTR_OLP0puCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_2PARAMone_nr) (yesterday (-V- OBJproc_1ATTRneighbourR))))

(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_1ATTRactive) 1) (!! ([=] (-V- OBJproc_1PARAMone_nr) (-V- OBJproc_1ATTRmax))))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPone)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_2OPtwoTR_OLP0peCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_2OPtwoTR_OLP0peCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_2PARAMtwo_nr) (yesterday (-V- OBJproc_1PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_1ASSIGNMENT_OLP0peCpEeSMKMvNp3A9vwneighbourR)))
(-> (-P- OBJproc_1ASSIGNMENT_OLP0peCpEeSMKMvNp3A9vwneighbourR) ([=] (-V- OBJproc_1ATTRneighbourR) (yesterday (-V- OBJproc_1PARAMone_nr))))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (&&  (-P- OBJproc_1_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_1PARAMwin_nr) (-V- OBJproc_1ATTRmynumber)))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPwinner)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_2OPwinnerTR_OLP0quCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_2OPwinnerTR_OLP0quCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_2PARAMwin_nr) (yesterday (-V- OBJproc_1PARAMwin_nr))))

(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (&&  (-P- OBJproc_1_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_1PARAMwin_nr) (-V- OBJproc_1ATTRmynumber))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPwinner)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_2OPwinnerTR_OLP0qeCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_2OPwinnerTR_OLP0qeCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_2PARAMwin_nr) (yesterday (-V- OBJproc_1PARAMwin_nr))))

(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_1ATTRactive) 0)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPtwo)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_2OPtwoTR_OLP0pOCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_2OPtwoTR_OLP0pOCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_2PARAMtwo_nr) (yesterday (-V- OBJproc_1PARAMtwo_nr))))

(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_1ATTRactive) 1) ([=] (-V- OBJproc_1PARAMone_nr) (-V- OBJproc_1ATTRmax)))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPone)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw_TRIGGER))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_2OPwinnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_2OPwinnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL) ([=] (-V- OBJproc_2PARAMwin_nr) (yesterday (-V- OBJproc_1PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw)) (next (-P- OBJproc_1OPwe_have_winnerTR_OLP0qOCpEeSMKMvNp3A9vw_CALL)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qOCpEeSMKMvNp3A9vw) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0o-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0p-CpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0puCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0peCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0quCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0qeCpEeSMKMvNp3A9vw)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_OLP0pOCpEeSMKMvNp3A9vw))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SEQUENCE DIAGRAMS 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; IODs 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(!! (||
([=] (-V- OBJproc_0ATTRmynumber) (-V- OBJproc_1ATTRmynumber))
([=] (-V- OBJproc_0ATTRmynumber) (-V- OBJproc_2ATTRmynumber))
([=] (-V- OBJproc_0ATTRmynumber) (-V- OBJproc_3ATTRmynumber))
([=] (-V- OBJproc_0ATTRmynumber) (-V- OBJproc_4ATTRmynumber))
([=] (-V- OBJproc_1ATTRmynumber) (-V- OBJproc_2ATTRmynumber))
([=] (-V- OBJproc_1ATTRmynumber) (-V- OBJproc_3ATTRmynumber))
([=] (-V- OBJproc_1ATTRmynumber) (-V- OBJproc_4ATTRmynumber))
([=] (-V- OBJproc_2ATTRmynumber) (-V- OBJproc_3ATTRmynumber))
([=] (-V- OBJproc_2ATTRmynumber) (-V- OBJproc_4ATTRmynumber))
([=] (-V- OBJproc_3ATTRmynumber) (-V- OBJproc_4ATTRmynumber))
))

)) ;;END AX1 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; PROPERTIES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar Q1 (alwf (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR))) )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; INIT AXIOM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar initAx (&& 
(yesterday (&&  (-P- MADESYSTEMSTART) (alwf_e (!! (-P- MADESYSTEMSTART)))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLASS DIAGRAM INITIALIZATION 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
([=] (-V- OBJproc_0ATTRactive) 1) ([=] (-V- OBJproc_0ATTRmax) (-V- OBJproc_0ATTRmynumber))
([=] (-V- OBJproc_1ATTRactive) 1) ([=] (-V- OBJproc_1ATTRmax) (-V- OBJproc_1ATTRmynumber))
([=] (-V- OBJproc_2ATTRactive) 1) ([=] (-V- OBJproc_2ATTRmax) (-V- OBJproc_2ATTRmynumber))
([=] (-V- OBJproc_3ATTRactive) 1) ([=] (-V- OBJproc_3ATTRmax) (-V- OBJproc_3ATTRmynumber))
([=] (-V- OBJproc_4ATTRactive) 1) ([=] (-V- OBJproc_4ATTRmax) (-V- OBJproc_4ATTRmynumber))
))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; THE SYSTEM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar the_system  (&& (yesterday (alwf AX1)) (!!(yesterday (alwf Q1))) initAx ))


(ae2sbvzot:zot TSPACE (&& the_system) :smt-solver :z3 :logic :QF_UFLIA  )