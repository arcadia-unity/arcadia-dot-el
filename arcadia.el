(defcustom unity-repl-command "ruby repl-client.rb"
  "Command to use for unity-repl.")

(defun unity-repl ()
  ""
  (interactive)
  (run-lisp unity-repl-command)
  (unity-repl-mode)
  (setq truncate-lines 't))
