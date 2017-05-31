#-:asdf (require :asdf)
(let ((zotdir (uiop:getenv "ZOTDIR")))
  (unless zotdir
    (setf zotdir "/usr/local/zot"))
  ;; FIXME: change to use new configuration language...
  (pushnew (concatenate 'string zotdir "/asdfs/")
           asdf:*central-registry* :test #'equal))


