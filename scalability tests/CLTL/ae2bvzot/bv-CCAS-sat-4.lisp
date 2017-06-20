(asdf:operate 'asdf:load-op 'ae2bvzot)
(use-package :trio-utils)
(defvar TSPACE 200)
(define-tvar OBJbusPARAMreceivedDistance *int*)
(define-tvar OBJctrlPARAMreceivedDistance *int*)
(define-tvar SDsendSensorDistancePARdistance *int*)
(defvar AX1 
 (&& 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLASS DIAGRAM 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;org.correttouml.uml.diagrams.classdiagram.Clock@73785e0fSEMANTICS
(<-> (||  (past (-P- MADESYSTEMSTART) 1) (lasted (!! (-P- radarClockTICK)) 14)) (-P- radarClockTICK))

;;SIGNALS SEMANTICS
(<-> (-P- brakeInterrupt) (-P- OBJctrl_STDStateMachine1_TRANSITION_qgxUMAODEeKTXbQztILh3g))


;;org.correttouml.uml.diagrams.classdiagram.Object@13695cfSEMANTICS
(<-> (-P- OBJbrakeSOPnotifyBrake) (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_End))

;;org.correttouml.uml.diagrams.classdiagram.Object@13695cf STD org.correttouml.uml.diagrams.statediagram.StateDiagram@75baec8e SEMANTICS

;;STATE org.correttouml.uml.diagrams.statediagram.State@7d3e3b95
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJbrakeS_STDStateMachine1_STATEbraking)))
(-> (-P- OBJbrakeS_STDStateMachine1_STATEbraking_ENTER) (yesterday (-P- OBJbrakeS_STDStateMachine1_TRANSITION__APegAOCEeKTXbQztILh3g)))
(-> (-P- OBJbrakeS_STDStateMachine1_STATEbraking_EXIT) (-P- OBJbrakeS_STDStateMachine1_TRANSITION_FDsOsAODEeKTXbQztILh3g))
(-> (&&  (-P- $OBJbrakeS_STDStateMachine1_STATEbraking) (!! (-P- OBJbrakeS_STDStateMachine1_STATEbraking_EXIT))) (next (-P- $OBJbrakeS_STDStateMachine1_STATEbraking)))
(-> (&&  (-P- $OBJbrakeS_STDStateMachine1_STATEbraking) (-P- OBJbrakeS_STDStateMachine1_STATEbraking_EXIT)) (next (!! (-P- $OBJbrakeS_STDStateMachine1_STATEbraking))))
(-> (&&  (!! (-P- $OBJbrakeS_STDStateMachine1_STATEbraking)) (next (-P- OBJbrakeS_STDStateMachine1_STATEbraking_ENTER))) (next (-P- $OBJbrakeS_STDStateMachine1_STATEbraking)))
(-> (&&  (!! (-P- $OBJbrakeS_STDStateMachine1_STATEbraking)) (next (!! (-P- OBJbrakeS_STDStateMachine1_STATEbraking_ENTER)))) (next (!! (-P- $OBJbrakeS_STDStateMachine1_STATEbraking))))

;;STATE org.correttouml.uml.diagrams.statediagram.State@5494ecac
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJbrakeS_STDStateMachine1_STATEidle)))
(-> (-P- MADESYSTEMSTART) (next (-P- OBJbrakeS_STDStateMachine1_STATEidle_ENTER)))
(-> (-P- OBJbrakeS_STDStateMachine1_STATEidle_ENTER) (yesterday (||  (-P- MADESYSTEMSTART) (-P- OBJbrakeS_STDStateMachine1_TRANSITION_FDsOsAODEeKTXbQztILh3g))))
(-> (-P- OBJbrakeS_STDStateMachine1_STATEidle_EXIT) (-P- OBJbrakeS_STDStateMachine1_TRANSITION__APegAOCEeKTXbQztILh3g))
(-> (&&  (-P- $OBJbrakeS_STDStateMachine1_STATEidle) (!! (-P- OBJbrakeS_STDStateMachine1_STATEidle_EXIT))) (next (-P- $OBJbrakeS_STDStateMachine1_STATEidle)))
(-> (&&  (-P- $OBJbrakeS_STDStateMachine1_STATEidle) (-P- OBJbrakeS_STDStateMachine1_STATEidle_EXIT)) (next (!! (-P- $OBJbrakeS_STDStateMachine1_STATEidle))))
(-> (&&  (!! (-P- $OBJbrakeS_STDStateMachine1_STATEidle)) (next (-P- OBJbrakeS_STDStateMachine1_STATEidle_ENTER))) (next (-P- $OBJbrakeS_STDStateMachine1_STATEidle)))
(-> (&&  (!! (-P- $OBJbrakeS_STDStateMachine1_STATEidle)) (next (!! (-P- OBJbrakeS_STDStateMachine1_STATEidle_ENTER)))) (next (!! (-P- $OBJbrakeS_STDStateMachine1_STATEidle))))

