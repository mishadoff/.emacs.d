# General Functionality

* `C-a` st[a]rt of the line
* `C-b` [b]ackward-char
* `C-c` Prefix for [**C**ode Mode]()
* `C-d` [d]elete symbol at right
* `C-e` [e]nd of the line
* `C-f` [f]orward-char
* `C-g` stop interactive input
* `C-h` backspace
* `C-i` TODO EMPTY
* `C-j` new line
* `C-k` [k]ill line till the end
* `C-l` TODO REBIND
* `C-m` new line
* `C-n` [n]ext line
* `C-o` new line but don't move cursor
* `C-p` [p]revious line
* `C-q` TODO EMPTY
* `C-r` [r]everse search
* `C-s` [s]earch forward
* `C-t` [t]ranspose symbols
* `C-u` [u]ber run prefix, run action number of times
* `C-v` TODO REBIND
* `C-w` cut region
* `C-x` prefix for [e**X**tended functionality]()
* `C-y` insert
* `C-z` undo
* `C-=` [expand region]()
* `C-.` auto-complete by [company mode]() 

* `M-f` [f]orward word
* `M-b` [b]ackward word


** TODO faster navigation up/down
** TODO begining/end of the buffer


Note: `M-x guru-mode` enable/disable navigation without arrows

### Global Features

Global features used to represent some additional
functionality for emacs. Often backed by other modes.
Prefixed with `C-x`. Mnemonic - e[X]ecute.

* `C-x a` EMPTY
* `C-x b` list all **b**uffers ([ibuffer](#ibuffer))
* `C-x d` list all files in a **d**irectory ([dired-mode](#dired))
* `C-x (` start defining macro
* `C-x )` finish defining macro
* `C-x e` run macro (**e**valueate)
* `C-x g` **g**it-status ([magit](#magit))
* `C-x h` select all
* `C-x j` jump to symbol (ace-jump-mode)
* `C-x k` **k**ill current buffer
* `C-x l` **TODO** replace (calculate lines)
* `C-x m` toggle **m**enubar (useful for exploring modes)
* `C-x n` Switch to buffer by **n**ame
* `C-x o` switch to **o**ther buffer
* `C-x p` EMPTY
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

### Code mode

A set of useful keybindings for code editor.
Prefixed with `C-c`. Mnemonic - [C]ode.

* `C-c c` **c**omment/uncomment region
* `C-c d` **d**uplicate current line
* `C-c f` **f**ormat code (fix indentation)
* `C-c l` Go to **l**ine

For advanced code features use [Projectile](#projectile) 

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
### Magit `C-x g`

* `s` stage file
* `u` unstage file
* `c` commit, write commit message, `C-c C-c` to finist 
* `P P` push

<a name="autocomplete"/>
### Auto-Complete

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
  * Install [Leiningen 2](https://github.com/technomancy/leiningen)
  * Open some file `C-x C-f some-clojure-file.clj`
  * `M-x cider-jack-in`
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


### Cider keywords

`C-c M-n` set namespace

<a name="projectile"/>
### Projectile `C-c p`

`C-c p c` - [c]ompile
`C-c p g` - callers list [g]
`C-c p t` - toggle between code & [t]est
`C-c p f` - find [f]ile in a project
`C-c p e` - recent [e]dited project files
`C-c p r` - global project [r]eplace
`C-c p k` - [k]ill all project buffers

### SmartParens

`M-c` select next thing
`M-s` slurp 
