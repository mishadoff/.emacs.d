;; Set path to .emacs.d
(setq emacs-d (file-name-directory load-file-name))

;; Setup load path
(add-to-list 'load-path emacs-d)

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
 (cons 'clojure-mode melpa)
 (cons 'clojure-test-mode melpa)
 (cons 'nrepl melpa)
 (cons 'smex melpa)
 (cons 'color-theme melpa))

;; Smart M-x
(require 'smex)
(smex-initialize)

;; Appearance Related

;; Sam Aaron's cyberpunk theme
(require 'cyberpunk)
(color-theme-cyberpunk)


;; Highlight parenthesis
(show-paren-mode 1)

;; Disable menu
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Disable toolbar
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

;; Disable scrollbar
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Toggle fullscreen mode
(defun toggle-fullscreen ()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
                         '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
                         '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)))
(toggle-fullscreen)


;; Key bindings
(global-set-key (kbd "M-x") 'smex)