;;TRANSITION org.correttouml.uml.diagrams.statediagram.Transition@3626afff
(-> (-P- OBJbrakeS_STDStateMachine1_TRANSITION_FDsOsAODEeKTXbQztILh3g) (&&  (-P- OBJbrakeS_STDStateMachine1_STATEbraking_EXIT) (next (-P- OBJbrakeS_STDStateMachine1_STATEidle_ENTER))))
(-> (-P- OBJbrakeS_STDStateMachine1_TRANSITION_FDsOsAODEeKTXbQztILh3g_TRIGGER) (-P- OBJbrakeS_STDStateMachine1_TRANSITION_FDsOsAODEeKTXbQztILh3g))
(-> (-P- OBJbrakeS_STDStateMachine1_TRANSITION_FDsOsAODEeKTXbQztILh3g) (&&  (-P- $OBJbrakeS_STDStateMachine1_STATEbraking) (-P- OBJbrakeS_STDStateMachine1_TRANSITION_FDsOsAODEeKTXbQztILh3g_TRIGGER)))
(<-> (&&  (-P- $OBJbrakeS_STDStateMachine1_STATEbraking) (-P- OBJbrakeS_STDStateMachine1_TRANSITION_FDsOsAODEeKTXbQztILh3g_TIMECONDITION)) (-P- OBJbrakeS_STDStateMachine1_TRANSITION_FDsOsAODEeKTXbQztILh3g_TRIGGER))
(<-> (-P- OBJbrakeS_STDStateMachine1_TRANSITION_FDsOsAODEeKTXbQztILh3g_TIMECONDITION) (&&  (past (-P- OBJbrakeS_STDStateMachine1_STATEbraking_ENTER) 10) (lasted_ie (!! (-P- OBJbrakeS_STDStateMachine1_STATEbraking_ENTER)) 10)))

;;TRANSITION org.correttouml.uml.diagrams.statediagram.Transition@14d90e02
(-> (-P- OBJbrakeS_STDStateMachine1_TRANSITION__APegAOCEeKTXbQztILh3g) (&&  (-P- OBJbrakeS_STDStateMachine1_STATEidle_EXIT) (next (-P- OBJbrakeS_STDStateMachine1_STATEbraking_ENTER))))
(-> (-P- OBJbrakeS_STDStateMachine1_TRANSITION__APegAOCEeKTXbQztILh3g_TRIGGER) (-P- OBJbrakeS_STDStateMachine1_TRANSITION__APegAOCEeKTXbQztILh3g))
(-> (-P- OBJbrakeS_STDStateMachine1_TRANSITION__APegAOCEeKTXbQztILh3g) (&&  (-P- $OBJbrakeS_STDStateMachine1_STATEidle) (-P- OBJbrakeS_STDStateMachine1_TRANSITION__APegAOCEeKTXbQztILh3g_TRIGGER)))
(<-> (&&  (-P- $OBJbrakeS_STDStateMachine1_STATEidle) (-P- OBJbrakeSOPnotifyBrake)) (-P- OBJbrakeS_STDStateMachine1_TRANSITION__APegAOCEeKTXbQztILh3g_TRIGGER))

;;org.correttouml.uml.diagrams.classdiagram.Object@1555511fSEMANTICS

;;org.correttouml.uml.diagrams.classdiagram.Object@71a4e6f3SEMANTICS
(<-> (-P- OBJctrlOPnotifyDistance) (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_End))

;;org.correttouml.uml.diagrams.classdiagram.Object@71a4e6f3 STD org.correttouml.uml.diagrams.statediagram.StateDiagram@2ee95a72 SEMANTICS

;;STATE org.correttouml.uml.diagrams.statediagram.State@660a66d4
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJctrl_STDStateMachine1_STATEwarning)))
(-> (-P- OBJctrl_STDStateMachine1_STATEwarning_ENTER) (yesterday (-P- OBJctrl_STDStateMachine1_TRANSITION_bR9nsAODEeKTXbQztILh3g)))
(-> (-P- OBJctrl_STDStateMachine1_STATEwarning_EXIT) (||  (-P- OBJctrl_STDStateMachine1_TRANSITION_ouuu0AODEeKTXbQztILh3g) (-P- OBJctrl_STDStateMachine1_TRANSITION_qgxUMAODEeKTXbQztILh3g)))
(-> (&&  (-P- $OBJctrl_STDStateMachine1_STATEwarning) (!! (-P- OBJctrl_STDStateMachine1_STATEwarning_EXIT))) (next (-P- $OBJctrl_STDStateMachine1_STATEwarning)))
(-> (&&  (-P- $OBJctrl_STDStateMachine1_STATEwarning) (-P- OBJctrl_STDStateMachine1_STATEwarning_EXIT)) (next (!! (-P- $OBJctrl_STDStateMachine1_STATEwarning))))
(-> (&&  (!! (-P- $OBJctrl_STDStateMachine1_STATEwarning)) (next (-P- OBJctrl_STDStateMachine1_STATEwarning_ENTER))) (next (-P- $OBJctrl_STDStateMachine1_STATEwarning)))
(-> (&&  (!! (-P- $OBJctrl_STDStateMachine1_STATEwarning)) (next (!! (-P- OBJctrl_STDStateMachine1_STATEwarning_ENTER)))) (next (!! (-P- $OBJctrl_STDStateMachine1_STATEwarning))))

