# arcadia.el

Emacs REPL for Clojure Unity.

## Installation

`arcadia.el` is not currently published, so for now users must load it manually.

`arcadia.el` requires
[inf-clojure](https://github.com/clojure-emacs/inf-clojure), which can be
installed in the normal way using `el-get` or `M-x list-packages`.

## Usage

1. Start a Unity project that includes Arcadia in its `Assets` directory.

2. From emacs, run 

```
M-x arcadia-repl
```

A REPL should show up, with the same behavior and keybindings as
inf-clojure. Some inf-clojure commands may not work as expected yet.

## Notes

`inf-clojure` is set up to print argslists for invocation forms when the cursor is over them. It seems to do so by sending input to the Clojure REPL. When used with Arcadia's REPL, this can slow down emacs. `inf-clojure` does not seem to expose an easy way of turning this feature off. As a temporary workaround `arcadia.el` wraps the `inf-clojure-eldoc-setup` function in [advice](https://www.gnu.org/software/emacs/manual/html_node/elisp/Advising-Functions.html) that effectively disables it, thereby disabling the argslist reporting behavior. Unfortunately this also disables argslists for `inf-clojure` when used with Clojure JVM. To reenable argslists, run

```
(advice-remove 'inf-clojure-eldoc-setup #'arcadia-inf-clojure-eldoc-setup-wrapper)
```
