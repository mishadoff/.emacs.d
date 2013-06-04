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

;; Setup themes path
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; Setup dependencies path
(setq site-lisp-dir (expand-file-name "site-lisp" emacs-d))

;; Setup repositories
(require 'package)

;; Repositories list
(defvar marmalade '("marmalade" . "http://marmalade-repo.org/packages/"))
(defvar gnu '("gnu" . "http://elpa.gnu.org/packages/"))
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
 (cons 'rainbow-mode gnu)
 (cons 'rainbow-delimiters melpa)
 )

;; Smart M-x
(require 'smex)
(smex-initialize)

;; Toggle fullscreen mode (Not working under windows)
;; (defun toggle-fullscreen ()
;;   (interactive)
;;   (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
;;                          '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
;;   (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
;;                          '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)))
;; (toggle-fullscreen)


;; Key bindings
(global-set-key (kbd "M-x") 'smex)

(load-theme 'cyberpunk t)

;; Highlight parenthesis
(show-paren-mode 1)

(require 'rainbow-delimiters)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)


;; Emacs server
(require 'server)
(unless (server-running-p)
  (server-start))

;; Key bindings

(global-set-key (kbd "<home>") 'beginning-of-buffer)
(global-set-key (kbd "<end>") 'end-of-buffer)

(global-set-key (kbd "C-c c") 'comment-or-uncomment-region)
(global-set-key (kbd "C-c u") 'uncomment-region)

(global-set-key (kbd "S-<right>") 'windmove-right)
(global-set-key (kbd "S-<left>") 'windmove-left)
(global-set-key (kbd "S-<up>") 'windmove-up)
(global-set-key (kbd "S-<down>") 'windmove-down)

(global-set-key (kbd "C-.") 'complete-symbol)
(global-set-key (kbd "C-x b") 'ibuffer)


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
(prefer-coding-system 'utf-8) ; with sugar on top

(setq line-number-mode t)
(setq column-number-mode t)

(setq fill-column 80)

;; Clojure mode
(autoload 'clojure-mode "clojure-mode")
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))

;; Markdown
(autoload 'markdown-mode "markdown-mode")
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