;;STATE org.correttouml.uml.diagrams.statediagram.State@34e51ca2
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJctrl_STDStateMachine1_STATEbraking)))
(-> (-P- OBJctrl_STDStateMachine1_STATEbraking_ENTER) (yesterday (-P- OBJctrl_STDStateMachine1_TRANSITION_qgxUMAODEeKTXbQztILh3g)))
(-> (-P- OBJctrl_STDStateMachine1_STATEbraking_EXIT) (-P- OBJctrl_STDStateMachine1_TRANSITION_vYX8UAODEeKTXbQztILh3g))
(-> (&&  (-P- $OBJctrl_STDStateMachine1_STATEbraking) (!! (-P- OBJctrl_STDStateMachine1_STATEbraking_EXIT))) (next (-P- $OBJctrl_STDStateMachine1_STATEbraking)))
(-> (&&  (-P- $OBJctrl_STDStateMachine1_STATEbraking) (-P- OBJctrl_STDStateMachine1_STATEbraking_EXIT)) (next (!! (-P- $OBJctrl_STDStateMachine1_STATEbraking))))
(-> (&&  (!! (-P- $OBJctrl_STDStateMachine1_STATEbraking)) (next (-P- OBJctrl_STDStateMachine1_STATEbraking_ENTER))) (next (-P- $OBJctrl_STDStateMachine1_STATEbraking)))
(-> (&&  (!! (-P- $OBJctrl_STDStateMachine1_STATEbraking)) (next (!! (-P- OBJctrl_STDStateMachine1_STATEbraking_ENTER)))) (next (!! (-P- $OBJctrl_STDStateMachine1_STATEbraking))))

;;STATE org.correttouml.uml.diagrams.statediagram.State@1ce6942e
(-> (-P- MADESYSTEMSTART) (!! (-P- $OBJctrl_STDStateMachine1_STATEnoAction)))
(-> (-P- MADESYSTEMSTART) (next (-P- OBJctrl_STDStateMachine1_STATEnoAction_ENTER)))
(-> (-P- OBJctrl_STDStateMachine1_STATEnoAction_ENTER) (yesterday (||  (-P- MADESYSTEMSTART) (-P- OBJctrl_STDStateMachine1_TRANSITION_ouuu0AODEeKTXbQztILh3g) (-P- OBJctrl_STDStateMachine1_TRANSITION_vYX8UAODEeKTXbQztILh3g))))
(-> (-P- OBJctrl_STDStateMachine1_STATEnoAction_EXIT) (-P- OBJctrl_STDStateMachine1_TRANSITION_bR9nsAODEeKTXbQztILh3g))
(-> (&&  (-P- $OBJctrl_STDStateMachine1_STATEnoAction) (!! (-P- OBJctrl_STDStateMachine1_STATEnoAction_EXIT))) (next (-P- $OBJctrl_STDStateMachine1_STATEnoAction)))
(-> (&&  (-P- $OBJctrl_STDStateMachine1_STATEnoAction) (-P- OBJctrl_STDStateMachine1_STATEnoAction_EXIT)) (next (!! (-P- $OBJctrl_STDStateMachine1_STATEnoAction))))
(-> (&&  (!! (-P- $OBJctrl_STDStateMachine1_STATEnoAction)) (next (-P- OBJctrl_STDStateMachine1_STATEnoAction_ENTER))) (next (-P- $OBJctrl_STDStateMachine1_STATEnoAction)))
(-> (&&  (!! (-P- $OBJctrl_STDStateMachine1_STATEnoAction)) (next (!! (-P- OBJctrl_STDStateMachine1_STATEnoAction_ENTER)))) (next (!! (-P- $OBJctrl_STDStateMachine1_STATEnoAction))))

;;TRANSITION org.correttouml.uml.diagrams.statediagram.Transition@5c7b0aef
(-> (-P- OBJctrl_STDStateMachine1_TRANSITION_ouuu0AODEeKTXbQztILh3g) (&&  (-P- OBJctrl_STDStateMachine1_STATEwarning_EXIT) (next (-P- OBJctrl_STDStateMachine1_STATEnoAction_ENTER))))
(-> (&&  (-P- OBJctrl_STDStateMachine1_TRANSITION_ouuu0AODEeKTXbQztILh3g_TRIGGER) (-P- OBJctrl_STDStateMachine1_TRANSITION_ouuu0AODEeKTXbQztILh3g_GUARD)) (||  (-P- OBJctrl_STDStateMachine1_TRANSITION_ouuu0AODEeKTXbQztILh3g) (-P- OBJctrl_STDStateMachine1_TRANSITION_qgxUMAODEeKTXbQztILh3g)))
(-> (-P- OBJctrl_STDStateMachine1_TRANSITION_ouuu0AODEeKTXbQztILh3g) (&&  (-P- $OBJctrl_STDStateMachine1_STATEwarning) (-P- OBJctrl_STDStateMachine1_TRANSITION_ouuu0AODEeKTXbQztILh3g_TRIGGER) (-P- OBJctrl_STDStateMachine1_TRANSITION_ouuu0AODEeKTXbQztILh3g_GUARD)))
(<-> (&&  (-P- $OBJctrl_STDStateMachine1_STATEwarning) ([>=] (-V- OBJctrlPARAMreceivedDistance) 2)) (-P- OBJctrl_STDStateMachine1_TRANSITION_ouuu0AODEeKTXbQztILh3g_GUARD))
(<-> (&&  (-P- $OBJctrl_STDStateMachine1_STATEwarning) (-P- OBJctrlOPnotifyDistance)) (-P- OBJctrl_STDStateMachine1_TRANSITION_ouuu0AODEeKTXbQztILh3g_TRIGGER))
(-> (-P- OBJctrl_STDStateMachine1_TRANSITION_ouuu0AODEeKTXbQztILh3g) (!! (-P- OBJctrl_STDStateMachine1_TRANSITION_qgxUMAODEeKTXbQztILh3g)))

