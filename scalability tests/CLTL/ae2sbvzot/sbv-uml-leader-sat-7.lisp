(asdf:operate 'asdf:load-op 'ae2sbvzot)
(use-package :trio-utils)
(defvar TSPACE 50)
(define-tvar OBJproc_4ATTRneighbourR *int*)
(define-tvar OBJproc_2ATTRmynumber *int*)
(define-tvar OBJproc_3ATTRneighbourR *int*)
(define-tvar OBJproc_5PARAMone_nr *int*)
(define-tvar OBJproc_6ATTRmynumber *int*)
(define-tvar OBJproc_0ATTRmynumber *int*)
(define-tvar OBJproc_1ATTRneighbourR *int*)
(define-tvar OBJproc_3PARAMone_nr *int*)
(define-tvar OBJproc_2PARAMone_nr *int*)
(define-tvar OBJproc_4ATTRmax *int*)
(define-tvar OBJproc_4ATTRmynumber *int*)
(define-tvar OBJproc_1PARAMwin_nr *int*)
(define-tvar OBJproc_5ATTRmax *int*)
(define-tvar OBJproc_0PARAMwin_nr *int*)
(define-tvar OBJproc_0PARAMtwo_nr *int*)
(define-tvar OBJproc_2PARAMtwo_nr *int*)
(define-tvar OBJproc_5PARAMtwo_nr *int*)
(define-tvar OBJproc_5ATTRmynumber *int*)
(define-tvar OBJproc_0ATTRneighbourR *int*)
(define-tvar OBJproc_4PARAMwin_nr *int*)
(define-tvar OBJproc_5ATTRactive *int*)
(define-tvar OBJproc_5ATTRneighbourR *int*)
(define-tvar OBJproc_2ATTRactive *int*)
(define-tvar OBJproc_6ATTRactive *int*)
(define-tvar OBJproc_2PARAMwin_nr *int*)
(define-tvar OBJproc_6PARAMone_nr *int*)
(define-tvar OBJproc_6PARAMwin_nr *int*)
(define-tvar OBJproc_4PARAMone_nr *int*)
(define-tvar OBJproc_6ATTRmax *int*)
(define-tvar OBJproc_2ATTRmax *int*)
(define-tvar OBJproc_1ATTRmax *int*)
(define-tvar OBJproc_3ATTRmax *int*)
(define-tvar OBJproc_0PARAMone_nr *int*)
(define-tvar OBJproc_2ATTRneighbourR *int*)
(define-tvar OBJproc_1ATTRactive *int*)
(define-tvar OBJproc_6PARAMtwo_nr *int*)
(define-tvar OBJproc_5PARAMwin_nr *int*)
(define-tvar OBJproc_3PARAMwin_nr *int*)
(define-tvar OBJproc_3ATTRmynumber *int*)
(define-tvar OBJproc_4ATTRactive *int*)
(define-tvar OBJproc_0ATTRmax *int*)
(define-tvar OBJproc_1PARAMtwo_nr *int*)
(define-tvar OBJproc_0ATTRactive *int*)
(define-tvar OBJproc_4PARAMtwo_nr *int*)
(define-tvar OBJproc_1ATTRmynumber *int*)
(define-tvar OBJproc_6ATTRneighbourR *int*)
(define-tvar OBJproc_1PARAMone_nr *int*)
(define-tvar OBJproc_3PARAMtwo_nr *int*)
(define-tvar OBJproc_3ATTRactive *int*)
(defvar AX1 
 (&& 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLASS DIAGRAM 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;SIGNALS SEMANTICS
(<-> (-P- we_have_winner) (||  (-P- OBJproc_2OPwe_have_winnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_5OPwe_have_winnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_0OPwe_have_winnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_3OPwe_have_winnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_6OPwe_have_winnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_4OPwe_have_winnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_1OPwe_have_winnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL)))


;;proc_2SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_2OPtwo) (||  (-P- OBJproc_2OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_2OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL)))

(<-> (-P- OBJproc_2OPwinner) (||  (-P- OBJproc_2OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_2OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_2OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL)))

(<-> (-P- OBJproc_2OPone) (||  (-P- OBJproc_2OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_2OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_2OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL)))

;;Attribute semantics
([=] (-V- OBJproc_2ATTRmynumber) (yesterday (-V- OBJproc_2ATTRmynumber)))
(-> (!! (-P- OBJproc_2ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR)) ([=] (-V- OBJproc_2ATTRneighbourR) (yesterday (-V- OBJproc_2ATTRneighbourR))))

(-> (!! (||  (-P- OBJproc_2ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax) (-P- OBJproc_2ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax))) ([=] (-V- OBJproc_2ATTRmax) (yesterday (-V- OBJproc_2ATTRmax))))

(-> (!! (-P- OBJproc_2ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive)) ([=] (-V- OBJproc_2ATTRactive) (yesterday (-V- OBJproc_2ATTRactive))))


;;proc_2 STD org.correttouml.uml.diagrams.statediagram.StateDiagram@722e77d4 SEMANTICS

;;STATE LOST
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_2_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_2_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)))
(!! (-P- OBJproc_2_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATELOST) (!! (-P- OBJproc_2_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_2_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATELOST) (-P- OBJproc_2_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATELOST)) (next (-P- OBJproc_2_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_2_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_2_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATELOST))))

;;STATE WIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_2_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)))
(!! (-P- OBJproc_2_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_2_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_2_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEWIN) (-P- OBJproc_2_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_2_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_2_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_2_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEWIN))))

;;STATE MAIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_2_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_2_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_2_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_2_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_2_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_2_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEMAIN))))

;;STATE INIT
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_2_STDProcess_SM_STATEINIT)))
(-> (-P- MADESYSTEMSTART) (next (-P- OBJproc_2_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- MADESYSTEMSTART)))
(-> (-P- OBJproc_2_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_2_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_2_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_2_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_2_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_2_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_2_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_2_STDProcess_SM_STATEINIT))))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_2ATTRactive) 1) (||  ([<=] (-V- OBJproc_2ATTRneighbourR) (-V- OBJproc_2PARAMtwo_nr)) ([<=] (-V- OBJproc_2ATTRneighbourR) (-V- OBJproc_2ATTRmax))))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPtwo)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_2ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive)))
(-> (-P- OBJproc_2ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive) ([=] (-V- OBJproc_2ATTRactive) 0))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_2ATTRactive) 1) (&&  ([>] (-V- OBJproc_2ATTRneighbourR) (-V- OBJproc_2PARAMtwo_nr)) ([>] (-V- OBJproc_2ATTRneighbourR) (-V- OBJproc_2ATTRmax))))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPtwo)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_2ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax)))
(-> (-P- OBJproc_2ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax) ([=] (-V- OBJproc_2ATTRmax) (yesterday (-V- OBJproc_2ATTRneighbourR))))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_3OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_3OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_3PARAMone_nr) (yesterday (-V- OBJproc_2ATTRneighbourR))))

