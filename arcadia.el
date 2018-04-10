;;; arcadia.el

(require 'inf-clojure)

(defcustom arcadia-repl-port 5555
  "Port to connect to Arcadia repl.")

(defun arcadia-repl ()
  "Attempts to connect to a running Arcadia instance over the Arcadia socket-repl."
  (interactive)
  (inf-clojure-connect "localhost" arcadia-repl-port))


;; inf-clojure's argslists eldoc support spams the Arcadia repl
;; and slows down emacs. This (removable) empty wrapper function is a
;; quick kludge to disable it.
(defun arcadia-inf-clojure-eldoc-setup-wrapper (orig-fun &rest args)
  )

;; Temporary hack that disables eldoc for inf-clojure.
(advice-add 'inf-clojure-eldoc-setup :around #'arcadia-inf-clojure-eldoc-setup-wrapper)

(provide 'arcadia)