;;TRANSITION org.correttouml.uml.diagrams.statediagram.Transition@64c182ee
(-> (-P- OBJctrl_STDStateMachine1_TRANSITION_bR9nsAODEeKTXbQztILh3g) (&&  (-P- OBJctrl_STDStateMachine1_STATEnoAction_EXIT) (next (-P- OBJctrl_STDStateMachine1_STATEwarning_ENTER))))
(-> (&&  (-P- OBJctrl_STDStateMachine1_TRANSITION_bR9nsAODEeKTXbQztILh3g_TRIGGER) (-P- OBJctrl_STDStateMachine1_TRANSITION_bR9nsAODEeKTXbQztILh3g_GUARD)) (||  (-P- OBJctrl_STDStateMachine1_TRANSITION_bR9nsAODEeKTXbQztILh3g) (-P- OBJctrl_STDStateMachine1_TRANSITION_WCvw0AODEeKTXbQztILh3g)))
(-> (-P- OBJctrl_STDStateMachine1_TRANSITION_bR9nsAODEeKTXbQztILh3g) (&&  (-P- $OBJctrl_STDStateMachine1_STATEnoAction) (-P- OBJctrl_STDStateMachine1_TRANSITION_bR9nsAODEeKTXbQztILh3g_TRIGGER) (-P- OBJctrl_STDStateMachine1_TRANSITION_bR9nsAODEeKTXbQztILh3g_GUARD)))
(<-> (&&  (-P- $OBJctrl_STDStateMachine1_STATEnoAction) ([<] (-V- OBJctrlPARAMreceivedDistance) 2)) (-P- OBJctrl_STDStateMachine1_TRANSITION_bR9nsAODEeKTXbQztILh3g_GUARD))
(<-> (&&  (-P- $OBJctrl_STDStateMachine1_STATEnoAction) (-P- OBJctrlOPnotifyDistance)) (-P- OBJctrl_STDStateMachine1_TRANSITION_bR9nsAODEeKTXbQztILh3g_TRIGGER))
(-> (-P- OBJctrl_STDStateMachine1_TRANSITION_bR9nsAODEeKTXbQztILh3g) (!! (-P- OBJctrl_STDStateMachine1_TRANSITION_WCvw0AODEeKTXbQztILh3g)))

;;TRANSITION org.correttouml.uml.diagrams.statediagram.Transition@10439aa9
(-> (-P- OBJctrl_STDStateMachine1_TRANSITION_vYX8UAODEeKTXbQztILh3g) (&&  (-P- OBJctrl_STDStateMachine1_STATEbraking_EXIT) (next (-P- OBJctrl_STDStateMachine1_STATEnoAction_ENTER))))
(-> (-P- OBJctrl_STDStateMachine1_TRANSITION_vYX8UAODEeKTXbQztILh3g_TRIGGER) (-P- OBJctrl_STDStateMachine1_TRANSITION_vYX8UAODEeKTXbQztILh3g))
(-> (-P- OBJctrl_STDStateMachine1_TRANSITION_vYX8UAODEeKTXbQztILh3g) (&&  (-P- $OBJctrl_STDStateMachine1_STATEbraking) (-P- OBJctrl_STDStateMachine1_TRANSITION_vYX8UAODEeKTXbQztILh3g_TRIGGER)))
(<-> (&&  (-P- $OBJctrl_STDStateMachine1_STATEbraking) (-P- OBJctrl_STDStateMachine1_TRANSITION_vYX8UAODEeKTXbQztILh3g_TIMECONDITION)) (-P- OBJctrl_STDStateMachine1_TRANSITION_vYX8UAODEeKTXbQztILh3g_TRIGGER))
(<-> (-P- OBJctrl_STDStateMachine1_TRANSITION_vYX8UAODEeKTXbQztILh3g_TIMECONDITION) (&&  (past (-P- OBJctrl_STDStateMachine1_STATEbraking_ENTER) 1) (lasted_ie (!! (-P- OBJctrl_STDStateMachine1_STATEbraking_ENTER)) 1)))