(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_2ATTRactive) 0)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPtwo)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_3OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_3OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_3PARAMtwo_nr) (yesterday (-V- OBJproc_2PARAMtwo_nr))))

(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @now - @INIT.enter > 1/#link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_2_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_2_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TIMECONDITION)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TIMECONDITION) (&&  (lasted_ii (!! (-P- OBJproc_2_STDProcess_SM_STATEINIT_ENTER)) 1) (somp (-P- OBJproc_2_STDProcess_SM_STATEINIT_ENTER))))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_3OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_3OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_3PARAMone_nr) (-V- OBJproc_2ATTRmynumber)))

(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEINIT) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_2ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax)))
(-> (-P- OBJproc_2ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax) ([=] (-V- OBJproc_2ATTRmax) (-V- OBJproc_2ATTRmynumber)))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_2_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_2_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_2PARAMwin_nr) (-V- OBJproc_2ATTRmynumber)))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPwinner)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_3OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_3OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_3PARAMwin_nr) (yesterday (-V- OBJproc_2PARAMwin_nr))))

(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_2_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_2_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_2PARAMwin_nr) (-V- OBJproc_2ATTRmynumber))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPwinner)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_3OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_3OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_3PARAMwin_nr) (yesterday (-V- OBJproc_2PARAMwin_nr))))

(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_2ATTRactive) 1) (!! ([=] (-V- OBJproc_2PARAMone_nr) (-V- OBJproc_2ATTRmax))))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPone)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_3OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_3OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_3PARAMtwo_nr) (yesterday (-V- OBJproc_2PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_2ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR)))
(-> (-P- OBJproc_2ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR) ([=] (-V- OBJproc_2ATTRneighbourR) (yesterday (-V- OBJproc_2PARAMone_nr))))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_2ATTRactive) 0)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPone)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_3OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_3OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_3PARAMone_nr) (yesterday (-V- OBJproc_2PARAMone_nr))))

(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_2ATTRactive) 1) ([=] (-V- OBJproc_2PARAMone_nr) (-V- OBJproc_2ATTRmax)))) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2OPone)) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_3OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_3OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_3PARAMwin_nr) (yesterday (-V- OBJproc_2PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_2_STDProcess_SM_STATEMAIN) (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_2OPwe_have_winnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_2_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q))))

;;proc_5SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_5OPtwo) (||  (-P- OBJproc_5OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_5OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL)))

(<-> (-P- OBJproc_5OPwinner) (||  (-P- OBJproc_5OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_5OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_5OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL)))

(<-> (-P- OBJproc_5OPone) (||  (-P- OBJproc_5OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_5OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_5OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL)))

;;Attribute semantics
([=] (-V- OBJproc_5ATTRmynumber) (yesterday (-V- OBJproc_5ATTRmynumber)))
(-> (!! (-P- OBJproc_5ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR)) ([=] (-V- OBJproc_5ATTRneighbourR) (yesterday (-V- OBJproc_5ATTRneighbourR))))

(-> (!! (||  (-P- OBJproc_5ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax) (-P- OBJproc_5ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax))) ([=] (-V- OBJproc_5ATTRmax) (yesterday (-V- OBJproc_5ATTRmax))))

(-> (!! (-P- OBJproc_5ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive)) ([=] (-V- OBJproc_5ATTRactive) (yesterday (-V- OBJproc_5ATTRactive))))


;;proc_5 STD org.correttouml.uml.diagrams.statediagram.StateDiagram@722e77d4 SEMANTICS

;;STATE LOST
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_5_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_5_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)))
(!! (-P- OBJproc_5_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATELOST) (!! (-P- OBJproc_5_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_5_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATELOST) (-P- OBJproc_5_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATELOST)) (next (-P- OBJproc_5_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_5_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_5_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATELOST))))

;;STATE WIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_5_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)))
(!! (-P- OBJproc_5_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_5_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_5_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEWIN) (-P- OBJproc_5_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_5_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_5_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_5_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEWIN))))

;;STATE MAIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_5_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_5_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_5_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_5_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_5_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_5_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEMAIN))))

;;STATE INIT
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_5_STDProcess_SM_STATEINIT)))
(-> (-P- MADESYSTEMSTART) (next (-P- OBJproc_5_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- MADESYSTEMSTART)))
(-> (-P- OBJproc_5_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_5_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_5_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEINIT) (-P- OBJproc_5_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_5_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_5_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_5_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_5_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_5_STDProcess_SM_STATEINIT))))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_5ATTRactive) 1) (||  ([<=] (-V- OBJproc_5ATTRneighbourR) (-V- OBJproc_5PARAMtwo_nr)) ([<=] (-V- OBJproc_5ATTRneighbourR) (-V- OBJproc_5ATTRmax))))) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5OPtwo)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_5ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive)))
(-> (-P- OBJproc_5ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive) ([=] (-V- OBJproc_5ATTRactive) 0))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_5ATTRactive) 1) (&&  ([>] (-V- OBJproc_5ATTRneighbourR) (-V- OBJproc_5PARAMtwo_nr)) ([>] (-V- OBJproc_5ATTRneighbourR) (-V- OBJproc_5ATTRmax))))) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5OPtwo)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_5ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax)))
(-> (-P- OBJproc_5ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax) ([=] (-V- OBJproc_5ATTRmax) (yesterday (-V- OBJproc_5ATTRneighbourR))))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_6OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_6OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_6PARAMone_nr) (yesterday (-V- OBJproc_5ATTRneighbourR))))

(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_5ATTRactive) 0)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5OPtwo)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_6OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_6OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_6PARAMtwo_nr) (yesterday (-V- OBJproc_5PARAMtwo_nr))))

(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @now - @INIT.enter > 1/#link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_5_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_5_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEINIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEINIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEINIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TIMECONDITION)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TIMECONDITION) (&&  (lasted_ii (!! (-P- OBJproc_5_STDProcess_SM_STATEINIT_ENTER)) 1) (somp (-P- OBJproc_5_STDProcess_SM_STATEINIT_ENTER))))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEINIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_6OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_6OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_6PARAMone_nr) (-V- OBJproc_5ATTRmynumber)))

(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEINIT) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_5ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax)))
(-> (-P- OBJproc_5ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax) ([=] (-V- OBJproc_5ATTRmax) (-V- OBJproc_5ATTRmynumber)))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_5_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_5_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_5PARAMwin_nr) (-V- OBJproc_5ATTRmynumber)))) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5OPwinner)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_6OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_6OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_6PARAMwin_nr) (yesterday (-V- OBJproc_5PARAMwin_nr))))

