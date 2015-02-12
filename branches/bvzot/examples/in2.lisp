; per quanto banale,
; questa specifica ha un output.txt di 16M
; ed un output.cnf di 103M! (Time=5)
;
; per la cronaca: con zot l'output e` di 30K
;
; con Time=4: 2.6K, 16M rispettivamente


(asdf:operate 'asdf:load-op 'ezot)
(use-package :trio-utils)

;(setf ezot:*FIXED-DELTA* 0)

(ezot:zot 
  13
  '(and A
     (alwf (impl A (nexttime A 10)))))


; Output:
; -------
; POOL : 1
; A : 1
; B : 1
; LOOP : 3
; A : 3
; B : 3
; A : 4
; B : 4