;;TRANSITION org.correttouml.uml.diagrams.statediagram.Transition@13887906
(-> (&&  (-P- OBJctrl_STDStateMachine1_TRANSITION_WCvw0AODEeKTXbQztILh3g_TRIGGER) (-P- OBJctrl_STDStateMachine1_TRANSITION_WCvw0AODEeKTXbQztILh3g_GUARD)) (||  (-P- OBJctrl_STDStateMachine1_TRANSITION_bR9nsAODEeKTXbQztILh3g) (-P- OBJctrl_STDStateMachine1_TRANSITION_WCvw0AODEeKTXbQztILh3g)))
(-> (-P- OBJctrl_STDStateMachine1_TRANSITION_WCvw0AODEeKTXbQztILh3g) (&&  (-P- $OBJctrl_STDStateMachine1_STATEnoAction) (-P- OBJctrl_STDStateMachine1_TRANSITION_WCvw0AODEeKTXbQztILh3g_TRIGGER) (-P- OBJctrl_STDStateMachine1_TRANSITION_WCvw0AODEeKTXbQztILh3g_GUARD)))
(<-> (&&  (-P- $OBJctrl_STDStateMachine1_STATEnoAction) ([>=] (-V- OBJctrlPARAMreceivedDistance) 2)) (-P- OBJctrl_STDStateMachine1_TRANSITION_WCvw0AODEeKTXbQztILh3g_GUARD))
(<-> (&&  (-P- $OBJctrl_STDStateMachine1_STATEnoAction) (-P- OBJctrlOPnotifyDistance)) (-P- OBJctrl_STDStateMachine1_TRANSITION_WCvw0AODEeKTXbQztILh3g_TRIGGER))
(-> (-P- OBJctrl_STDStateMachine1_TRANSITION_WCvw0AODEeKTXbQztILh3g) (!! (-P- OBJctrl_STDStateMachine1_TRANSITION_bR9nsAODEeKTXbQztILh3g)))

;;TRANSITION org.correttouml.uml.diagrams.statediagram.Transition@120b0058
(-> (-P- OBJctrl_STDStateMachine1_TRANSITION_qgxUMAODEeKTXbQztILh3g) (&&  (-P- OBJctrl_STDStateMachine1_STATEwarning_EXIT) (next (-P- OBJctrl_STDStateMachine1_STATEbraking_ENTER))))
(-> (&&  (-P- OBJctrl_STDStateMachine1_TRANSITION_qgxUMAODEeKTXbQztILh3g_TRIGGER) (-P- OBJctrl_STDStateMachine1_TRANSITION_qgxUMAODEeKTXbQztILh3g_GUARD)) (||  (-P- OBJctrl_STDStateMachine1_TRANSITION_ouuu0AODEeKTXbQztILh3g) (-P- OBJctrl_STDStateMachine1_TRANSITION_qgxUMAODEeKTXbQztILh3g)))
(-> (-P- OBJctrl_STDStateMachine1_TRANSITION_qgxUMAODEeKTXbQztILh3g) (&&  (-P- $OBJctrl_STDStateMachine1_STATEwarning) (-P- OBJctrl_STDStateMachine1_TRANSITION_qgxUMAODEeKTXbQztILh3g_TRIGGER) (-P- OBJctrl_STDStateMachine1_TRANSITION_qgxUMAODEeKTXbQztILh3g_GUARD)))
(<-> (&&  (-P- $OBJctrl_STDStateMachine1_STATEwarning) (&&  ([<] (-V- OBJctrlPARAMreceivedDistance) 2) (&&  (lasted_ii (!! (-P- OBJctrl_STDStateMachine1_STATEwarning_ENTER)) 30) (somp (-P- OBJctrl_STDStateMachine1_STATEwarning_ENTER))))) (-P- OBJctrl_STDStateMachine1_TRANSITION_qgxUMAODEeKTXbQztILh3g_GUARD))
(<-> (&&  (-P- $OBJctrl_STDStateMachine1_STATEwarning) (-P- OBJctrlOPnotifyDistance)) (-P- OBJctrl_STDStateMachine1_TRANSITION_qgxUMAODEeKTXbQztILh3g_TRIGGER))
(<-> (&&  (-P- $OBJctrl_STDStateMachine1_STATEwarning) (-P- OBJctrl_STDStateMachine1_TRANSITION_qgxUMAODEeKTXbQztILh3g)) (-P- brakeInterrupt))
(-> (-P- OBJctrl_STDStateMachine1_TRANSITION_qgxUMAODEeKTXbQztILh3g) (!! (-P- OBJctrl_STDStateMachine1_TRANSITION_ouuu0AODEeKTXbQztILh3g)))

;;org.correttouml.uml.diagrams.classdiagram.Object@26a549a8SEMANTICS
(<-> (-P- OBJbusOPsendBrakeCommand) (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_End))
(<-> (-P- OBJbusOPsendSensorDistance) (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_End))

;;org.correttouml.uml.diagrams.classdiagram.Object@4b9b3eabSEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SEQUENCE DIAGRAMS 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD sendBrakeCommand 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(<-> (-P- SDsendBrakeCommand) (||  (-P- sendBrakeCommand_START) (since_ei (&&  (!! (-P- sendBrakeCommand_STOP)) (!! (-P- sendBrakeCommand_END))) (-P- sendBrakeCommand_START))))