(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_5_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_5_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_5PARAMwin_nr) (-V- OBJproc_5ATTRmynumber))) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5OPwinner)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_6OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_6OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_6PARAMwin_nr) (yesterday (-V- OBJproc_5PARAMwin_nr))))

(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_5ATTRactive) 1) (!! ([=] (-V- OBJproc_5PARAMone_nr) (-V- OBJproc_5ATTRmax))))) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5OPone)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_6OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_6OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_6PARAMtwo_nr) (yesterday (-V- OBJproc_5PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_5ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR)))
(-> (-P- OBJproc_5ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR) ([=] (-V- OBJproc_5ATTRneighbourR) (yesterday (-V- OBJproc_5PARAMone_nr))))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_5ATTRactive) 0)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5OPone)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_6OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_6OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_6PARAMone_nr) (yesterday (-V- OBJproc_5PARAMone_nr))))

(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_5ATTRactive) 1) ([=] (-V- OBJproc_5PARAMone_nr) (-V- OBJproc_5ATTRmax)))) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5OPone)) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_6OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_6OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_6PARAMwin_nr) (yesterday (-V- OBJproc_5PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_5_STDProcess_SM_STATEMAIN) (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_5OPwe_have_winnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_5_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q))))

;;proc_0SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_0OPtwo) (||  (-P- OBJproc_0OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_0OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL)))

(<-> (-P- OBJproc_0OPwinner) (||  (-P- OBJproc_0OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_0OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_0OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL)))

(<-> (-P- OBJproc_0OPone) (||  (-P- OBJproc_0OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_0OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_0OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL)))

;;Attribute semantics
([=] (-V- OBJproc_0ATTRmynumber) (yesterday (-V- OBJproc_0ATTRmynumber)))
(-> (!! (-P- OBJproc_0ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR)) ([=] (-V- OBJproc_0ATTRneighbourR) (yesterday (-V- OBJproc_0ATTRneighbourR))))

(-> (!! (||  (-P- OBJproc_0ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax) (-P- OBJproc_0ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax))) ([=] (-V- OBJproc_0ATTRmax) (yesterday (-V- OBJproc_0ATTRmax))))

(-> (!! (-P- OBJproc_0ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive)) ([=] (-V- OBJproc_0ATTRactive) (yesterday (-V- OBJproc_0ATTRactive))))


;;proc_0 STD org.correttouml.uml.diagrams.statediagram.StateDiagram@722e77d4 SEMANTICS

;;STATE LOST
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_0_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_0_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)))
(!! (-P- OBJproc_0_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATELOST) (!! (-P- OBJproc_0_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATELOST) (-P- OBJproc_0_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATELOST)) (next (-P- OBJproc_0_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATELOST))))

;;STATE WIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_0_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)))
(!! (-P- OBJproc_0_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_0_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEWIN) (-P- OBJproc_0_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_0_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEWIN))))

;;STATE MAIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_0_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_0_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_0_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEMAIN))))

;;STATE INIT
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_0_STDProcess_SM_STATEINIT)))
(-> (-P- MADESYSTEMSTART) (next (-P- OBJproc_0_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- MADESYSTEMSTART)))
(-> (-P- OBJproc_0_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_0_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_0_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_0_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_0_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_0_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_0_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_0_STDProcess_SM_STATEINIT))))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_0ATTRactive) 1) (||  ([<=] (-V- OBJproc_0ATTRneighbourR) (-V- OBJproc_0PARAMtwo_nr)) ([<=] (-V- OBJproc_0ATTRneighbourR) (-V- OBJproc_0ATTRmax))))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPtwo)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_0ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive)))
(-> (-P- OBJproc_0ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive) ([=] (-V- OBJproc_0ATTRactive) 0))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_0ATTRactive) 1) (&&  ([>] (-V- OBJproc_0ATTRneighbourR) (-V- OBJproc_0PARAMtwo_nr)) ([>] (-V- OBJproc_0ATTRneighbourR) (-V- OBJproc_0ATTRmax))))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPtwo)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_0ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax)))
(-> (-P- OBJproc_0ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax) ([=] (-V- OBJproc_0ATTRmax) (yesterday (-V- OBJproc_0ATTRneighbourR))))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_1OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_1OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_1PARAMone_nr) (yesterday (-V- OBJproc_0ATTRneighbourR))))

(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_0ATTRactive) 0)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPtwo)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_1OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_1OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_1PARAMtwo_nr) (yesterday (-V- OBJproc_0PARAMtwo_nr))))

(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @now - @INIT.enter > 1/#link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_0_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TIMECONDITION)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TIMECONDITION) (&&  (lasted_ii (!! (-P- OBJproc_0_STDProcess_SM_STATEINIT_ENTER)) 1) (somp (-P- OBJproc_0_STDProcess_SM_STATEINIT_ENTER))))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_1OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_1OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_1PARAMone_nr) (-V- OBJproc_0ATTRmynumber)))

(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEINIT) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_0ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax)))
(-> (-P- OBJproc_0ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax) ([=] (-V- OBJproc_0ATTRmax) (-V- OBJproc_0ATTRmynumber)))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_0_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_0PARAMwin_nr) (-V- OBJproc_0ATTRmynumber)))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPwinner)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_1OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_1OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_1PARAMwin_nr) (yesterday (-V- OBJproc_0PARAMwin_nr))))

(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_0_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_0_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_0PARAMwin_nr) (-V- OBJproc_0ATTRmynumber))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPwinner)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_1OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_1OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_1PARAMwin_nr) (yesterday (-V- OBJproc_0PARAMwin_nr))))

(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_0ATTRactive) 1) (!! ([=] (-V- OBJproc_0PARAMone_nr) (-V- OBJproc_0ATTRmax))))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPone)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_1OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_1OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_1PARAMtwo_nr) (yesterday (-V- OBJproc_0PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_0ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR)))
(-> (-P- OBJproc_0ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR) ([=] (-V- OBJproc_0ATTRneighbourR) (yesterday (-V- OBJproc_0PARAMone_nr))))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_0ATTRactive) 0)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPone)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_1OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_1OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_1PARAMone_nr) (yesterday (-V- OBJproc_0PARAMone_nr))))

