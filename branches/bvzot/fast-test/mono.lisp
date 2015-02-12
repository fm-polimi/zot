(asdf:oos 'asdf:load-op :smteezot)
(defvar the-zot #'smteezot:zot)

;; this does not work with SMT-based plugins
;(setq sat-interface:*show-pre-cnf-size* t)
