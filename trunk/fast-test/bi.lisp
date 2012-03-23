(asdf:oos 'asdf:load-op :smtbezot)
(defvar the-zot #'smtbezot:zot)

;; this does not work with SMT-based plugins
;(setq sat-interface:*show-pre-cnf-size* t)