(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_0ATTRactive) 1) ([=] (-V- OBJproc_0PARAMone_nr) (-V- OBJproc_0ATTRmax)))) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0OPone)) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_1OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_1OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_1PARAMwin_nr) (yesterday (-V- OBJproc_0PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_0_STDProcess_SM_STATEMAIN) (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_0OPwe_have_winnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_0_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q))))

;;monitorSEMANTICS
;;Object operation definitions
;;Attribute semantics

;;monitor STD org.correttouml.uml.diagrams.statediagram.StateDiagram@28158b45 SEMANTICS

;;STATE STATE_ERROR
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR)))
(-> (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_ENTER) (yesterday (-P- OBJmonitor_STDMonitor_SM_TRANSITION_Eqm57uCrEeStaJMMF3Zx1Q)))
(!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_EXIT))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR) (!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_EXIT))) (next (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR)))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR) (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_EXIT)) (next (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR))))
(-> (&&  (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR)) (next (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_ENTER))) (next (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR)))
(-> (&&  (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR)) (next (!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_ENTER)))) (next (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_ERROR))))

;;STATE STATE_WINNER
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER)))
(-> (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_ENTER) (yesterday (-P- OBJmonitor_STDMonitor_SM_TRANSITION_Eqm57eCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_EXIT) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_Eqm57uCrEeStaJMMF3Zx1Q))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER) (!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_EXIT))) (next (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER)))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER) (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_EXIT)) (next (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER))))
(-> (&&  (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER)) (next (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_ENTER))) (next (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER)))
(-> (&&  (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER)) (next (!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_ENTER)))) (next (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER))))

;;STATE STATE_NO_WINNER
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER)))
(-> (-P- MADESYSTEMSTART) (next (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_ENTER)))
(-> (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_ENTER) (yesterday (-P- MADESYSTEMSTART)))
(-> (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_EXIT) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_Eqm57eCrEeStaJMMF3Zx1Q))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER) (!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_EXIT))) (next (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER)))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER) (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_EXIT)) (next (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER))))
(-> (&&  (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER)) (next (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_ENTER))) (next (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER)))
(-> (&&  (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER)) (next (!! (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_ENTER)))) (next (!! (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER))))

;;TRANSITION we_have_winner.sig
(-> (-P- OBJmonitor_STDMonitor_SM_TRANSITION_Eqm57uCrEeStaJMMF3Zx1Q) (&&  (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_EXIT) (next (-P- OBJmonitor_STDMonitor_SM_STATESTATE_ERROR_ENTER))))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_Eqm57uCrEeStaJMMF3Zx1Q_TRIGGER)) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_Eqm57uCrEeStaJMMF3Zx1Q))
(-> (-P- OBJmonitor_STDMonitor_SM_TRANSITION_Eqm57uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_Eqm57uCrEeStaJMMF3Zx1Q_TRIGGER)))
(<-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_WINNER) (-P- we_have_winner)) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_Eqm57uCrEeStaJMMF3Zx1Q_TRIGGER))

;;TRANSITION we_have_winner.sig
(-> (-P- OBJmonitor_STDMonitor_SM_TRANSITION_Eqm57eCrEeStaJMMF3Zx1Q) (&&  (-P- OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER_EXIT) (next (-P- OBJmonitor_STDMonitor_SM_STATESTATE_WINNER_ENTER))))
(-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_Eqm57eCrEeStaJMMF3Zx1Q_TRIGGER)) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_Eqm57eCrEeStaJMMF3Zx1Q))
(-> (-P- OBJmonitor_STDMonitor_SM_TRANSITION_Eqm57eCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_Eqm57eCrEeStaJMMF3Zx1Q_TRIGGER)))
(<-> (&&  (-P- $OBJmonitor_STDMonitor_SM_STATESTATE_NO_WINNER) (-P- we_have_winner)) (-P- OBJmonitor_STDMonitor_SM_TRANSITION_Eqm57eCrEeStaJMMF3Zx1Q_TRIGGER))

;;proc_3SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_3OPtwo) (||  (-P- OBJproc_3OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_3OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL)))

(<-> (-P- OBJproc_3OPwinner) (||  (-P- OBJproc_3OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_3OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_3OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL)))

(<-> (-P- OBJproc_3OPone) (||  (-P- OBJproc_3OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_3OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_3OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL)))

;;Attribute semantics
([=] (-V- OBJproc_3ATTRmynumber) (yesterday (-V- OBJproc_3ATTRmynumber)))
(-> (!! (-P- OBJproc_3ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR)) ([=] (-V- OBJproc_3ATTRneighbourR) (yesterday (-V- OBJproc_3ATTRneighbourR))))

(-> (!! (||  (-P- OBJproc_3ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax) (-P- OBJproc_3ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax))) ([=] (-V- OBJproc_3ATTRmax) (yesterday (-V- OBJproc_3ATTRmax))))

(-> (!! (-P- OBJproc_3ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive)) ([=] (-V- OBJproc_3ATTRactive) (yesterday (-V- OBJproc_3ATTRactive))))


;;proc_3 STD org.correttouml.uml.diagrams.statediagram.StateDiagram@722e77d4 SEMANTICS

;;STATE LOST
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_3_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_3_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)))
(!! (-P- OBJproc_3_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATELOST) (!! (-P- OBJproc_3_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_3_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATELOST) (-P- OBJproc_3_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATELOST)) (next (-P- OBJproc_3_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_3_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_3_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATELOST))))

;;STATE WIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_3_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)))
(!! (-P- OBJproc_3_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_3_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_3_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEWIN) (-P- OBJproc_3_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_3_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_3_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_3_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEWIN))))

;;STATE MAIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_3_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_3_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_3_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_3_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_3_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_3_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEMAIN))))

;;STATE INIT
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_3_STDProcess_SM_STATEINIT)))
(-> (-P- MADESYSTEMSTART) (next (-P- OBJproc_3_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- MADESYSTEMSTART)))
(-> (-P- OBJproc_3_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_3_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_3_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_3_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_3_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_3_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_3_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_3_STDProcess_SM_STATEINIT))))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_3ATTRactive) 1) (||  ([<=] (-V- OBJproc_3ATTRneighbourR) (-V- OBJproc_3PARAMtwo_nr)) ([<=] (-V- OBJproc_3ATTRneighbourR) (-V- OBJproc_3ATTRmax))))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPtwo)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_3ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive)))
(-> (-P- OBJproc_3ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive) ([=] (-V- OBJproc_3ATTRactive) 0))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_3ATTRactive) 1) (&&  ([>] (-V- OBJproc_3ATTRneighbourR) (-V- OBJproc_3PARAMtwo_nr)) ([>] (-V- OBJproc_3ATTRneighbourR) (-V- OBJproc_3ATTRmax))))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPtwo)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_3ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax)))
(-> (-P- OBJproc_3ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax) ([=] (-V- OBJproc_3ATTRmax) (yesterday (-V- OBJproc_3ATTRneighbourR))))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_4OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_4OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_4PARAMone_nr) (yesterday (-V- OBJproc_3ATTRneighbourR))))

