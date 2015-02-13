(asdf:operate 'asdf:load-op 'meezot)
(use-package :trio-utils)

(format t "~%Found: ~S~%"
  (loop for bound from 1 to 60 do
       (let ((res 
        (meezot:zot 
         bound
         (YESTERDAY
 (NEXT(&& (SOMP (ALWP (!! (-P- ENTERR))))
  (&&
   (ALWF
    (&&
     (&&
      (<-> (&& (-P- GO_0) (!! (-P- GO_1)))
       (YESTERDAY
        (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ENTERR)))))))
      (<-> (&& (!! (-P- GO_0)) (!! (-P- GO_1))) (-P- EXITI)))
     (&& (<-> (-P- RED) (!! (-P- GREEN)))
      (<-> (-P- RED)
       (YESTERDAY
        (SINCE (!! (&& (-P- EXITI) (!! (-P- ENTERR))))
         (&& (!! (&& (-P- EXITI) (!! (-P- ENTERR)))) (-P- ENTERR))))))
     (&&
      (||
       (!!
        (&& (YESTERDAY (&& (-P- BAR_0) (!! (-P- BAR_1))))
         (&& (!! (-P- GO_0)) (!! (-P- GO_1)))))
       (&& (&& (&& (!! (-P- BAR_0)) (-P- BAR_1)) T)
        (NEXT
         (||
          (UNTIL (&& (!! (-P- BAR_0)) (!! (-P- BAR_1)))
           (&& (-P- GO_0) (!! (-P- GO_1))))
          (ALWF (&& (!! (-P- BAR_0)) (!! (-P- BAR_1))))))))
      (||
       (!!
        (&& (YESTERDAY (&& (!! (-P- BAR_0)) (!! (-P- BAR_1))))
         (&& (-P- GO_0) (!! (-P- GO_1)))))
       (&& (&& (&& (-P- BAR_0) (-P- BAR_1)) T)
        (NEXT
         (||
          (UNTIL (&& (-P- BAR_0) (!! (-P- BAR_1)))
           (&& (!! (-P- GO_0)) (!! (-P- GO_1))))
          (ALWF (&& (-P- BAR_0) (!! (-P- BAR_1))))))))
      (|| (!! (ALWP (!! (&& (-P- GO_0) (!! (-P- GO_1))))))
       (&& (!! (-P- BAR_0)) (!! (-P- BAR_1)))))
     (&& (|| (!! (-P- ENTERR)) (-P- GREEN))
      (&&
       (|| (!! (-P- ER_EI_6))
        (&& (-P- ENTERR)
         (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- ENTERI)))))))))
       (|| (!! (-P- ER_EI_7))
        (&& (-P- ENTERR)
         (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- ENTERI))))))))))
       (|| (!! (-P- ER_EI_8))
        (&& (-P- ENTERR)
         (NEXT
          (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- ENTERI))))))))))))
      (&&
       (|| (!! (-P- ER_EI_6))
        (&& (-P- ENTERR)
         (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- ENTERI)))))))))
       (|| (!! (-P- ER_EI_7))
        (&& (-P- ENTERR)
         (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- ENTERI))))))))))
       (|| (!! (-P- ER_EI_8))
        (&& (-P- ENTERR)
         (NEXT
          (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- ENTERI))))))))))))
      (|| (!! (-P- ENTERR)) (|| (-P- ER_EI_6) (-P- ER_EI_7) (-P- ER_EI_8)))
      (|| (!! (-P- ENTERI))
       (||
        (YESTERDAY
         (YESTERDAY
          (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_6)))))))
        (YESTERDAY
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_7))))))))
        (YESTERDAY
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_8)))))))))))
      (&&
       (&& (|| (!! (&& (-P- ER_EI_6) (-P- ER_EI_6))) T)
        (|| (!! (&& (-P- ER_EI_6) (-P- ER_EI_7))) NIL)
        (|| (!! (&& (-P- ER_EI_6) (-P- ER_EI_8))) NIL))
       (&& (|| (!! (&& (-P- ER_EI_7) (-P- ER_EI_6))) NIL)
        (|| (!! (&& (-P- ER_EI_7) (-P- ER_EI_7))) T)
        (|| (!! (&& (-P- ER_EI_7) (-P- ER_EI_8))) NIL))
       (&& (|| (!! (&& (-P- ER_EI_8) (-P- ER_EI_6))) NIL)
        (|| (!! (&& (-P- ER_EI_8) (-P- ER_EI_7))) NIL)
        (|| (!! (&& (-P- ER_EI_8) (-P- ER_EI_8))) T)))
      (&&
       (&&
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_6)))))))
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_6)))))))))
         T)
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_6)))))))
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_7))))))))))
         NIL)
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_6)))))))
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_8)))))))))))
         NIL))
       (&&
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_7))))))))
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_6)))))))))
         NIL)
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_7))))))))
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_7))))))))))
         T)
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_7))))))))
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_8)))))))))))
         NIL))
       (&&
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_8)))))))))
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_6)))))))))
         NIL)
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_8)))))))))
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_7))))))))))
         NIL)
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_8)))))))))
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_8)))))))))))
         T)))
      (&&
       (|| (!! (-P- EI_EXI_3))
        (&& (-P- ENTERI) (NEXT (NEXT (NEXT (-P- EXITI))))))
       (|| (!! (-P- EI_EXI_4))
        (&& (-P- ENTERI) (NEXT (NEXT (NEXT (NEXT (-P- EXITI)))))))
       (|| (!! (-P- EI_EXI_5))
        (&& (-P- ENTERI) (NEXT (NEXT (NEXT (NEXT (NEXT (-P- EXITI)))))))))
      (|| (!! (-P- ENTERI)) (|| (-P- EI_EXI_3) (-P- EI_EXI_4) (-P- EI_EXI_5)))
      (|| (!! (-P- EXITI))
       (|| (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_3))))
        (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_4)))))
        (YESTERDAY
         (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_5))))))))
      (&&
       (&& (|| (!! (&& (-P- EI_EXI_3) (-P- EI_EXI_3))) T)
        (|| (!! (&& (-P- EI_EXI_3) (-P- EI_EXI_4))) NIL)
        (|| (!! (&& (-P- EI_EXI_3) (-P- EI_EXI_5))) NIL))
       (&& (|| (!! (&& (-P- EI_EXI_4) (-P- EI_EXI_3))) NIL)
        (|| (!! (&& (-P- EI_EXI_4) (-P- EI_EXI_4))) T)
        (|| (!! (&& (-P- EI_EXI_4) (-P- EI_EXI_5))) NIL))
       (&& (|| (!! (&& (-P- EI_EXI_5) (-P- EI_EXI_3))) NIL)
        (|| (!! (&& (-P- EI_EXI_5) (-P- EI_EXI_4))) NIL)
        (|| (!! (&& (-P- EI_EXI_5) (-P- EI_EXI_5))) T)))
      (&&
       (&&
        (||
         (!!
          (&& (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_3))))
           (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_3))))))
         T)
        (||
         (!!
          (&& (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_3))))
           (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_4)))))))
         NIL)
        (||
         (!!
          (&& (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_3))))
           (YESTERDAY
            (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_5))))))))
         NIL))
       (&&
        (||
         (!!
          (&& (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_4)))))
           (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_3))))))
         NIL)
        (||
         (!!
          (&& (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_4)))))
           (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_4)))))))
         T)
        (||
         (!!
          (&& (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_4)))))
           (YESTERDAY
            (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_5))))))))
         NIL))
       (&&
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_5))))))
           (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_3))))))
         NIL)
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_5))))))
           (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_4)))))))
         NIL)
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_5))))))
           (YESTERDAY
            (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_5))))))))
         T)))
      (<-> (-P- INI)
       (SINCE (!! (-P- EXITI)) (&& (!! (-P- EXITI)) (-P- ENTERI)))))))
   (ALWP
    (&&
     (&&
      (<-> (&& (-P- GO_0) (!! (-P- GO_1)))
       (YESTERDAY
        (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ENTERR)))))))
      (<-> (&& (!! (-P- GO_0)) (!! (-P- GO_1))) (-P- EXITI)))
     (&& (<-> (-P- RED) (!! (-P- GREEN)))
      (<-> (-P- RED)
       (YESTERDAY
        (SINCE (!! (&& (-P- EXITI) (!! (-P- ENTERR))))
         (&& (!! (&& (-P- EXITI) (!! (-P- ENTERR)))) (-P- ENTERR))))))
     (&&
      (||
       (!!
        (&& (YESTERDAY (&& (-P- BAR_0) (!! (-P- BAR_1))))
         (&& (!! (-P- GO_0)) (!! (-P- GO_1)))))
       (&& (&& (&& (!! (-P- BAR_0)) (-P- BAR_1)) T)
        (NEXT
         (||
          (UNTIL (&& (!! (-P- BAR_0)) (!! (-P- BAR_1)))
           (&& (-P- GO_0) (!! (-P- GO_1))))
          (ALWF (&& (!! (-P- BAR_0)) (!! (-P- BAR_1))))))))
      (||
       (!!
        (&& (YESTERDAY (&& (!! (-P- BAR_0)) (!! (-P- BAR_1))))
         (&& (-P- GO_0) (!! (-P- GO_1)))))
       (&& (&& (&& (-P- BAR_0) (-P- BAR_1)) T)
        (NEXT
         (||
          (UNTIL (&& (-P- BAR_0) (!! (-P- BAR_1)))
           (&& (!! (-P- GO_0)) (!! (-P- GO_1))))
          (ALWF (&& (-P- BAR_0) (!! (-P- BAR_1))))))))
      (|| (!! (ALWP (!! (&& (-P- GO_0) (!! (-P- GO_1))))))
       (&& (!! (-P- BAR_0)) (!! (-P- BAR_1)))))
     (&& (|| (!! (-P- ENTERR)) (-P- GREEN))
      (&&
       (|| (!! (-P- ER_EI_6))
        (&& (-P- ENTERR)
         (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- ENTERI)))))))))
       (|| (!! (-P- ER_EI_7))
        (&& (-P- ENTERR)
         (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- ENTERI))))))))))
       (|| (!! (-P- ER_EI_8))
        (&& (-P- ENTERR)
         (NEXT
          (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- ENTERI))))))))))))
      (&&
       (|| (!! (-P- ER_EI_6))
        (&& (-P- ENTERR)
         (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- ENTERI)))))))))
       (|| (!! (-P- ER_EI_7))
        (&& (-P- ENTERR)
         (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- ENTERI))))))))))
       (|| (!! (-P- ER_EI_8))
        (&& (-P- ENTERR)
         (NEXT
          (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- ENTERI))))))))))))
      (|| (!! (-P- ENTERR)) (|| (-P- ER_EI_6) (-P- ER_EI_7) (-P- ER_EI_8)))
      (|| (!! (-P- ENTERI))
       (||
        (YESTERDAY
         (YESTERDAY
          (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_6)))))))
        (YESTERDAY
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_7))))))))
        (YESTERDAY
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_8)))))))))))
      (&&
       (&& (|| (!! (&& (-P- ER_EI_6) (-P- ER_EI_6))) T)
        (|| (!! (&& (-P- ER_EI_6) (-P- ER_EI_7))) NIL)
        (|| (!! (&& (-P- ER_EI_6) (-P- ER_EI_8))) NIL))
       (&& (|| (!! (&& (-P- ER_EI_7) (-P- ER_EI_6))) NIL)
        (|| (!! (&& (-P- ER_EI_7) (-P- ER_EI_7))) T)
        (|| (!! (&& (-P- ER_EI_7) (-P- ER_EI_8))) NIL))
       (&& (|| (!! (&& (-P- ER_EI_8) (-P- ER_EI_6))) NIL)
        (|| (!! (&& (-P- ER_EI_8) (-P- ER_EI_7))) NIL)
        (|| (!! (&& (-P- ER_EI_8) (-P- ER_EI_8))) T)))
      (&&
       (&&
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_6)))))))
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_6)))))))))
         T)
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_6)))))))
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_7))))))))))
         NIL)
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_6)))))))
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_8)))))))))))
         NIL))
       (&&
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_7))))))))
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_6)))))))))
         NIL)
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_7))))))))
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_7))))))))))
         T)
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_7))))))))
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_8)))))))))))
         NIL))
       (&&
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_8)))))))))
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_6)))))))))
         NIL)
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_8)))))))))
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_7))))))))))
         NIL)
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_8)))))))))
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY (YESTERDAY (YESTERDAY (-P- ER_EI_8)))))))))))
         T)))
      (&&
       (|| (!! (-P- EI_EXI_3))
        (&& (-P- ENTERI) (NEXT (NEXT (NEXT (-P- EXITI))))))
       (|| (!! (-P- EI_EXI_4))
        (&& (-P- ENTERI) (NEXT (NEXT (NEXT (NEXT (-P- EXITI)))))))
       (|| (!! (-P- EI_EXI_5))
        (&& (-P- ENTERI) (NEXT (NEXT (NEXT (NEXT (NEXT (-P- EXITI)))))))))
      (|| (!! (-P- ENTERI)) (|| (-P- EI_EXI_3) (-P- EI_EXI_4) (-P- EI_EXI_5)))
      (|| (!! (-P- EXITI))
       (|| (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_3))))
        (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_4)))))
        (YESTERDAY
         (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_5))))))))
      (&&
       (&& (|| (!! (&& (-P- EI_EXI_3) (-P- EI_EXI_3))) T)
        (|| (!! (&& (-P- EI_EXI_3) (-P- EI_EXI_4))) NIL)
        (|| (!! (&& (-P- EI_EXI_3) (-P- EI_EXI_5))) NIL))
       (&& (|| (!! (&& (-P- EI_EXI_4) (-P- EI_EXI_3))) NIL)
        (|| (!! (&& (-P- EI_EXI_4) (-P- EI_EXI_4))) T)
        (|| (!! (&& (-P- EI_EXI_4) (-P- EI_EXI_5))) NIL))
       (&& (|| (!! (&& (-P- EI_EXI_5) (-P- EI_EXI_3))) NIL)
        (|| (!! (&& (-P- EI_EXI_5) (-P- EI_EXI_4))) NIL)
        (|| (!! (&& (-P- EI_EXI_5) (-P- EI_EXI_5))) T)))
      (&&
       (&&
        (||
         (!!
          (&& (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_3))))
           (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_3))))))
         T)
        (||
         (!!
          (&& (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_3))))
           (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_4)))))))
         NIL)
        (||
         (!!
          (&& (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_3))))
           (YESTERDAY
            (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_5))))))))
         NIL))
       (&&
        (||
         (!!
          (&& (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_4)))))
           (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_3))))))
         NIL)
        (||
         (!!
          (&& (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_4)))))
           (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_4)))))))
         T)
        (||
         (!!
          (&& (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_4)))))
           (YESTERDAY
            (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_5))))))))
         NIL))
       (&&
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_5))))))
           (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_3))))))
         NIL)
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_5))))))
           (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_4)))))))
         NIL)
        (||
         (!!
          (&&
           (YESTERDAY
            (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_5))))))
           (YESTERDAY
            (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_5))))))))
         T)))
      (<-> (-P- INI)
       (SINCE (!! (-P- EXITI)) (&& (!! (-P- EXITI)) (-P- ENTERI))))))))
  (!!
   (&&
    (ALWF
     (||
      (!!
       (&&
        (&& (!! (-P- INI))
         (NEXT
          (&& (!! (-P- INI))
           (NEXT
            (&& (!! (-P- INI))
             (NEXT (&& (!! (-P- INI)) (NEXT (!! (-P- INI))))))))))
        (&& (!! (-P- INI))
         (YESTERDAY (&& (!! (-P- INI)) (YESTERDAY (!! (-P- INI))))))))
      (&& (!! (-P- BAR_0)) (!! (-P- BAR_1)))))
    (ALWP
     (||
      (!!
       (&&
        (&& (!! (-P- INI))
         (NEXT
          (&& (!! (-P- INI))
           (NEXT
            (&& (!! (-P- INI))
             (NEXT (&& (!! (-P- INI)) (NEXT (!! (-P- INI))))))))))
        (&& (!! (-P- INI))
         (YESTERDAY (&& (!! (-P- INI)) (YESTERDAY (!! (-P- INI))))))))
      (&& (!! (-P- BAR_0)) (!! (-P- BAR_1))))))))))
         )))
         (if res
     (return bound))
(format t "~%Checked Bound: ~S~%" bound)
         )))


