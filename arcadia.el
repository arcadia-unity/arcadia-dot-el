;;; arcadia.el --- Clojure + Unity + Emacs!

(require 'inf-clojure)

(defcustom arcadia-repl-port 5555
  "Port to connect to Arcadia repl.")

(defun arcadia-repl ()
  "Attempts to connect to a running Arcadia instance over the Arcadia socket-repl."
  (interactive)
  (inf-clojure-connect "localhost" arcadia-repl-port))

(provide 'arcadia)