(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_3ATTRactive) 0)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPtwo)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_4OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_4OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_4PARAMtwo_nr) (yesterday (-V- OBJproc_3PARAMtwo_nr))))

(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @now - @INIT.enter > 1/#link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_3_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_3_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TIMECONDITION)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TIMECONDITION) (&&  (lasted_ii (!! (-P- OBJproc_3_STDProcess_SM_STATEINIT_ENTER)) 1) (somp (-P- OBJproc_3_STDProcess_SM_STATEINIT_ENTER))))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_4OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_4OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_4PARAMone_nr) (-V- OBJproc_3ATTRmynumber)))

(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEINIT) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_3ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax)))
(-> (-P- OBJproc_3ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax) ([=] (-V- OBJproc_3ATTRmax) (-V- OBJproc_3ATTRmynumber)))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_3_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_3_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_3PARAMwin_nr) (-V- OBJproc_3ATTRmynumber)))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPwinner)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_4OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_4OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_4PARAMwin_nr) (yesterday (-V- OBJproc_3PARAMwin_nr))))

(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_3_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_3_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_3PARAMwin_nr) (-V- OBJproc_3ATTRmynumber))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPwinner)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_4OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_4OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_4PARAMwin_nr) (yesterday (-V- OBJproc_3PARAMwin_nr))))

(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_3ATTRactive) 1) (!! ([=] (-V- OBJproc_3PARAMone_nr) (-V- OBJproc_3ATTRmax))))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPone)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_4OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_4OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_4PARAMtwo_nr) (yesterday (-V- OBJproc_3PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_3ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR)))
(-> (-P- OBJproc_3ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR) ([=] (-V- OBJproc_3ATTRneighbourR) (yesterday (-V- OBJproc_3PARAMone_nr))))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_3ATTRactive) 0)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPone)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_4OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_4OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_4PARAMone_nr) (yesterday (-V- OBJproc_3PARAMone_nr))))

(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_3ATTRactive) 1) ([=] (-V- OBJproc_3PARAMone_nr) (-V- OBJproc_3ATTRmax)))) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3OPone)) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_4OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_4OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_4PARAMwin_nr) (yesterday (-V- OBJproc_3PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_3_STDProcess_SM_STATEMAIN) (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_3OPwe_have_winnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_3_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q))))

;;proc_6SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_6OPtwo) (||  (-P- OBJproc_6OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_6OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL)))

(<-> (-P- OBJproc_6OPwinner) (||  (-P- OBJproc_6OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_6OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_6OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL)))

(<-> (-P- OBJproc_6OPone) (||  (-P- OBJproc_6OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_6OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_6OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL)))

;;Attribute semantics
([=] (-V- OBJproc_6ATTRmynumber) (yesterday (-V- OBJproc_6ATTRmynumber)))
(-> (!! (-P- OBJproc_6ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR)) ([=] (-V- OBJproc_6ATTRneighbourR) (yesterday (-V- OBJproc_6ATTRneighbourR))))

(-> (!! (||  (-P- OBJproc_6ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax) (-P- OBJproc_6ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax))) ([=] (-V- OBJproc_6ATTRmax) (yesterday (-V- OBJproc_6ATTRmax))))

(-> (!! (-P- OBJproc_6ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive)) ([=] (-V- OBJproc_6ATTRactive) (yesterday (-V- OBJproc_6ATTRactive))))


;;proc_6 STD org.correttouml.uml.diagrams.statediagram.StateDiagram@722e77d4 SEMANTICS

;;STATE LOST
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_6_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_6_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)))
(!! (-P- OBJproc_6_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATELOST) (!! (-P- OBJproc_6_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_6_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATELOST) (-P- OBJproc_6_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_6_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_6_STDProcess_SM_STATELOST)) (next (-P- OBJproc_6_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_6_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_6_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_6_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_6_STDProcess_SM_STATELOST))))

;;STATE WIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_6_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_6_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)))
(!! (-P- OBJproc_6_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_6_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_6_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEWIN) (-P- OBJproc_6_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_6_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_6_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_6_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_6_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_6_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_6_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_6_STDProcess_SM_STATEWIN))))

;;STATE MAIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_6_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_6_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_6_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_6_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_6_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_6_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_6_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_6_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_6_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_6_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_6_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_6_STDProcess_SM_STATEMAIN))))

;;STATE INIT
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_6_STDProcess_SM_STATEINIT)))
(-> (-P- MADESYSTEMSTART) (next (-P- OBJproc_6_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_6_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- MADESYSTEMSTART)))
(-> (-P- OBJproc_6_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_6_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_6_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEINIT) (-P- OBJproc_6_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_6_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_6_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_6_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_6_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_6_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_6_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_6_STDProcess_SM_STATEINIT))))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_6ATTRactive) 1) (||  ([<=] (-V- OBJproc_6ATTRneighbourR) (-V- OBJproc_6PARAMtwo_nr)) ([<=] (-V- OBJproc_6ATTRneighbourR) (-V- OBJproc_6ATTRmax))))) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6OPtwo)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_6ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive)))
(-> (-P- OBJproc_6ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive) ([=] (-V- OBJproc_6ATTRactive) 0))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_6ATTRactive) 1) (&&  ([>] (-V- OBJproc_6ATTRneighbourR) (-V- OBJproc_6PARAMtwo_nr)) ([>] (-V- OBJproc_6ATTRneighbourR) (-V- OBJproc_6ATTRmax))))) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6OPtwo)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_6ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax)))
(-> (-P- OBJproc_6ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax) ([=] (-V- OBJproc_6ATTRmax) (yesterday (-V- OBJproc_6ATTRneighbourR))))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_0OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_0OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_0PARAMone_nr) (yesterday (-V- OBJproc_6ATTRneighbourR))))

(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_6ATTRactive) 0)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6OPtwo)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_0OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_0OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_0PARAMtwo_nr) (yesterday (-V- OBJproc_6PARAMtwo_nr))))

