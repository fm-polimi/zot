(asdf:operate 'asdf:load-op 'bvzot)
(use-package :trio-utils)

(format t "~%Found: ~S~%"
  (loop for bound from 1 to 60 do
       (let ((res 
        (bvzot:zot 
         bound
         (YESTERDAY
 (NEXT
  (&& (SOMP (ALWP (!! (-P- ENTERR))))
   (&&
    (ALWF
     (&&
      (&&
       (<-> (&& (-P- GO_0) (!! (-P- GO_1)))
        (YESTERDAY
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- ENTERR))))))))))))))
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
        (&&
         (&& (&& (!! (-P- BAR_0)) (-P- BAR_1))
          (NEXT
           (&& (&& (!! (-P- BAR_0)) (-P- BAR_1))
            (NEXT
             (&& (&& (!! (-P- BAR_0)) (-P- BAR_1))
              (NEXT (&& (!! (-P- BAR_0)) (-P- BAR_1))))))))
         (NEXT
          (NEXT
           (NEXT
            (NEXT
             (||
              (UNTIL (&& (!! (-P- BAR_0)) (!! (-P- BAR_1)))
               (&& (-P- GO_0) (!! (-P- GO_1))))
              (ALWF (&& (!! (-P- BAR_0)) (!! (-P- BAR_1)))))))))))
       (||
        (!!
         (&& (YESTERDAY (&& (!! (-P- BAR_0)) (!! (-P- BAR_1))))
          (&& (-P- GO_0) (!! (-P- GO_1)))))
        (&&
         (&& (&& (-P- BAR_0) (-P- BAR_1))
          (NEXT
           (&& (&& (-P- BAR_0) (-P- BAR_1))
            (NEXT
             (&& (&& (-P- BAR_0) (-P- BAR_1))
              (NEXT (&& (-P- BAR_0) (-P- BAR_1))))))))
         (NEXT
          (NEXT
           (NEXT
            (NEXT
             (||
              (UNTIL (&& (-P- BAR_0) (!! (-P- BAR_1)))
               (&& (!! (-P- GO_0)) (!! (-P- GO_1))))
              (ALWF (&& (-P- BAR_0) (!! (-P- BAR_1)))))))))))
       (|| (!! (ALWP (!! (&& (-P- GO_0) (!! (-P- GO_1))))))
        (&& (!! (-P- BAR_0)) (!! (-P- BAR_1)))))
      (&& (|| (!! (-P- ENTERR)) (-P- GREEN))
       (&&
        (|| (!! (-P- ER_EI_16))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT (NEXT (NEXT (NEXT (-P- ENTERI)))))))))))))))))))
        (|| (!! (-P- ER_EI_17))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT (NEXT (NEXT (NEXT (-P- ENTERI))))))))))))))))))))
        (|| (!! (-P- ER_EI_18))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT (NEXT (NEXT (-P- ENTERI)))))))))))))))))))))
        (|| (!! (-P- ER_EI_19))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT
                          (NEXT (NEXT (NEXT (-P- ENTERI))))))))))))))))))))))
        (|| (!! (-P- ER_EI_20))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT
                          (NEXT
                           (NEXT (NEXT (NEXT (-P- ENTERI)))))))))))))))))))))))
        (|| (!! (-P- ER_EI_21))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT
                          (NEXT
                           (NEXT
                            (NEXT
                             (NEXT (NEXT (-P- ENTERI))))))))))))))))))))))))
        (|| (!! (-P- ER_EI_22))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT
                          (NEXT
                           (NEXT
                            (NEXT
                             (NEXT
                              (NEXT (NEXT (-P- ENTERI))))))))))))))))))))))))))
       (&&
        (|| (!! (-P- ER_EI_16))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT (NEXT (NEXT (NEXT (-P- ENTERI)))))))))))))))))))
        (|| (!! (-P- ER_EI_17))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT (NEXT (NEXT (NEXT (-P- ENTERI))))))))))))))))))))
        (|| (!! (-P- ER_EI_18))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT (NEXT (NEXT (-P- ENTERI)))))))))))))))))))))
        (|| (!! (-P- ER_EI_19))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT
                          (NEXT (NEXT (NEXT (-P- ENTERI))))))))))))))))))))))
        (|| (!! (-P- ER_EI_20))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT
                          (NEXT
                           (NEXT (NEXT (NEXT (-P- ENTERI)))))))))))))))))))))))
        (|| (!! (-P- ER_EI_21))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT
                          (NEXT
                           (NEXT
                            (NEXT
                             (NEXT (NEXT (-P- ENTERI))))))))))))))))))))))))
        (|| (!! (-P- ER_EI_22))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT
                          (NEXT
                           (NEXT
                            (NEXT
                             (NEXT
                              (NEXT (NEXT (-P- ENTERI))))))))))))))))))))))))))
       (|| (!! (-P- ENTERR))
        (|| (-P- ER_EI_16) (-P- ER_EI_17) (-P- ER_EI_18) (-P- ER_EI_19)
         (-P- ER_EI_20) (-P- ER_EI_21) (-P- ER_EI_22)))
       (|| (!! (-P- ENTERI))
        (||
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- ER_EI_16)))))))))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- ER_EI_17))))))))))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY (YESTERDAY (-P- ER_EI_18)))))))))))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY (-P- ER_EI_19))))))))))))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_21))))))))))))))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_22)))))))))))))))))))))))))
       (&&
        (&& (|| (!! (&& (-P- ER_EI_16) (-P- ER_EI_16))) T)
         (|| (!! (&& (-P- ER_EI_16) (-P- ER_EI_17))) NIL)
         (|| (!! (&& (-P- ER_EI_16) (-P- ER_EI_18))) NIL)
         (|| (!! (&& (-P- ER_EI_16) (-P- ER_EI_19))) NIL)
         (|| (!! (&& (-P- ER_EI_16) (-P- ER_EI_20))) NIL)
         (|| (!! (&& (-P- ER_EI_16) (-P- ER_EI_21))) NIL)
         (|| (!! (&& (-P- ER_EI_16) (-P- ER_EI_22))) NIL))
        (&& (|| (!! (&& (-P- ER_EI_17) (-P- ER_EI_16))) NIL)
         (|| (!! (&& (-P- ER_EI_17) (-P- ER_EI_17))) T)
         (|| (!! (&& (-P- ER_EI_17) (-P- ER_EI_18))) NIL)
         (|| (!! (&& (-P- ER_EI_17) (-P- ER_EI_19))) NIL)
         (|| (!! (&& (-P- ER_EI_17) (-P- ER_EI_20))) NIL)
         (|| (!! (&& (-P- ER_EI_17) (-P- ER_EI_21))) NIL)
         (|| (!! (&& (-P- ER_EI_17) (-P- ER_EI_22))) NIL))
        (&& (|| (!! (&& (-P- ER_EI_18) (-P- ER_EI_16))) NIL)
         (|| (!! (&& (-P- ER_EI_18) (-P- ER_EI_17))) NIL)
         (|| (!! (&& (-P- ER_EI_18) (-P- ER_EI_18))) T)
         (|| (!! (&& (-P- ER_EI_18) (-P- ER_EI_19))) NIL)
         (|| (!! (&& (-P- ER_EI_18) (-P- ER_EI_20))) NIL)
         (|| (!! (&& (-P- ER_EI_18) (-P- ER_EI_21))) NIL)
         (|| (!! (&& (-P- ER_EI_18) (-P- ER_EI_22))) NIL))
        (&& (|| (!! (&& (-P- ER_EI_19) (-P- ER_EI_16))) NIL)
         (|| (!! (&& (-P- ER_EI_19) (-P- ER_EI_17))) NIL)
         (|| (!! (&& (-P- ER_EI_19) (-P- ER_EI_18))) NIL)
         (|| (!! (&& (-P- ER_EI_19) (-P- ER_EI_19))) T)
         (|| (!! (&& (-P- ER_EI_19) (-P- ER_EI_20))) NIL)
         (|| (!! (&& (-P- ER_EI_19) (-P- ER_EI_21))) NIL)
         (|| (!! (&& (-P- ER_EI_19) (-P- ER_EI_22))) NIL))
        (&& (|| (!! (&& (-P- ER_EI_20) (-P- ER_EI_16))) NIL)
         (|| (!! (&& (-P- ER_EI_20) (-P- ER_EI_17))) NIL)
         (|| (!! (&& (-P- ER_EI_20) (-P- ER_EI_18))) NIL)
         (|| (!! (&& (-P- ER_EI_20) (-P- ER_EI_19))) NIL)
         (|| (!! (&& (-P- ER_EI_20) (-P- ER_EI_20))) T)
         (|| (!! (&& (-P- ER_EI_20) (-P- ER_EI_21))) NIL)
         (|| (!! (&& (-P- ER_EI_20) (-P- ER_EI_22))) NIL))
        (&& (|| (!! (&& (-P- ER_EI_21) (-P- ER_EI_16))) NIL)
         (|| (!! (&& (-P- ER_EI_21) (-P- ER_EI_17))) NIL)
         (|| (!! (&& (-P- ER_EI_21) (-P- ER_EI_18))) NIL)
         (|| (!! (&& (-P- ER_EI_21) (-P- ER_EI_19))) NIL)
         (|| (!! (&& (-P- ER_EI_21) (-P- ER_EI_20))) NIL)
         (|| (!! (&& (-P- ER_EI_21) (-P- ER_EI_21))) T)
         (|| (!! (&& (-P- ER_EI_21) (-P- ER_EI_22))) NIL))
        (&& (|| (!! (&& (-P- ER_EI_22) (-P- ER_EI_16))) NIL)
         (|| (!! (&& (-P- ER_EI_22) (-P- ER_EI_17))) NIL)
         (|| (!! (&& (-P- ER_EI_22) (-P- ER_EI_18))) NIL)
         (|| (!! (&& (-P- ER_EI_22) (-P- ER_EI_19))) NIL)
         (|| (!! (&& (-P- ER_EI_22) (-P- ER_EI_20))) NIL)
         (|| (!! (&& (-P- ER_EI_22) (-P- ER_EI_21))) NIL)
         (|| (!! (&& (-P- ER_EI_22) (-P- ER_EI_22))) T)))
       (&&
        (&&
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY (YESTERDAY (-P- ER_EI_16)))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY (-P- ER_EI_16)))))))))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY (YESTERDAY (-P- ER_EI_16)))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY (YESTERDAY (-P- ER_EI_16)))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY (YESTERDAY (-P- ER_EI_16)))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY (YESTERDAY (-P- ER_EI_16)))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY (YESTERDAY (-P- ER_EI_16)))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (-P- ER_EI_21))))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY (YESTERDAY (-P- ER_EI_16)))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY (-P- ER_EI_16)))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (-P- ER_EI_21))))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY (-P- ER_EI_16)))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (-P- ER_EI_21))))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY (-P- ER_EI_16)))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (-P- ER_EI_21))))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY (-P- ER_EI_16)))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (-P- ER_EI_21))))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY (-P- ER_EI_21))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY (-P- ER_EI_16)))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY (-P- ER_EI_21))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY (-P- ER_EI_21))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY (-P- ER_EI_21))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY (-P- ER_EI_21))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY (-P- ER_EI_21))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (-P- ER_EI_21))))))))))))))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY (-P- ER_EI_21))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY (-P- ER_EI_16)))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (-P- ER_EI_21))))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))))
          T)))
       (&&
        (|| (!! (-P- EI_EXI_8))
         (&& (-P- ENTERI)
          (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- EXITI)))))))))))
        (|| (!! (-P- EI_EXI_9))
         (&& (-P- ENTERI)
          (NEXT
           (NEXT
            (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- EXITI))))))))))))
        (|| (!! (-P- EI_EXI_10))
         (&& (-P- ENTERI)
          (NEXT
           (NEXT
            (NEXT
             (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- EXITI)))))))))))))
        (|| (!! (-P- EI_EXI_11))
         (&& (-P- ENTERI)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- EXITI))))))))))))))
        (|| (!! (-P- EI_EXI_12))
         (&& (-P- ENTERI)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- EXITI)))))))))))))))
        (|| (!! (-P- EI_EXI_13))
         (&& (-P- ENTERI)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- EXITI))))))))))))))))
        (|| (!! (-P- EI_EXI_14))
         (&& (-P- ENTERI)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT (NEXT (NEXT (NEXT (NEXT (-P- EXITI))))))))))))))))))
       (|| (!! (-P- ENTERI))
        (|| (-P- EI_EXI_8) (-P- EI_EXI_9) (-P- EI_EXI_10) (-P- EI_EXI_11)
         (-P- EI_EXI_12) (-P- EI_EXI_13) (-P- EI_EXI_14)))
       (|| (!! (-P- EXITI))
        (||
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))))
       (&&
        (&& (|| (!! (&& (-P- EI_EXI_8) (-P- EI_EXI_8))) T)
         (|| (!! (&& (-P- EI_EXI_8) (-P- EI_EXI_9))) NIL)
         (|| (!! (&& (-P- EI_EXI_8) (-P- EI_EXI_10))) NIL)
         (|| (!! (&& (-P- EI_EXI_8) (-P- EI_EXI_11))) NIL)
         (|| (!! (&& (-P- EI_EXI_8) (-P- EI_EXI_12))) NIL)
         (|| (!! (&& (-P- EI_EXI_8) (-P- EI_EXI_13))) NIL)
         (|| (!! (&& (-P- EI_EXI_8) (-P- EI_EXI_14))) NIL))
        (&& (|| (!! (&& (-P- EI_EXI_9) (-P- EI_EXI_8))) NIL)
         (|| (!! (&& (-P- EI_EXI_9) (-P- EI_EXI_9))) T)
         (|| (!! (&& (-P- EI_EXI_9) (-P- EI_EXI_10))) NIL)
         (|| (!! (&& (-P- EI_EXI_9) (-P- EI_EXI_11))) NIL)
         (|| (!! (&& (-P- EI_EXI_9) (-P- EI_EXI_12))) NIL)
         (|| (!! (&& (-P- EI_EXI_9) (-P- EI_EXI_13))) NIL)
         (|| (!! (&& (-P- EI_EXI_9) (-P- EI_EXI_14))) NIL))
        (&& (|| (!! (&& (-P- EI_EXI_10) (-P- EI_EXI_8))) NIL)
         (|| (!! (&& (-P- EI_EXI_10) (-P- EI_EXI_9))) NIL)
         (|| (!! (&& (-P- EI_EXI_10) (-P- EI_EXI_10))) T)
         (|| (!! (&& (-P- EI_EXI_10) (-P- EI_EXI_11))) NIL)
         (|| (!! (&& (-P- EI_EXI_10) (-P- EI_EXI_12))) NIL)
         (|| (!! (&& (-P- EI_EXI_10) (-P- EI_EXI_13))) NIL)
         (|| (!! (&& (-P- EI_EXI_10) (-P- EI_EXI_14))) NIL))
        (&& (|| (!! (&& (-P- EI_EXI_11) (-P- EI_EXI_8))) NIL)
         (|| (!! (&& (-P- EI_EXI_11) (-P- EI_EXI_9))) NIL)
         (|| (!! (&& (-P- EI_EXI_11) (-P- EI_EXI_10))) NIL)
         (|| (!! (&& (-P- EI_EXI_11) (-P- EI_EXI_11))) T)
         (|| (!! (&& (-P- EI_EXI_11) (-P- EI_EXI_12))) NIL)
         (|| (!! (&& (-P- EI_EXI_11) (-P- EI_EXI_13))) NIL)
         (|| (!! (&& (-P- EI_EXI_11) (-P- EI_EXI_14))) NIL))
        (&& (|| (!! (&& (-P- EI_EXI_12) (-P- EI_EXI_8))) NIL)
         (|| (!! (&& (-P- EI_EXI_12) (-P- EI_EXI_9))) NIL)
         (|| (!! (&& (-P- EI_EXI_12) (-P- EI_EXI_10))) NIL)
         (|| (!! (&& (-P- EI_EXI_12) (-P- EI_EXI_11))) NIL)
         (|| (!! (&& (-P- EI_EXI_12) (-P- EI_EXI_12))) T)
         (|| (!! (&& (-P- EI_EXI_12) (-P- EI_EXI_13))) NIL)
         (|| (!! (&& (-P- EI_EXI_12) (-P- EI_EXI_14))) NIL))
        (&& (|| (!! (&& (-P- EI_EXI_13) (-P- EI_EXI_8))) NIL)
         (|| (!! (&& (-P- EI_EXI_13) (-P- EI_EXI_9))) NIL)
         (|| (!! (&& (-P- EI_EXI_13) (-P- EI_EXI_10))) NIL)
         (|| (!! (&& (-P- EI_EXI_13) (-P- EI_EXI_11))) NIL)
         (|| (!! (&& (-P- EI_EXI_13) (-P- EI_EXI_12))) NIL)
         (|| (!! (&& (-P- EI_EXI_13) (-P- EI_EXI_13))) T)
         (|| (!! (&& (-P- EI_EXI_13) (-P- EI_EXI_14))) NIL))
        (&& (|| (!! (&& (-P- EI_EXI_14) (-P- EI_EXI_8))) NIL)
         (|| (!! (&& (-P- EI_EXI_14) (-P- EI_EXI_9))) NIL)
         (|| (!! (&& (-P- EI_EXI_14) (-P- EI_EXI_10))) NIL)
         (|| (!! (&& (-P- EI_EXI_14) (-P- EI_EXI_11))) NIL)
         (|| (!! (&& (-P- EI_EXI_14) (-P- EI_EXI_12))) NIL)
         (|| (!! (&& (-P- EI_EXI_14) (-P- EI_EXI_13))) NIL)
         (|| (!! (&& (-P- EI_EXI_14) (-P- EI_EXI_14))) T)))
       (&&
        (&&
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))))
          T)))
       (<-> (-P- INI)
        (SINCE (!! (-P- EXITI)) (&& (!! (-P- EXITI)) (-P- ENTERI)))))))
    (ALWP
     (&&
      (&&
       (<-> (&& (-P- GO_0) (!! (-P- GO_1)))
        (YESTERDAY
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- ENTERR))))))))))))))
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
        (&&
         (&& (&& (!! (-P- BAR_0)) (-P- BAR_1))
          (NEXT
           (&& (&& (!! (-P- BAR_0)) (-P- BAR_1))
            (NEXT
             (&& (&& (!! (-P- BAR_0)) (-P- BAR_1))
              (NEXT (&& (!! (-P- BAR_0)) (-P- BAR_1))))))))
         (NEXT
          (NEXT
           (NEXT
            (NEXT
             (||
              (UNTIL (&& (!! (-P- BAR_0)) (!! (-P- BAR_1)))
               (&& (-P- GO_0) (!! (-P- GO_1))))
              (ALWF (&& (!! (-P- BAR_0)) (!! (-P- BAR_1)))))))))))
       (||
        (!!
         (&& (YESTERDAY (&& (!! (-P- BAR_0)) (!! (-P- BAR_1))))
          (&& (-P- GO_0) (!! (-P- GO_1)))))
        (&&
         (&& (&& (-P- BAR_0) (-P- BAR_1))
          (NEXT
           (&& (&& (-P- BAR_0) (-P- BAR_1))
            (NEXT
             (&& (&& (-P- BAR_0) (-P- BAR_1))
              (NEXT (&& (-P- BAR_0) (-P- BAR_1))))))))
         (NEXT
          (NEXT
           (NEXT
            (NEXT
             (||
              (UNTIL (&& (-P- BAR_0) (!! (-P- BAR_1)))
               (&& (!! (-P- GO_0)) (!! (-P- GO_1))))
              (ALWF (&& (-P- BAR_0) (!! (-P- BAR_1)))))))))))
       (|| (!! (ALWP (!! (&& (-P- GO_0) (!! (-P- GO_1))))))
        (&& (!! (-P- BAR_0)) (!! (-P- BAR_1)))))
      (&& (|| (!! (-P- ENTERR)) (-P- GREEN))
       (&&
        (|| (!! (-P- ER_EI_16))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT (NEXT (NEXT (NEXT (-P- ENTERI)))))))))))))))))))
        (|| (!! (-P- ER_EI_17))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT (NEXT (NEXT (NEXT (-P- ENTERI))))))))))))))))))))
        (|| (!! (-P- ER_EI_18))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT (NEXT (NEXT (-P- ENTERI)))))))))))))))))))))
        (|| (!! (-P- ER_EI_19))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT
                          (NEXT (NEXT (NEXT (-P- ENTERI))))))))))))))))))))))
        (|| (!! (-P- ER_EI_20))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT
                          (NEXT
                           (NEXT (NEXT (NEXT (-P- ENTERI)))))))))))))))))))))))
        (|| (!! (-P- ER_EI_21))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT
                          (NEXT
                           (NEXT
                            (NEXT
                             (NEXT (NEXT (-P- ENTERI))))))))))))))))))))))))
        (|| (!! (-P- ER_EI_22))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT
                          (NEXT
                           (NEXT
                            (NEXT
                             (NEXT
                              (NEXT (NEXT (-P- ENTERI))))))))))))))))))))))))))
       (&&
        (|| (!! (-P- ER_EI_16))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT (NEXT (NEXT (NEXT (-P- ENTERI)))))))))))))))))))
        (|| (!! (-P- ER_EI_17))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT (NEXT (NEXT (NEXT (-P- ENTERI))))))))))))))))))))
        (|| (!! (-P- ER_EI_18))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT (NEXT (NEXT (-P- ENTERI)))))))))))))))))))))
        (|| (!! (-P- ER_EI_19))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT
                          (NEXT (NEXT (NEXT (-P- ENTERI))))))))))))))))))))))
        (|| (!! (-P- ER_EI_20))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT
                          (NEXT
                           (NEXT (NEXT (NEXT (-P- ENTERI)))))))))))))))))))))))
        (|| (!! (-P- ER_EI_21))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT
                          (NEXT
                           (NEXT
                            (NEXT
                             (NEXT (NEXT (-P- ENTERI))))))))))))))))))))))))
        (|| (!! (-P- ER_EI_22))
         (&& (-P- ENTERR)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT
                    (NEXT
                     (NEXT
                      (NEXT
                       (NEXT
                        (NEXT
                         (NEXT
                          (NEXT
                           (NEXT
                            (NEXT
                             (NEXT
                              (NEXT (NEXT (-P- ENTERI))))))))))))))))))))))))))
       (|| (!! (-P- ENTERR))
        (|| (-P- ER_EI_16) (-P- ER_EI_17) (-P- ER_EI_18) (-P- ER_EI_19)
         (-P- ER_EI_20) (-P- ER_EI_21) (-P- ER_EI_22)))
       (|| (!! (-P- ENTERI))
        (||
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- ER_EI_16)))))))))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- ER_EI_17))))))))))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY (YESTERDAY (-P- ER_EI_18)))))))))))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY (-P- ER_EI_19))))))))))))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_21))))))))))))))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_22)))))))))))))))))))))))))
       (&&
        (&& (|| (!! (&& (-P- ER_EI_16) (-P- ER_EI_16))) T)
         (|| (!! (&& (-P- ER_EI_16) (-P- ER_EI_17))) NIL)
         (|| (!! (&& (-P- ER_EI_16) (-P- ER_EI_18))) NIL)
         (|| (!! (&& (-P- ER_EI_16) (-P- ER_EI_19))) NIL)
         (|| (!! (&& (-P- ER_EI_16) (-P- ER_EI_20))) NIL)
         (|| (!! (&& (-P- ER_EI_16) (-P- ER_EI_21))) NIL)
         (|| (!! (&& (-P- ER_EI_16) (-P- ER_EI_22))) NIL))
        (&& (|| (!! (&& (-P- ER_EI_17) (-P- ER_EI_16))) NIL)
         (|| (!! (&& (-P- ER_EI_17) (-P- ER_EI_17))) T)
         (|| (!! (&& (-P- ER_EI_17) (-P- ER_EI_18))) NIL)
         (|| (!! (&& (-P- ER_EI_17) (-P- ER_EI_19))) NIL)
         (|| (!! (&& (-P- ER_EI_17) (-P- ER_EI_20))) NIL)
         (|| (!! (&& (-P- ER_EI_17) (-P- ER_EI_21))) NIL)
         (|| (!! (&& (-P- ER_EI_17) (-P- ER_EI_22))) NIL))
        (&& (|| (!! (&& (-P- ER_EI_18) (-P- ER_EI_16))) NIL)
         (|| (!! (&& (-P- ER_EI_18) (-P- ER_EI_17))) NIL)
         (|| (!! (&& (-P- ER_EI_18) (-P- ER_EI_18))) T)
         (|| (!! (&& (-P- ER_EI_18) (-P- ER_EI_19))) NIL)
         (|| (!! (&& (-P- ER_EI_18) (-P- ER_EI_20))) NIL)
         (|| (!! (&& (-P- ER_EI_18) (-P- ER_EI_21))) NIL)
         (|| (!! (&& (-P- ER_EI_18) (-P- ER_EI_22))) NIL))
        (&& (|| (!! (&& (-P- ER_EI_19) (-P- ER_EI_16))) NIL)
         (|| (!! (&& (-P- ER_EI_19) (-P- ER_EI_17))) NIL)
         (|| (!! (&& (-P- ER_EI_19) (-P- ER_EI_18))) NIL)
         (|| (!! (&& (-P- ER_EI_19) (-P- ER_EI_19))) T)
         (|| (!! (&& (-P- ER_EI_19) (-P- ER_EI_20))) NIL)
         (|| (!! (&& (-P- ER_EI_19) (-P- ER_EI_21))) NIL)
         (|| (!! (&& (-P- ER_EI_19) (-P- ER_EI_22))) NIL))
        (&& (|| (!! (&& (-P- ER_EI_20) (-P- ER_EI_16))) NIL)
         (|| (!! (&& (-P- ER_EI_20) (-P- ER_EI_17))) NIL)
         (|| (!! (&& (-P- ER_EI_20) (-P- ER_EI_18))) NIL)
         (|| (!! (&& (-P- ER_EI_20) (-P- ER_EI_19))) NIL)
         (|| (!! (&& (-P- ER_EI_20) (-P- ER_EI_20))) T)
         (|| (!! (&& (-P- ER_EI_20) (-P- ER_EI_21))) NIL)
         (|| (!! (&& (-P- ER_EI_20) (-P- ER_EI_22))) NIL))
        (&& (|| (!! (&& (-P- ER_EI_21) (-P- ER_EI_16))) NIL)
         (|| (!! (&& (-P- ER_EI_21) (-P- ER_EI_17))) NIL)
         (|| (!! (&& (-P- ER_EI_21) (-P- ER_EI_18))) NIL)
         (|| (!! (&& (-P- ER_EI_21) (-P- ER_EI_19))) NIL)
         (|| (!! (&& (-P- ER_EI_21) (-P- ER_EI_20))) NIL)
         (|| (!! (&& (-P- ER_EI_21) (-P- ER_EI_21))) T)
         (|| (!! (&& (-P- ER_EI_21) (-P- ER_EI_22))) NIL))
        (&& (|| (!! (&& (-P- ER_EI_22) (-P- ER_EI_16))) NIL)
         (|| (!! (&& (-P- ER_EI_22) (-P- ER_EI_17))) NIL)
         (|| (!! (&& (-P- ER_EI_22) (-P- ER_EI_18))) NIL)
         (|| (!! (&& (-P- ER_EI_22) (-P- ER_EI_19))) NIL)
         (|| (!! (&& (-P- ER_EI_22) (-P- ER_EI_20))) NIL)
         (|| (!! (&& (-P- ER_EI_22) (-P- ER_EI_21))) NIL)
         (|| (!! (&& (-P- ER_EI_22) (-P- ER_EI_22))) T)))
       (&&
        (&&
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY (YESTERDAY (-P- ER_EI_16)))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY (-P- ER_EI_16)))))))))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY (YESTERDAY (-P- ER_EI_16)))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY (YESTERDAY (-P- ER_EI_16)))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY (YESTERDAY (-P- ER_EI_16)))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY (YESTERDAY (-P- ER_EI_16)))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY (YESTERDAY (-P- ER_EI_16)))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (-P- ER_EI_21))))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY (YESTERDAY (-P- ER_EI_16)))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY (-P- ER_EI_16)))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (-P- ER_EI_21))))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY (-P- ER_EI_16)))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (-P- ER_EI_21))))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY (-P- ER_EI_16)))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (-P- ER_EI_21))))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY (-P- ER_EI_16)))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (-P- ER_EI_21))))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY (-P- ER_EI_21))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY (-P- ER_EI_16)))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY (-P- ER_EI_21))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY (-P- ER_EI_21))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY (-P- ER_EI_21))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY (-P- ER_EI_21))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY (-P- ER_EI_21))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (-P- ER_EI_21))))))))))))))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY (-P- ER_EI_21))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY (-P- ER_EI_16)))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY (-P- ER_EI_17))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY (-P- ER_EI_18)))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY (-P- ER_EI_19))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY (-P- ER_EI_20)))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (-P- ER_EI_21))))))))))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY
                         (YESTERDAY
                          (YESTERDAY
                           (YESTERDAY
                            (YESTERDAY
                             (YESTERDAY
                              (YESTERDAY
                               (YESTERDAY
                                (YESTERDAY
                                 (YESTERDAY
                                  (-P- ER_EI_22)))))))))))))))))))))))))
          T)))
       (&&
        (|| (!! (-P- EI_EXI_8))
         (&& (-P- ENTERI)
          (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- EXITI)))))))))))
        (|| (!! (-P- EI_EXI_9))
         (&& (-P- ENTERI)
          (NEXT
           (NEXT
            (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- EXITI))))))))))))
        (|| (!! (-P- EI_EXI_10))
         (&& (-P- ENTERI)
          (NEXT
           (NEXT
            (NEXT
             (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- EXITI)))))))))))))
        (|| (!! (-P- EI_EXI_11))
         (&& (-P- ENTERI)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- EXITI))))))))))))))
        (|| (!! (-P- EI_EXI_12))
         (&& (-P- ENTERI)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- EXITI)))))))))))))))
        (|| (!! (-P- EI_EXI_13))
         (&& (-P- ENTERI)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT (NEXT (NEXT (NEXT (NEXT (NEXT (-P- EXITI))))))))))))))))
        (|| (!! (-P- EI_EXI_14))
         (&& (-P- ENTERI)
          (NEXT
           (NEXT
            (NEXT
             (NEXT
              (NEXT
               (NEXT
                (NEXT
                 (NEXT
                  (NEXT
                   (NEXT (NEXT (NEXT (NEXT (NEXT (-P- EXITI))))))))))))))))))
       (|| (!! (-P- ENTERI))
        (|| (-P- EI_EXI_8) (-P- EI_EXI_9) (-P- EI_EXI_10) (-P- EI_EXI_11)
         (-P- EI_EXI_12) (-P- EI_EXI_13) (-P- EI_EXI_14)))
       (|| (!! (-P- EXITI))
        (||
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))
         (YESTERDAY
          (YESTERDAY
           (YESTERDAY
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))))
       (&&
        (&& (|| (!! (&& (-P- EI_EXI_8) (-P- EI_EXI_8))) T)
         (|| (!! (&& (-P- EI_EXI_8) (-P- EI_EXI_9))) NIL)
         (|| (!! (&& (-P- EI_EXI_8) (-P- EI_EXI_10))) NIL)
         (|| (!! (&& (-P- EI_EXI_8) (-P- EI_EXI_11))) NIL)
         (|| (!! (&& (-P- EI_EXI_8) (-P- EI_EXI_12))) NIL)
         (|| (!! (&& (-P- EI_EXI_8) (-P- EI_EXI_13))) NIL)
         (|| (!! (&& (-P- EI_EXI_8) (-P- EI_EXI_14))) NIL))
        (&& (|| (!! (&& (-P- EI_EXI_9) (-P- EI_EXI_8))) NIL)
         (|| (!! (&& (-P- EI_EXI_9) (-P- EI_EXI_9))) T)
         (|| (!! (&& (-P- EI_EXI_9) (-P- EI_EXI_10))) NIL)
         (|| (!! (&& (-P- EI_EXI_9) (-P- EI_EXI_11))) NIL)
         (|| (!! (&& (-P- EI_EXI_9) (-P- EI_EXI_12))) NIL)
         (|| (!! (&& (-P- EI_EXI_9) (-P- EI_EXI_13))) NIL)
         (|| (!! (&& (-P- EI_EXI_9) (-P- EI_EXI_14))) NIL))
        (&& (|| (!! (&& (-P- EI_EXI_10) (-P- EI_EXI_8))) NIL)
         (|| (!! (&& (-P- EI_EXI_10) (-P- EI_EXI_9))) NIL)
         (|| (!! (&& (-P- EI_EXI_10) (-P- EI_EXI_10))) T)
         (|| (!! (&& (-P- EI_EXI_10) (-P- EI_EXI_11))) NIL)
         (|| (!! (&& (-P- EI_EXI_10) (-P- EI_EXI_12))) NIL)
         (|| (!! (&& (-P- EI_EXI_10) (-P- EI_EXI_13))) NIL)
         (|| (!! (&& (-P- EI_EXI_10) (-P- EI_EXI_14))) NIL))
        (&& (|| (!! (&& (-P- EI_EXI_11) (-P- EI_EXI_8))) NIL)
         (|| (!! (&& (-P- EI_EXI_11) (-P- EI_EXI_9))) NIL)
         (|| (!! (&& (-P- EI_EXI_11) (-P- EI_EXI_10))) NIL)
         (|| (!! (&& (-P- EI_EXI_11) (-P- EI_EXI_11))) T)
         (|| (!! (&& (-P- EI_EXI_11) (-P- EI_EXI_12))) NIL)
         (|| (!! (&& (-P- EI_EXI_11) (-P- EI_EXI_13))) NIL)
         (|| (!! (&& (-P- EI_EXI_11) (-P- EI_EXI_14))) NIL))
        (&& (|| (!! (&& (-P- EI_EXI_12) (-P- EI_EXI_8))) NIL)
         (|| (!! (&& (-P- EI_EXI_12) (-P- EI_EXI_9))) NIL)
         (|| (!! (&& (-P- EI_EXI_12) (-P- EI_EXI_10))) NIL)
         (|| (!! (&& (-P- EI_EXI_12) (-P- EI_EXI_11))) NIL)
         (|| (!! (&& (-P- EI_EXI_12) (-P- EI_EXI_12))) T)
         (|| (!! (&& (-P- EI_EXI_12) (-P- EI_EXI_13))) NIL)
         (|| (!! (&& (-P- EI_EXI_12) (-P- EI_EXI_14))) NIL))
        (&& (|| (!! (&& (-P- EI_EXI_13) (-P- EI_EXI_8))) NIL)
         (|| (!! (&& (-P- EI_EXI_13) (-P- EI_EXI_9))) NIL)
         (|| (!! (&& (-P- EI_EXI_13) (-P- EI_EXI_10))) NIL)
         (|| (!! (&& (-P- EI_EXI_13) (-P- EI_EXI_11))) NIL)
         (|| (!! (&& (-P- EI_EXI_13) (-P- EI_EXI_12))) NIL)
         (|| (!! (&& (-P- EI_EXI_13) (-P- EI_EXI_13))) T)
         (|| (!! (&& (-P- EI_EXI_13) (-P- EI_EXI_14))) NIL))
        (&& (|| (!! (&& (-P- EI_EXI_14) (-P- EI_EXI_8))) NIL)
         (|| (!! (&& (-P- EI_EXI_14) (-P- EI_EXI_9))) NIL)
         (|| (!! (&& (-P- EI_EXI_14) (-P- EI_EXI_10))) NIL)
         (|| (!! (&& (-P- EI_EXI_14) (-P- EI_EXI_11))) NIL)
         (|| (!! (&& (-P- EI_EXI_14) (-P- EI_EXI_12))) NIL)
         (|| (!! (&& (-P- EI_EXI_14) (-P- EI_EXI_13))) NIL)
         (|| (!! (&& (-P- EI_EXI_14) (-P- EI_EXI_14))) T)))
       (&&
        (&&
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))))
          T)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))))
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
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_8)))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_9))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY (YESTERDAY (YESTERDAY (-P- EI_EXI_10)))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY (YESTERDAY (-P- EI_EXI_11))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY (YESTERDAY (-P- EI_EXI_12)))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY (YESTERDAY (-P- EI_EXI_13))))))))))))))))
          NIL)
         (||
          (!!
           (&&
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))
            (YESTERDAY
             (YESTERDAY
              (YESTERDAY
               (YESTERDAY
                (YESTERDAY
                 (YESTERDAY
                  (YESTERDAY
                   (YESTERDAY
                    (YESTERDAY
                     (YESTERDAY
                      (YESTERDAY
                       (YESTERDAY
                        (YESTERDAY (YESTERDAY (-P- EI_EXI_14)))))))))))))))))
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
              (NEXT
               (&& (!! (-P- INI))
                (NEXT
                 (&& (!! (-P- INI))
                  (NEXT
                   (&& (!! (-P- INI))
                    (NEXT
                     (&& (!! (-P- INI))
                      (NEXT
                       (&& (!! (-P- INI))
                        (NEXT
                         (&& (!! (-P- INI))
                          (NEXT
                           (&& (!! (-P- INI))
                            (NEXT
                             (&& (!! (-P- INI))
                              (NEXT (!! (-P- INI))))))))))))))))))))))))
         (&& (!! (-P- INI))
          (YESTERDAY
           (&& (!! (-P- INI))
            (YESTERDAY
             (&& (!! (-P- INI))
              (YESTERDAY
               (&& (!! (-P- INI))
                (YESTERDAY
                 (&& (!! (-P- INI)) (YESTERDAY (!! (-P- INI))))))))))))))
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
              (NEXT
               (&& (!! (-P- INI))
                (NEXT
                 (&& (!! (-P- INI))
                  (NEXT
                   (&& (!! (-P- INI))
                    (NEXT
                     (&& (!! (-P- INI))
                      (NEXT
                       (&& (!! (-P- INI))
                        (NEXT
                         (&& (!! (-P- INI))
                          (NEXT
                           (&& (!! (-P- INI))
                            (NEXT
                             (&& (!! (-P- INI))
                              (NEXT (!! (-P- INI))))))))))))))))))))))))
         (&& (!! (-P- INI))
          (YESTERDAY
           (&& (!! (-P- INI))
            (YESTERDAY
             (&& (!! (-P- INI))
              (YESTERDAY
               (&& (!! (-P- INI))
                (YESTERDAY
                 (&& (!! (-P- INI)) (YESTERDAY (!! (-P- INI))))))))))))))
       (&& (!! (-P- BAR_0)) (!! (-P- BAR_1))))))))))
         )))
         (if res
     (return bound))
(format t "~%Checked Bound: ~S~%" bound)
         )))


