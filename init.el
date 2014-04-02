; Disable menu
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
;; Disable toolbar
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;; Disable scrollbar
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Don't show emacs screen
(setq inhibit-startup-message t)

;; Set path to .emacs.d
(setq emacs-d (file-name-directory load-file-name))

;; Setup load path
(add-to-list 'load-path emacs-d)

;; Libraries
(add-to-list 'load-path "~/.emacs.d/lib/")

;; Setup themes path
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; Setup repositories
(require 'package)

;; Repositories list
(defvar marmalade '("marmalade" . "http://marmalade-repo.org/packages/"))
(defvar elpa '("gnu" . "http://elpa.gnu.org/packages/"))
(defvar melpa '("melpa" . "http://melpa.milkbox.net/packages/"))

;; Add new repositories
(add-to-list 'package-archives marmalade)
(add-to-list 'package-archives melpa t)

(package-initialize)

(unless (and (file-exists-p "~/.emacs.d/elpa/archives/marmalade")
             (file-exists-p "~/.emacs.d/elpa/archives/gnu")
             (file-exists-p "~/.emacs.d/elpa/archives/melpa"))
  (package-refresh-contents))

;; Install specific packages
(defun packages-install (&rest packages)
  (mapc (lambda (package)
          (let ((name (car package))
                (repo (cdr package)))
            (when (not (package-installed-p name))
              (let ((package-archives (list repo)))
                (package-initialize)
                (package-install name)))))
        packages)
  (package-initialize)
  (delete-other-windows))

;; Install missing packages
(packages-install
 (cons 'markdown-mode melpa)
 (cons 'clojure-mode melpa)
 (cons 'projectile melpa)
 (cons 'cider melpa)
 (cons 'paredit melpa)
 (cons 'smartparens melpa)
 (cons 'ecb melpa)
 (cons 'yasnippet melpa)
 (cons 'clojure-snippets melpa)
 (cons 'auto-complete melpa)
 (cons 'ac-cider-compliment melpa)
 (cons 'popup melpa)
 (cons 'smex melpa)
 (cons 'color-theme melpa)
 (cons 'rainbow-mode elpa)
 (cons 'rainbow-delimiters melpa)
 (cons 'undo-tree elpa)
 (cons 'magit marmalade)
 (cons 'move-text melpa)
 (cons 'auto-highlight-symbol marmalade))

;; Smart M-x
(require 'smex)
(smex-initialize)

(load-theme 'cyberpunk t)

;; 
;; (require 'maxframe)
;; (add-hook 'window-setup-hook 'maximize-frame t)

;; Highlight parenthesis
(show-paren-mode 1)

(require 'rainbow-delimiters)

;; NREPL CONFIGURATION (move to separate file)

(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

;; smartparens
(add-hook 'clojure-mode-hook 'smartparens-mode)
(add-hook 'clojure-mode-hook 'auto-highlight-symbol-mode)
;; default config for smartparens
(require 'smartparens-config)
(setq sp-highlight-current-sexp t)
(setq sp-highlight-wrap-overlay nil)
(setq sp-highlight-pair-overlay nil)

;; cider
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-repl-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-repl-mode-hook 'smartparens-mode)
(setq nrepl-hide-special-buffers t)
(setq cider-repl-pop-to-buffer-on-connect nil)
(setq cider-popup-stacktraces nil)
(setq cider-popup-stacktraces-in-repl nil)
(setq cider-repl-popup-stacktraces t)
;(setq cider-repl-use-clojure-font-lock t)
(setq cider-prompt-save-file-on-load nil)
(add-to-list 'same-window-buffer-names "*cider*")

;; From Emacs Live
(defun live-windows-hide-eol ()
  "Do not show ^M in files containing mixed UNIX and DOS line endings."
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))

(when (eq system-type 'windows-nt)
  (add-hook 'cider-mode-hook 'live-windows-hide-eol ))


;; Auto complete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(set-default 'ac-sources
             '(ac-source-dictionary
               ac-source-words-in-buffer
               ac-source-words-in-same-mode-buffers
               ac-source-semantic
               ;ac-source-yasnippet
	       ))

(require 'ac-cider-compliment)
(add-hook 'cider-mode-hook 'ac-cider-compliment-setup)
(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes cider-mode))

;; (setq ac-auto-show-menu t)
;; (setq ac-dwim t)
;; (setq ac-use-menu-map t)
;; (setq ac-quick-help-delay 1)
;; (setq ac-quick-help-height 60)
;; ;(setq ac-disable-inline t)
;; (setq ac-show-menu-immediately-on-auto-complete t)
;; (setq ac-auto-start 2)
;; (setq ac-candidate-menu-min 0)

;; ac-nrepl
;(require 'ac-nrepl)
;; (add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
;; (add-hook 'nrepl-interaction-mode-hook 'ac-nrepl-setup)
;; (eval-after-load "auto-complete" '(add-to-list 'ac-modes 'nrepl-mode))


;; Re-Builder
(require 're-builder)
(setq reb-re-syntax 'string) ;; Avoid backslash mess

;; Emacs server
(require 'server)
;; Avoid .emacs.d/server is unsafe on windows
(when (and (>= emacs-major-version 23)
	   (equal window-system 'w32))
  (defun server-ensure-safe-dir (dir) "Noop" t))
 
(unless (server-running-p)
  (server-start))

;; Key bindings

(require 'keyboard)

;; Interactive commands
(require 'ido)
(ido-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-case-fold nil
      ido-use-filename-at-point nil
      ido-max-prospects 10)

;; keystrokes echo
(setq echo-keystrokes 0.1)

;; UTF-8 please
(setq locale-coding-system 'utf-8) ; pretty
(set-terminal-coding-system 'utf-8) ; pretty
(set-keyboard-coding-system 'utf-8) ; pretty
(set-selection-coding-system 'utf-8) ; please
(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8) ; with sugar on top

(setq line-number-mode t)
(setq column-number-mode t)

(setq fill-column 80)
(fset 'yes-or-no-p 'y-or-n-p)
(setq visible-bell t)

(setq frame-title-format "emacs")

;; Show time in buffer
(setq display-time-string-forms
      '((propertize (concat " " 24-hours ":" minutes " "))))
(display-time-mode 1)

;; Mouse wheel scrolls the current buffer
(mouse-wheel-mode t)
;; Cursor not blinking, please
(blink-cursor-mode -1)
;; Owerwrite selection
(delete-selection-mode 1)

;; recentf-mode
(recentf-mode 1)

;; Undo tree for all buffers
(require' undo-tree)
(global-undo-tree-mode)

;; Show empty lines
(toggle-indicate-empty-lines)

;; Ediff
(setq ediff-split-window-function 'split-window-horizontally) 

;; keybindings is more specific than org-mode
;(setq org-replace-disputed-keys t)

;; Clojure mode
(autoload 'clojure-mode "clojure-mode")
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))

;; Markdown
(autoload 'markdown-mode "markdown-mode")
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))


;; Emacs Code Browser
(require 'ecb)
(setq ecb-layout-name "left15")
(setq ecb-tip-of-the-day nil)

;; Flyspell
; (add-hook 'markdown-mode-hook (lambda () (flyspell-mode 1)))


;; Additional Languages

;; Lisp
;(let ((f (expand-file-name "~/quicklisp/slime-helper.el")))
;  (if (file-exists-p f) (load f)))
;(setq inferior-lisp-program "sbcl --noinform")


;; Plugins

;; Twitter
;(require 'twittering-mode)

;; Projectile mode
(require 'projectile)
(add-hook 'clojure-mode-hook 'projectile-on)

 ;; Unconditional caching
;(setq projectile-enable-caching t)
;; [C-c p f] find file in project
;; [С-с p g] grep
;; [C-c p t] toogle file and test

(require 'yasnippet)
(yas-global-mode 1)
(setq yas/prompt-functions '(yas/ido-prompt yas/no-prompt))