(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @now - @INIT.enter > 1/#link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_6_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_6_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEINIT) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_6_STDProcess_SM_STATEINIT) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER)))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEINIT) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TIMECONDITION)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TIMECONDITION) (&&  (lasted_ii (!! (-P- OBJproc_6_STDProcess_SM_STATEINIT_ENTER)) 1) (somp (-P- OBJproc_6_STDProcess_SM_STATEINIT_ENTER))))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEINIT) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_0OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_0OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_0PARAMone_nr) (-V- OBJproc_6ATTRmynumber)))

(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEINIT) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_6ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax)))
(-> (-P- OBJproc_6ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax) ([=] (-V- OBJproc_6ATTRmax) (-V- OBJproc_6ATTRmynumber)))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_6_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_6_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_6PARAMwin_nr) (-V- OBJproc_6ATTRmynumber)))) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6OPwinner)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_0OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_0OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_0PARAMwin_nr) (yesterday (-V- OBJproc_6PARAMwin_nr))))

(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_6_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_6_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_6PARAMwin_nr) (-V- OBJproc_6ATTRmynumber))) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6OPwinner)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_0OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_0OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_0PARAMwin_nr) (yesterday (-V- OBJproc_6PARAMwin_nr))))

(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_6ATTRactive) 1) (!! ([=] (-V- OBJproc_6PARAMone_nr) (-V- OBJproc_6ATTRmax))))) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6OPone)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_0OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_0OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_0PARAMtwo_nr) (yesterday (-V- OBJproc_6PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_6ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR)))
(-> (-P- OBJproc_6ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR) ([=] (-V- OBJproc_6ATTRneighbourR) (yesterday (-V- OBJproc_6PARAMone_nr))))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_6ATTRactive) 0)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6OPone)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_0OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_0OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_0PARAMone_nr) (yesterday (-V- OBJproc_6PARAMone_nr))))

(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_6ATTRactive) 1) ([=] (-V- OBJproc_6PARAMone_nr) (-V- OBJproc_6ATTRmax)))) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6OPone)) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_0OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_0OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_0PARAMwin_nr) (yesterday (-V- OBJproc_6PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_6_STDProcess_SM_STATEMAIN) (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_6OPwe_have_winnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_6_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q))))

;;proc_4SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_4OPtwo) (||  (-P- OBJproc_4OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_4OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL)))

(<-> (-P- OBJproc_4OPwinner) (||  (-P- OBJproc_4OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_4OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_4OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL)))

(<-> (-P- OBJproc_4OPone) (||  (-P- OBJproc_4OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_4OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_4OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL)))

;;Attribute semantics
([=] (-V- OBJproc_4ATTRmynumber) (yesterday (-V- OBJproc_4ATTRmynumber)))
(-> (!! (-P- OBJproc_4ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR)) ([=] (-V- OBJproc_4ATTRneighbourR) (yesterday (-V- OBJproc_4ATTRneighbourR))))

(-> (!! (||  (-P- OBJproc_4ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax) (-P- OBJproc_4ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax))) ([=] (-V- OBJproc_4ATTRmax) (yesterday (-V- OBJproc_4ATTRmax))))

(-> (!! (-P- OBJproc_4ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive)) ([=] (-V- OBJproc_4ATTRactive) (yesterday (-V- OBJproc_4ATTRactive))))


;;proc_4 STD org.correttouml.uml.diagrams.statediagram.StateDiagram@722e77d4 SEMANTICS

;;STATE LOST
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_4_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_4_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)))
(!! (-P- OBJproc_4_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATELOST) (!! (-P- OBJproc_4_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_4_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATELOST) (-P- OBJproc_4_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATELOST)) (next (-P- OBJproc_4_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_4_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_4_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATELOST))))

;;STATE WIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_4_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)))
(!! (-P- OBJproc_4_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_4_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_4_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEWIN) (-P- OBJproc_4_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_4_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_4_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_4_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEWIN))))

;;STATE MAIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_4_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_4_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_4_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_4_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_4_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_4_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEMAIN))))

;;STATE INIT
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_4_STDProcess_SM_STATEINIT)))
(-> (-P- MADESYSTEMSTART) (next (-P- OBJproc_4_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- MADESYSTEMSTART)))
(-> (-P- OBJproc_4_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_4_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_4_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_4_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_4_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_4_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_4_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_4_STDProcess_SM_STATEINIT))))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_4ATTRactive) 1) (||  ([<=] (-V- OBJproc_4ATTRneighbourR) (-V- OBJproc_4PARAMtwo_nr)) ([<=] (-V- OBJproc_4ATTRneighbourR) (-V- OBJproc_4ATTRmax))))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPtwo)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_4ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive)))
(-> (-P- OBJproc_4ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive) ([=] (-V- OBJproc_4ATTRactive) 0))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_4ATTRactive) 1) (&&  ([>] (-V- OBJproc_4ATTRneighbourR) (-V- OBJproc_4PARAMtwo_nr)) ([>] (-V- OBJproc_4ATTRneighbourR) (-V- OBJproc_4ATTRmax))))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPtwo)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_4ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax)))
(-> (-P- OBJproc_4ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax) ([=] (-V- OBJproc_4ATTRmax) (yesterday (-V- OBJproc_4ATTRneighbourR))))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_5OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_5OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_5PARAMone_nr) (yesterday (-V- OBJproc_4ATTRneighbourR))))

(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_4ATTRactive) 0)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPtwo)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_5OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_5OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_5PARAMtwo_nr) (yesterday (-V- OBJproc_4PARAMtwo_nr))))

(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @now - @INIT.enter > 1/#link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_4_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_4_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TIMECONDITION)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TIMECONDITION) (&&  (lasted_ii (!! (-P- OBJproc_4_STDProcess_SM_STATEINIT_ENTER)) 1) (somp (-P- OBJproc_4_STDProcess_SM_STATEINIT_ENTER))))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_5OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_5OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_5PARAMone_nr) (-V- OBJproc_4ATTRmynumber)))

(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEINIT) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_4ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax)))
(-> (-P- OBJproc_4ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax) ([=] (-V- OBJproc_4ATTRmax) (-V- OBJproc_4ATTRmynumber)))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_4_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_4_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_4PARAMwin_nr) (-V- OBJproc_4ATTRmynumber)))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPwinner)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_5OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_5OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_5PARAMwin_nr) (yesterday (-V- OBJproc_4PARAMwin_nr))))

(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_4_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_4_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_4PARAMwin_nr) (-V- OBJproc_4ATTRmynumber))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPwinner)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_5OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_5OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_5PARAMwin_nr) (yesterday (-V- OBJproc_4PARAMwin_nr))))

