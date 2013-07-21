### Global Features

Global features used to represent some additional
functionality for emacs. Often backed by other modes.
Prefixed with `C-x`. Mnemonic - e**X**ecute.

* `C-x b` list all **b**uffers ([ibuffer](#ibuffer))
* `C-x d` list all files in a **d**irectory ([dired-mode](#dired))
* `C-x (` start defining macro
* `C-x )` finish defining macro
* `C-x e` run macro (**e**valueate)
* `C-x g` **g**it-status ([magit](#magit))
* `C-x h` **TODO** replace (select all)
* `C-x k` **k**ill current buffer
* `C-x l` **TODO** replace (calculate lines)
* `C-x m` toggle **m**enubar (useful for exploring modes)
* `C-x o` switch to **o**ther buffer
* `C-x p` enable/disable [paredit](#paredit) mode
* `C-x s` save all unsaved buffers
* `C-x u` history of buffer **u**ndo/redo in a form of tree (*undo-tree*)
* `C-x w` open **w**eb url at point
* `C-x z` run terminal (*Eshell*)
* `C-x 0` close this window
* `C-x 1` close all but this
* `C-x 2` split horizontally
* `C-x 3` split vertically
* `C-x +` balance windows
* `C-x <left>` previous buffer
* `C-x <right>` next buffer

### Text Editor
	
* TODO

### Search/Replace

* `C-s` search forward
* `C-r` search backward

### Code mode

A set of useful keybindings for code (not only) editor.
Prefixed with `C-c`. Mnemonic - **C**ode.

* `C-c c` **c**omment/uncomment region
* `C-c d` **d**uplicate current line
* `C-c f` **f**ormat code (fix indentation)
* `C-c l` Go to **l**ine

<a name="ibuffer"/>
### Ibuffer `C-x b`

<a name="dired"/>
### Dired mode `C-x d`

Oldschool file explorer. Directory is a file too.

* `Enter` open file
* `m` mark file
* `u` unmark file
* `C` copy file
* `D` delete file
* `R` rename file
* `Z` compress/decompress
* `+` new folder
* `g` refresh folder
* `q` close folder
* `^` Go to root folder
* `!` execute shell command on the file/folder

<a name="magit"/>
### Ibuffer `C-x g`

* `s` stage file
* `u` unstage file
* `c` commit, write commit message, `C-c C-c` to finist 
* `P P` push

<a name="autocomplete"/>
### Auto-Complete

TODO

<a name="paredit"/>
### Paredit mode `C-x p`

TODO

### Additional Features

* `C-u <number>` perform operation specified number of times
* `C-S-<up>` move line or region up
* `C-S-<down>` move line or region down

### Programming Languages

Except built-in `elisp`, current emacs have following languages configured
based on **external dependencies**. All setting supposed to be failsafe
(i.e. if specific programming language not configured correctly, emacs still works)

* **Clojure**
  * [Leiningen 2](https://github.com/technomancy/leiningen)
  * `M-x nrepl`
  * Have fun!

* **Common Lisp**
  * Install [SBCL](www.sbcl.org/platform-table.html)
  * Download [quicklisp.lisp](http://www.quicklisp.org/beta/)
  * Run SBCL with load option `sbcl --load path/to/quicklisp.lisp` or load inside SBCL `(load "path/to/quicklisp.lisp")`
  * Evaluate in SBCL `(quicklisp-quickstart:install)`, `(ql:add-to-init-file)` and `(ql:quickload "quicklisp-slime-helper")`
  This will configure your SBCL installation to use quicklisp for library access, and install SLIME mode for coding from emacs.
  * Run emacs, make sure inferior process and quicklisp load path configured correctly.
  ```
  (let ((f (expand-file-name "~/quicklisp/slime-helper.el")))
    (if (file-exists-p f) (load f)))
  (setq inferior-lisp-program "sbcl --noinform")
  ```
  * Have fun.
