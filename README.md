# General Functionality

General functionality available globally for every buffer.

** TODO M- prefix in the same line **

* `C-a` st[A]rt of the line
* `C-b` [B]ackward character
* `C-c` Prefix for [[C]ode Mode](#code)
* `C-d` [D]elete symbol at right
* `C-e` [E]nd of the line
* `C-f` [F]orward character
* `C-g` stop interactive input
* `C-h` backspace
* `C-i` **AVAILABLE**
* `C-j` new line
* `C-k` [K]ill line till the end
* `C-l` **AVAILABLE**
* `C-m` new line
* `C-n` [N]ext line
* `C-o` new line but don't move cursor
* `C-p` [P]revious line
* `C-q` **AVAILABLE**
* `C-r` [R]everse search
* `C-s` [S]earch forward
* `C-t` [T]ranspose symbols
* `C-u` [U]ber run prefix, run action number of times
* `C-v` **AVAILABLE**
* `C-w` cut region (*as standard C-x*)
* `C-x` prefix for [e[X]tended functionality](#ext)
* `C-y` insert (*as standard C-v*)
* `C-z` undo
* `C-=` [expand region](#mode_expand)
* `C-.` auto-complete backed by [company mode](#mode_company) 

* `M-a` st[A]rt of the paragraph
* `M-b` [B]ackward word
* `M-c` [C]apitalize word
* `M-d` [D]elete word
* `M-e` [E]nd of the paragraph
* `M-f` [F]orward word
* `M-g` **AVAILABLE**
* `M-h` **AVAILABLE**
* `M-i` **AVAILABLE**
* `M-j` New line
* `M-k` [K]ill paragraph
* `M-l` [L]owercase word
* `M-m` **AVAILABLE**
* `M-n` [N]ext 5 lines
* `M-o` **AVAILABLE**
* `M-p` [P]revious 5 lines
* `M-q` **AVAILABLE**
* `M-r` **AVAILABLE**
* `M-s` **AVAILABLE**
* `M-t` [T]ranspose words
* `M-u` [U]pper case words
* `M-v` **AVAILABLE**
* `M-w` copy (*as standard C-c*)
* `M-x` e[X]exute function
* `M-y` **???**
* `M-z` **AVAILABLE**

* `C-M-a` st[A]rt of the buffer
* `C-M-e` [E]nd of the buffer

Note: `M-x guru-mode` enable/disable avigation without arrows

<a name="ext"/>
### Extended Fuctionality

Extended functionality for emacs. Often backed by other modes.
Prefixed with `C-x`. Mnemonic - e[X]tended.

* `C-x a` **AVAILABLE**
* `C-x b` list all [B]uffers ([ibuffer](#mode_ibuffer))
* `C-x c` **AVAILABLE**
* `C-x d` list all files in a [D]irectory ([dired-mode](#mode_dired))
* `C-x e` run macro ([E]valuate)
* `C-x f` [F]ind file with autocompletion
* `C-x g` [G]it-status ([magit](#mode_magit))
* `C-x h` **AVAILABLE** select all
* `C-x i` **AVAILABLE**
* `C-x j` [J]ump to symbol ([ace-jump-mode](#mode_ace))
* `C-x k` [K]ill current buffer
* `C-x l` **AVAILABLE** replace (calculate lines)
* `C-x m` toggle [M]enubar (useful for exploring modes)
* `C-x n` Switch to buffer by [N]ame
* `C-x o` switch to [O]ther buffer
* `C-x p` **AVAILABLE**
* `C-x q` [Q]uit emacs, save buffers
* `C-x r` **AVAILABLE**
* `C-x s` [S]ave all unsaved buffers
* `C-x t` **AVAILABLE**
* `C-x u` history of buffer [U]ndo/redo in a form of tree ([undo-tree](#mode_undo))
* `C-x v` **AVAILABLE**
* `C-x w` open [W]eb url at point in default browser
* `C-x x` **AVAILABLE**
* `C-x y` **AVAILABLE**
* `C-x z` **AVAILABLE**

* `C-x (` start defining macro
* `C-x )` finish defining macro
* `C-x 0` close this window
* `C-x 1` close all but this
* `C-x 2` split horizontally
* `C-x 3` split vertically
* `C-x +` balance windows

* `C-x <left>` previous buffer
* `C-x <right>` next buffer

<a name="code"/>
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