(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_4ATTRactive) 1) (!! ([=] (-V- OBJproc_4PARAMone_nr) (-V- OBJproc_4ATTRmax))))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPone)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_5OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_5OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_5PARAMtwo_nr) (yesterday (-V- OBJproc_4PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_4ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR)))
(-> (-P- OBJproc_4ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR) ([=] (-V- OBJproc_4ATTRneighbourR) (yesterday (-V- OBJproc_4PARAMone_nr))))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_4ATTRactive) 0)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPone)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_5OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_5OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_5PARAMone_nr) (yesterday (-V- OBJproc_4PARAMone_nr))))

(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_4ATTRactive) 1) ([=] (-V- OBJproc_4PARAMone_nr) (-V- OBJproc_4ATTRmax)))) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4OPone)) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_5OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_5OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_5PARAMwin_nr) (yesterday (-V- OBJproc_4PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_4_STDProcess_SM_STATEMAIN) (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_4OPwe_have_winnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_4_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q))))

;;proc_1SEMANTICS
;;Object operation definitions
(<-> (-P- OBJproc_1OPtwo) (||  (-P- OBJproc_1OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_1OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL)))

(<-> (-P- OBJproc_1OPwinner) (||  (-P- OBJproc_1OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_1OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_1OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL)))

(<-> (-P- OBJproc_1OPone) (||  (-P- OBJproc_1OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_1OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL) (-P- OBJproc_1OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL)))

;;Attribute semantics
([=] (-V- OBJproc_1ATTRmynumber) (yesterday (-V- OBJproc_1ATTRmynumber)))
(-> (!! (-P- OBJproc_1ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR)) ([=] (-V- OBJproc_1ATTRneighbourR) (yesterday (-V- OBJproc_1ATTRneighbourR))))

(-> (!! (||  (-P- OBJproc_1ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax) (-P- OBJproc_1ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax))) ([=] (-V- OBJproc_1ATTRmax) (yesterday (-V- OBJproc_1ATTRmax))))

(-> (!! (-P- OBJproc_1ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive)) ([=] (-V- OBJproc_1ATTRactive) (yesterday (-V- OBJproc_1ATTRactive))))


;;proc_1 STD org.correttouml.uml.diagrams.statediagram.StateDiagram@722e77d4 SEMANTICS

;;STATE LOST
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_1_STDProcess_SM_STATELOST)))
(-> (-P- OBJproc_1_STDProcess_SM_STATELOST_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)))
(!! (-P- OBJproc_1_STDProcess_SM_STATELOST_EXIT))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATELOST) (!! (-P- OBJproc_1_STDProcess_SM_STATELOST_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATELOST)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATELOST) (-P- OBJproc_1_STDProcess_SM_STATELOST_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATELOST))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATELOST)) (next (-P- OBJproc_1_STDProcess_SM_STATELOST_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATELOST)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATELOST)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATELOST_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATELOST))))

;;STATE WIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_1_STDProcess_SM_STATEWIN)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEWIN_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)))
(!! (-P- OBJproc_1_STDProcess_SM_STATEWIN_EXIT))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWIN) (!! (-P- OBJproc_1_STDProcess_SM_STATEWIN_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEWIN)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEWIN) (-P- OBJproc_1_STDProcess_SM_STATEWIN_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEWIN))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEWIN)) (next (-P- OBJproc_1_STDProcess_SM_STATEWIN_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEWIN)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEWIN)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEWIN_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEWIN))))

;;STATE MAIN
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_1_STDProcess_SM_STATEMAIN)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEMAIN_ENTER) (yesterday (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEMAIN_EXIT) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (!! (-P- OBJproc_1_STDProcess_SM_STATEMAIN_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEMAIN)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_STATEMAIN_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEMAIN))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEMAIN)) (next (-P- OBJproc_1_STDProcess_SM_STATEMAIN_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEMAIN)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEMAIN)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEMAIN_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEMAIN))))

;;STATE INIT
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJproc_1_STDProcess_SM_STATEINIT)))
(-> (-P- MADESYSTEMSTART) (next (-P- OBJproc_1_STDProcess_SM_STATEINIT_ENTER)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEINIT_ENTER) (yesterday (-P- MADESYSTEMSTART)))
(-> (-P- OBJproc_1_STDProcess_SM_STATEINIT_EXIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (!! (-P- OBJproc_1_STDProcess_SM_STATEINIT_EXIT))) (next (-P- $OBJproc_1_STDProcess_SM_STATEINIT)))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_STATEINIT_EXIT)) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEINIT))))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEINIT)) (next (-P- OBJproc_1_STDProcess_SM_STATEINIT_ENTER))) (next (-P- $OBJproc_1_STDProcess_SM_STATEINIT)))
(-> (&&  (!! (-P- $OBJproc_1_STDProcess_SM_STATEINIT)) (next (!! (-P- OBJproc_1_STDProcess_SM_STATEINIT_ENTER)))) (next (!! (-P- $OBJproc_1_STDProcess_SM_STATEINIT))))

;;TRANSITION @two.call[{active==1} && ({neighbourR<=two_nr} || {neighbourR<=max})]/active=0
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_1ATTRactive) 1) (||  ([<=] (-V- OBJproc_1ATTRneighbourR) (-V- OBJproc_1PARAMtwo_nr)) ([<=] (-V- OBJproc_1ATTRneighbourR) (-V- OBJproc_1ATTRmax))))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPtwo)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5_CrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_1ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive)))
(-> (-P- OBJproc_1ASSIGNMENT_EqmS5-CrEeStaJMMF3Zx1Qactive) ([=] (-V- OBJproc_1ATTRactive) 0))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @two.call[{active==1} && {neighbourR>two_nr} && {neighbourR>max}]/max=<P>neighbourR, #link.out@one(<P>neighbourR).call
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_1ATTRactive) 1) (&&  ([>] (-V- OBJproc_1ATTRneighbourR) (-V- OBJproc_1PARAMtwo_nr)) ([>] (-V- OBJproc_1ATTRneighbourR) (-V- OBJproc_1ATTRmax))))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPtwo)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_1ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax)))
(-> (-P- OBJproc_1ASSIGNMENT_EqmS5uCrEeStaJMMF3Zx1Qmax) ([=] (-V- OBJproc_1ATTRmax) (yesterday (-V- OBJproc_1ATTRneighbourR))))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_2OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_2OPoneTR_EqmS5uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_2PARAMone_nr) (yesterday (-V- OBJproc_1ATTRneighbourR))))

