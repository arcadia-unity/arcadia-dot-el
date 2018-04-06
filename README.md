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
arcadia-repl
```

A REPL should show up, with the same behavior and keybindings as
inf-clojure. Some inf-clojure commands may not work as expected yet.
