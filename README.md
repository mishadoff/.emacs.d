Configuration for Emacs 25.3

# Install

```
# Install Emacs
brew tap d12frosted/emacs-plus
brew install emacs-plus

# Copy configuration 
cd ~
git clone git@github.com:mishadoff/.emacs.d.git
```

# Basic Mode (C-)

General functionality available globally for every buffer.
Basic navigation and editing hotkeys.

* `C-a` - move cursor to the start of the line
* `C-b` - move cursor one word backward
* `C-c` - prefix, reserved for [Code Mode](#code-mode)
* `C-d` - delete char (forward)
* `C-e` - move cursor to the end of line
* `C-f` - move cursor one word forward
* `C-g` - Emacs Escape, stop interactive input
* `C-h` - delete char backward (a.k.a. backspace)
* `C-i`/`C-j`/`C-k`/`C-l` - arrows
* `C-m`/`C-n` - enter or return
* `C-o` **AVAILABLE**
* `C-p` **AVAILABLE**
* `C-q` **AVAILABLE**
* `C-r` - replace in current buffer or selectipn
* `C-s` - search in current buffer
* `C-t` - prefix, reserved for [Tool Mode](#tool-mode)
* `C-u` - run action number of times
* `C-v` **AVAILABLE**
* `C-w` - cut region (*as standard C-x*)
* `C-x` - prefix, reserved for [Execute Mode](#execute-mode)
* `C-y` - insert (*as standard C-v*)
* `C-z` - undo
* `C-=` - extend selection
* `C--` - shrink selection
* `C-[`/`C-]` - escape
* `C-.` - trigger autocomplete
* `C-SPACE` - start/end sticky selection

# Alternative Keys (C-M-)

With extra meta key, slightly changes or improves
the functionali of basic keys.

`C-M-a` - move cursor to the start of buffer
`C-M-b` - move cursor one function backward
`C-M-c` - **AVAILABLE**
`C-M-d` - delete line from cursor to the end of line
`C-M-e` - move cursor to the end of buffer
`C-M-f` - move cursor one function forward

# Popular

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
# Extended Fuctionality

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
# Code mode

A set of useful keybindings for code editor.
Prefixed with `C-c`. Mnemonic - [C]ode.

* `C-c a` **AVAILABLE**
* `C-c b` **AVAILABLE**
* `C-c c` [C]omment/uncomment region
* `C-c d` [D]uplicate current line
* `C-c e` **AVAILABLE**
* `C-c f` [F]ormat code (the same as indent)
* `C-c g` **AVAILABLE**
* `C-c h` Prefix for [[H]ide/show mode](#mode_hs)
* `C-c i` [I]ndent code (the same as format)
* `C-c j` **AVAILABLE**
* `C-c l` Go to [L]ine
* `C-c m` **AVAILABLE**
* `C-c n` **AVAILABLE**
* `C-c o` **AVAILABLE**
* `C-c p` Prefix for [[P]rojectile mode](#mode_projectile)
* `C-c q` **AVAILABLE**
* `C-c r` Prefix for [[R]efactor mode](#mode_refactor) (only in clojure mode)
* `C-c s` **AVAILABLE**
* `C-c t` **AVAILABLE**
* `C-c u` **AVAILABLE**
* `C-c v` **AVAILABLE**
* `C-c w` [W]hack whitespace (delete forward all whitespaces)
* `C-c x` **AVAILABLE**
* `C-c y` **AVAILABLE**
* `C-c z` **AVAILABLE**

# Modes

<a name="mode_expand"/>
## [Expand Region](https://github.com/magnars/expand-region.el)

Press `C-=` to enable expand-region function that incrementally select
text. This mode is aware about structure of most common file types (e.g. programming languages) so it works well in semantic code selection as well.

* `=` expand selection
* `-` narrow selection
* `0` reset selection

<a name="mode_company"/>
## [Company Mode](http://company-mode.github.io) 

* `C-.` triggers code completion
* `M-p`/`M-n` or `<up>`/`<down>` move up and down to select candidate
* `<return>` to complete
* `C-w` show source
* `<F1>` show documentation
* `C-g` stop input

<a name="mode_ibuffer"/>
### ibuffer

* Press `C-x b` to show buffer list
* `m` mark buffer
* `u` unmark buffer
* `D` kill all marked buffers

<a name="mode_dired"/>
### Dired mode

* Press `C-x d` to show oldschool file explorer
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

<a name="mode_magit"/>
### Magit `C-x g`

* `s` stage file
* `u` unstage file
* `k` discard changes
* `TAB` show unified diff
* `c c` commit, write commit message, `C-c C-c` to finish
* `P P` push

# Programming Languages

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

<a name="mode_projectile"/>
### Projectile `C-c p`

`C-c p c` - [C]ompile
`C-c p g` - callers list [g]
`C-c p t` - toggle between code & [t]est
`C-c p f` - find [f]ile in a project
`C-c p e` - recent [e]dited project files
`C-c p r` - global project [r]eplace
`C-c p k` - [k]ill all project buffers

### SmartParens

`M-c` select next thing
`M-s` slurp 