;;SD CONNECTIONS SEMANTICS
(<-> (-P- sendBrakeCommand_START) (-P- IOD__pNsfkAN_EeKTXbQztILh3g_sendBrakeCommand_START))
(<-> (-P- sendBrakeCommand_END) (-P- IOD__pNsfkAN_EeKTXbQztILh3g_sendBrakeCommand_END))

;;STOP SEMANTICS
(!! (-P- sendBrakeCommand_STOP))

;;MULTI SEQUENCE DIAGRAM INSTANCE SEMANTICS
(-> (-P- sendBrakeCommand_START) (until_ei (!! (-P- sendBrakeCommand_START)) (||  (-P- sendBrakeCommand_STOP) (-P- sendBrakeCommand_END))))

;;START SEMANTICS
(-> (-P- sendBrakeCommand_START) (||  (&&  (until_ei (&&  (!! (-P- sendBrakeCommand_START)) (!! (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_End))) (-P- sendBrakeCommand_STOP)) (!! (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_End))) (until_ei (!! (-P- sendBrakeCommand_STOP)) (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_End))))
(-> (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_End) (since_ei (&&  (!! (-P- sendBrakeCommand_STOP)) (!! (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_End))) (-P- sendBrakeCommand_START)))
(-> (-P- sendBrakeCommand_START) (||  (&&  (until_ei (&&  (!! (-P- sendBrakeCommand_START)) (!! (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_End))) (-P- sendBrakeCommand_STOP)) (!! (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_End))) (until_ei (!! (-P- sendBrakeCommand_STOP)) (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_End))))
(-> (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_End) (since_ei (&&  (!! (-P- sendBrakeCommand_STOP)) (!! (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_End))) (-P- sendBrakeCommand_START)))
(-> (-P- sendBrakeCommand_START) (||  (&&  (until_ei (&&  (!! (-P- sendBrakeCommand_START)) (!! (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_Start))) (-P- sendBrakeCommand_STOP)) (!! (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_Start))) (until_ei (!! (-P- sendBrakeCommand_STOP)) (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_Start))))
(-> (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_Start) (since_ei (&&  (!! (-P- sendBrakeCommand_STOP)) (!! (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_Start))) (-P- sendBrakeCommand_START)))

;;END SEMANTICS
(-> (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_End) (||  (&&  (until_ei (&&  (!! (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_End)) (!! (-P- sendBrakeCommand_END))) (-P- sendBrakeCommand_STOP)) (!! (-P- sendBrakeCommand_END))) (until_ei (!! (-P- sendBrakeCommand_STOP)) (-P- sendBrakeCommand_END))))
(-> (-P- sendBrakeCommand_END) (since_ei (&&  (!! (-P- sendBrakeCommand_STOP)) (!! (-P- sendBrakeCommand_END))) (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_End)))
(-> (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_Start) (||  (&&  (until_ei (&&  (!! (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_Start)) (!! (-P- sendBrakeCommand_END))) (-P- sendBrakeCommand_STOP)) (!! (-P- sendBrakeCommand_END))) (until_ei (!! (-P- sendBrakeCommand_STOP)) (-P- sendBrakeCommand_END))))
(-> (-P- sendBrakeCommand_END) (since_ei (&&  (!! (-P- sendBrakeCommand_STOP)) (!! (-P- sendBrakeCommand_END))) (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_Start)))
(-> (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_Start) (||  (&&  (until_ei (&&  (!! (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_Start)) (!! (-P- sendBrakeCommand_END))) (-P- sendBrakeCommand_STOP)) (!! (-P- sendBrakeCommand_END))) (until_ei (!! (-P- sendBrakeCommand_STOP)) (-P- sendBrakeCommand_END))))
(-> (-P- sendBrakeCommand_END) (since_ei (&&  (!! (-P- sendBrakeCommand_STOP)) (!! (-P- sendBrakeCommand_END))) (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_Start)))
(<-> (-P- sendBrakeCommand_END) (||  (&&  (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_Start) (since_ei (!! (-P- sendBrakeCommand_END)) (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_End)) (since_ei (!! (-P- sendBrakeCommand_END)) (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_Start))) (&&  (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_End) (since_ei (!! (-P- sendBrakeCommand_END)) (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_Start)) (since_ei (!! (-P- sendBrakeCommand_END)) (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_Start))) (&&  (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_Start) (since_ei (!! (-P- sendBrakeCommand_END)) (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_Start)) (since_ei (!! (-P- sendBrakeCommand_END)) (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_End)))))

;;LIFELINES SEMANTICS

;;LIFELINE brakeS:BrakingSystem

;;LIFELINE bus:Bus
(-> (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_End) (||  (&&  (until_ei (&&  (!! (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_End)) (!! (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_Start))) (-P- sendBrakeCommand_STOP)) (!! (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_Start))) (until_ei (!! (-P- sendBrakeCommand_STOP)) (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_Start))))
(-> (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_Start) (since_ei (&&  (!! (-P- sendBrakeCommand_STOP)) (!! (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_Start))) (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_End)))
(-> (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_End) (!! (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_Start)))

