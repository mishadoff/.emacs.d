;; Disable menu
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
 (cons 'clojure-test-mode melpa)
 (cons 'nrepl melpa)
 (cons 'smex melpa)
 (cons 'color-theme melpa)
 (cons 'rainbow-mode elpa)
 (cons 'rainbow-delimiters melpa)
 (cons 'undo-tree elpa)
 (cons 'magit marmalade)
 (cons 'move-text melpa))

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

(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
;;(add-hook 'clojure-mode-hook 'undo-tree-mode)

;; Emacs server
(require 'server)
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

;; keybindings is more specific than org-mode
;(setq org-replace-disputed-keys t)

;; Clojure mode
(autoload 'clojure-mode "clojure-mode")
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))

;; Markdown
(autoload 'markdown-mode "markdown-mode")
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))

;; Additional Languages

;; Lisp ;; TODO failsafe
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "/usr/bin/sbcl --noinform")