(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @two.call[{active==0}]/#link.out@two(<P>two_nr).call
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_1ATTRactive) 0)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPtwo)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_2OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_2OPtwoTR_EqmS5OCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_2PARAMtwo_nr) (yesterday (-V- OBJproc_1PARAMtwo_nr))))

(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @now - @INIT.enter > 1/#link.out@one(mynumber).call, max=mynumber
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_1_STDProcess_SM_STATEINIT_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATEMAIN_ENTER))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TIMECONDITION)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q_TIMECONDITION) (&&  (lasted_ii (!! (-P- OBJproc_1_STDProcess_SM_STATEINIT_ENTER)) 1) (somp (-P- OBJproc_1_STDProcess_SM_STATEINIT_ENTER))))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_2OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_2OPoneTR_EqmS4uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_2PARAMone_nr) (-V- OBJproc_1ATTRmynumber)))

(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEINIT) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_1ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax)))
(-> (-P- OBJproc_1ASSIGNMENT_EqmS4uCrEeStaJMMF3Zx1Qmax) ([=] (-V- OBJproc_1ATTRmax) (-V- OBJproc_1ATTRmynumber)))

;;TRANSITION @winner.call[{win_nr!=mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_1_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATELOST_ENTER))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (!! ([=] (-V- OBJproc_1PARAMwin_nr) (-V- OBJproc_1ATTRmynumber)))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPwinner)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_2OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_2OPwinnerTR_EqmS6uCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_2PARAMwin_nr) (yesterday (-V- OBJproc_1PARAMwin_nr))))

(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @winner.call[{win_nr==mynumber}]/#link.out@winner(<P>win_nr).call
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (-P- OBJproc_1_STDProcess_SM_STATEMAIN_EXIT) (next (-P- OBJproc_1_STDProcess_SM_STATEWIN_ENTER))))
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_1PARAMwin_nr) (-V- OBJproc_1ATTRmynumber))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPwinner)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_2OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_2OPwinnerTR_EqmS6eCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_2PARAMwin_nr) (yesterday (-V- OBJproc_1PARAMwin_nr))))

(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==1} && {one_nr!=max}]/#link.out@two(<P>one_nr).call, neighbourR=<P>one_nr
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_1ATTRactive) 1) (!! ([=] (-V- OBJproc_1PARAMone_nr) (-V- OBJproc_1ATTRmax))))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPone)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_2OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_2OPtwoTR_EqmS5eCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_2PARAMtwo_nr) (yesterday (-V- OBJproc_1PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_1ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR)))
(-> (-P- OBJproc_1ASSIGNMENT_EqmS5eCrEeStaJMMF3Zx1QneighbourR) ([=] (-V- OBJproc_1ATTRneighbourR) (yesterday (-V- OBJproc_1PARAMone_nr))))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==0}]/#link.out@one(<P>one_nr).call
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) ([=] (-V- OBJproc_1ATTRactive) 0)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPone)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4_CrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_2OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_2OPoneTR_EqmS4-CrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_2PARAMone_nr) (yesterday (-V- OBJproc_1PARAMone_nr))))

(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q))))

;;TRANSITION @one.call[{active==1} && {one_nr==max}]/#link.out@winner(<P>one_nr).call, @we_have_winner.sig
(-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD)) (||  (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q) (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD)))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (&&  ([=] (-V- OBJproc_1ATTRactive) 1) ([=] (-V- OBJproc_1PARAMone_nr) (-V- OBJproc_1ATTRmax)))) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_GUARD))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1OPone)) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q_TRIGGER))
(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_2OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_2OPwinnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL) ([=] (-V- OBJproc_2PARAMwin_nr) (yesterday (-V- OBJproc_1PARAMone_nr))))

(<-> (&&  (-P- $OBJproc_1_STDProcess_SM_STATEMAIN) (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q)) (next (-P- OBJproc_1OPwe_have_winnerTR_EqmS6OCrEeStaJMMF3Zx1Q_CALL)))
(-> (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6OCrEeStaJMMF3Zx1Q) (&&  (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5-CrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5OCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6uCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS6eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS5eCrEeStaJMMF3Zx1Q)) (!! (-P- OBJproc_1_STDProcess_SM_TRANSITION_EqmS4-CrEeStaJMMF3Zx1Q))))
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
([=] (-V- OBJproc_0ATTRmynumber) (-V- OBJproc_5ATTRmynumber))
([=] (-V- OBJproc_0ATTRmynumber) (-V- OBJproc_6ATTRmynumber))
([=] (-V- OBJproc_1ATTRmynumber) (-V- OBJproc_2ATTRmynumber))
([=] (-V- OBJproc_1ATTRmynumber) (-V- OBJproc_3ATTRmynumber))
([=] (-V- OBJproc_1ATTRmynumber) (-V- OBJproc_4ATTRmynumber))
([=] (-V- OBJproc_1ATTRmynumber) (-V- OBJproc_5ATTRmynumber))
([=] (-V- OBJproc_1ATTRmynumber) (-V- OBJproc_6ATTRmynumber))
([=] (-V- OBJproc_2ATTRmynumber) (-V- OBJproc_3ATTRmynumber))
([=] (-V- OBJproc_2ATTRmynumber) (-V- OBJproc_4ATTRmynumber))
([=] (-V- OBJproc_2ATTRmynumber) (-V- OBJproc_5ATTRmynumber))
([=] (-V- OBJproc_2ATTRmynumber) (-V- OBJproc_6ATTRmynumber))
([=] (-V- OBJproc_3ATTRmynumber) (-V- OBJproc_4ATTRmynumber))
([=] (-V- OBJproc_3ATTRmynumber) (-V- OBJproc_5ATTRmynumber))
([=] (-V- OBJproc_3ATTRmynumber) (-V- OBJproc_6ATTRmynumber))
([=] (-V- OBJproc_4ATTRmynumber) (-V- OBJproc_5ATTRmynumber))
([=] (-V- OBJproc_4ATTRmynumber) (-V- OBJproc_6ATTRmynumber))
([=] (-V- OBJproc_5ATTRmynumber) (-V- OBJproc_6ATTRmynumber))
))

)) ;;END AX1 


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
([=] (-V- OBJproc_5ATTRactive) 1) ([=] (-V- OBJproc_5ATTRmax) (-V- OBJproc_5ATTRmynumber))
([=] (-V- OBJproc_6ATTRactive) 1) ([=] (-V- OBJproc_6ATTRmax) (-V- OBJproc_6ATTRmynumber))
))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; THE SYSTEM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar the_system  (&& (yesterday (alwf AX1)) initAx ))


(ae2sbvzot:zot TSPACE (&& the_system) :smt-solver :z3 :logic :QF_UFLIA  )