;;LIFELINE ctrl:Controller

;;MESSAGES SEMANTICS
(<-> (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g) (||  (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_Start) (since_ei (!! (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_End)) (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_Start))))
(<-> (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_Start) (-P- MESSAGE_I36jsAOCEeKTXbQztILh3g_End))
(<-> (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g) (||  (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_Start) (since_ei (!! (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_End)) (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_Start))))
(<-> (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_Start) (-P- MESSAGE_FoVpUAOCEeKTXbQztILh3g_End))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- SDsendBrakeCommand_TIMECONSTRAINT_1) (&&  (-P- SDsendBrakeCommand) (-> (-P- sendBrakeCommand_END) (&&  (next (Lasttime_ii (-P- sendBrakeCommand_START) 3)) (!! (since_ii (!! (-P- sendBrakeCommand_START)) (-P- sendBrakeCommand_START)))))))
(-> (-P- SDsendBrakeCommand) (-P- SDsendBrakeCommand_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SD sendSensorDistance 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(<-> (-P- SDsendSensorDistance) (||  (-P- sendSensorDistance_START) (since_ei (&&  (!! (-P- sendSensorDistance_STOP)) (!! (-P- sendSensorDistance_END))) (-P- sendSensorDistance_START))))

;;SD CONNECTIONS SEMANTICS
(<-> (-P- sendSensorDistance_START) (-P- IOD__pNsfkAN_EeKTXbQztILh3g_sendSensorDistance_START))
(<-> (-P- sendSensorDistance_END) (-P- IOD__pNsfkAN_EeKTXbQztILh3g_sendSensorDistance_END))

;;STOP SEMANTICS
(!! (-P- sendSensorDistance_STOP))

;;MULTI SEQUENCE DIAGRAM INSTANCE SEMANTICS
(-> (-P- sendSensorDistance_START) (until_ei (!! (-P- sendSensorDistance_START)) (||  (-P- sendSensorDistance_STOP) (-P- sendSensorDistance_END))))

;;START SEMANTICS
(-> (-P- sendSensorDistance_START) (||  (&&  (until_ei (&&  (!! (-P- sendSensorDistance_START)) (!! (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_Start))) (-P- sendSensorDistance_STOP)) (!! (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_Start))) (until_ei (!! (-P- sendSensorDistance_STOP)) (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_Start))))
(-> (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_Start) (since_ei (&&  (!! (-P- sendSensorDistance_STOP)) (!! (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_Start))) (-P- sendSensorDistance_START)))
(-> (-P- sendSensorDistance_START) (||  (&&  (until_ei (&&  (!! (-P- sendSensorDistance_START)) (!! (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_End))) (-P- sendSensorDistance_STOP)) (!! (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_End))) (until_ei (!! (-P- sendSensorDistance_STOP)) (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_End))))
(-> (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_End) (since_ei (&&  (!! (-P- sendSensorDistance_STOP)) (!! (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_End))) (-P- sendSensorDistance_START)))
(-> (-P- sendSensorDistance_START) (||  (&&  (until_ei (&&  (!! (-P- sendSensorDistance_START)) (!! (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_End))) (-P- sendSensorDistance_STOP)) (!! (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_End))) (until_ei (!! (-P- sendSensorDistance_STOP)) (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_End))))
(-> (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_End) (since_ei (&&  (!! (-P- sendSensorDistance_STOP)) (!! (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_End))) (-P- sendSensorDistance_START)))

;;END SEMANTICS
(-> (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_Start) (||  (&&  (until_ei (&&  (!! (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_Start)) (!! (-P- sendSensorDistance_END))) (-P- sendSensorDistance_STOP)) (!! (-P- sendSensorDistance_END))) (until_ei (!! (-P- sendSensorDistance_STOP)) (-P- sendSensorDistance_END))))
(-> (-P- sendSensorDistance_END) (since_ei (&&  (!! (-P- sendSensorDistance_STOP)) (!! (-P- sendSensorDistance_END))) (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_Start)))
(-> (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_Start) (||  (&&  (until_ei (&&  (!! (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_Start)) (!! (-P- sendSensorDistance_END))) (-P- sendSensorDistance_STOP)) (!! (-P- sendSensorDistance_END))) (until_ei (!! (-P- sendSensorDistance_STOP)) (-P- sendSensorDistance_END))))
(-> (-P- sendSensorDistance_END) (since_ei (&&  (!! (-P- sendSensorDistance_STOP)) (!! (-P- sendSensorDistance_END))) (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_Start)))
(-> (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_End) (||  (&&  (until_ei (&&  (!! (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_End)) (!! (-P- sendSensorDistance_END))) (-P- sendSensorDistance_STOP)) (!! (-P- sendSensorDistance_END))) (until_ei (!! (-P- sendSensorDistance_STOP)) (-P- sendSensorDistance_END))))
(-> (-P- sendSensorDistance_END) (since_ei (&&  (!! (-P- sendSensorDistance_STOP)) (!! (-P- sendSensorDistance_END))) (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_End)))
(<-> (-P- sendSensorDistance_END) (||  (&&  (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_Start) (since_ei (!! (-P- sendSensorDistance_END)) (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_End)) (since_ei (!! (-P- sendSensorDistance_END)) (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_Start))) (&&  (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_End) (since_ei (!! (-P- sendSensorDistance_END)) (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_Start)) (since_ei (!! (-P- sendSensorDistance_END)) (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_Start))) (&&  (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_Start) (since_ei (!! (-P- sendSensorDistance_END)) (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_Start)) (since_ei (!! (-P- sendSensorDistance_END)) (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_End)))))

;;LIFELINES SEMANTICS

;;LIFELINE radar:Radar

;;LIFELINE bus:Bus
(-> (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_End) (||  (&&  (until_ei (&&  (!! (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_End)) (!! (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_Start))) (-P- sendSensorDistance_STOP)) (!! (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_Start))) (until_ei (!! (-P- sendSensorDistance_STOP)) (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_Start))))
(-> (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_Start) (since_ei (&&  (!! (-P- sendSensorDistance_STOP)) (!! (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_Start))) (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_End)))
(-> (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_End) (!! (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_Start)))

;;LIFELINE ctrl:Controller

;;MESSAGES SEMANTICS
(<-> (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g) (||  (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_Start) (since_ei (!! (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_End)) (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_Start))))
(-> (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_End) ([=] (-V- SDsendSensorDistancePARdistance) (-V- OBJctrlPARAMreceivedDistance)))
(<-> (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_Start) (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_End))
(<-> (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g) (||  (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_Start) (since_ei (!! (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_End)) (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_Start))))
(-> (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_End) ([=] (-V- SDsendSensorDistancePARdistance) (-V- OBJbusPARAMreceivedDistance)))
(<-> (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_Start) (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_End))
(<-> (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_Start) (-P- radarClockTICK))

;;EXOCCS SEMANTICS

;;TIME CONSTRAINTS SEMANTICS
(<-> (-P- SDsendSensorDistance_TIMECONSTRAINT_1) (&&  (-P- SDsendSensorDistance) (-> (-P- MESSAGE_lZQ5wAOBEeKTXbQztILh3g_End) (&&  (next (Lasttime_ii (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_End) 3)) (!! (since_ii (!! (-P- MESSAGE_Ijqc4AOAEeKTXbQztILh3g_End)) (-P- sendSensorDistance_START)))))))
(-> (-P- SDsendSensorDistance) (-P- SDsendSensorDistance_TIMECONSTRAINT_1))

;;SEQUENCE DIAGRAM PARAMETER SEMANTICS
(-> (&&  (-P- SDsendSensorDistance) (!! (-P- sendSensorDistance_START))) ([=] (-V- SDsendSensorDistancePARdistance) (yesterday (-V- SDsendSensorDistancePARdistance))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; IODs 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;IOD Activity1
(<-> (-P- IOD__pNsfkAN_EeKTXbQztILh3g_sendSensorDistance_START) (past (||  (-P- IOD__pNsfkAN_EeKTXbQztILh3g_sendSensorDistance_END) (-P- IOD_pNsfkAN_EeKTXbQztILh3g_START)) 1))
(<-> (-P- IOD__pNsfkAN_EeKTXbQztILh3g_sendBrakeCommand_START) (past (-P- brakeInterrupt) 1))
(-> (-P- IOD_pNsfkAN_EeKTXbQztILh3g_START) (futr (!! (somf (-P- IOD_pNsfkAN_EeKTXbQztILh3g_START))) 1))
(<-> (-P- MADESYSTEMSTART) (-P- IOD_pNsfkAN_EeKTXbQztILh3g_START))
(!! (-P- IOD_pNsfkAN_EeKTXbQztILh3g_END))


)) ;;END AX1 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; PROPERTIES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar Q1 (alwf (-> (lasted ([<] (-V- SDsendSensorDistancePARdistance) 2) 55) (withinp (-P- $OBJbrakeS_STDStateMachine1_STATEbraking) 55))) )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; INIT AXIOM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar initAx (&& 
(yesterday (&&  (-P- MADESYSTEMSTART) (alwf_e (!! (-P- MADESYSTEMSTART)))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLASS DIAGRAM INITIALIZATION 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;org.correttouml.uml.diagrams.classdiagram.Object@13695cf INITIALIZATION SEMANTICS

;;org.correttouml.uml.diagrams.classdiagram.Object@1555511f INITIALIZATION SEMANTICS

;;org.correttouml.uml.diagrams.classdiagram.Object@71a4e6f3 INITIALIZATION SEMANTICS

;;org.correttouml.uml.diagrams.classdiagram.Object@26a549a8 INITIALIZATION SEMANTICS

;;org.correttouml.uml.diagrams.classdiagram.Object@4b9b3eab INITIALIZATION SEMANTICS

) )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; THE SYSTEM
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar the_system  (&& (yesterday (alwf AX1)) 
	; (!!(yesterday (alwf Q1)))
	initAx ))


(ae2bvzot:zot TSPACE (&& the_system) :smt-solver :z3 :logic :QF_UFLIA  )