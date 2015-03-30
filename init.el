;; Disable menu
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
;; Disable toolbar
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;; Disable scrollbar
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Disable visual bell
(setq ring-bell-function 'ignore)

;; Don't show emacs screen
(setq inhibit-startup-message t)

;; No more backups please
(setq make-backup-files nil)

;; Set path to .emacs.d
(setq emacs-d (file-name-directory load-file-name))

;; Libraries
(add-to-list 'load-path "~/.emacs.d/lib/")

;; Name of emacs window as a buffer name
(setq frame-title-format "%b")

;; Setup themes path
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; setup path for MacOS
(when (equal system-type 'darwin)
  (setenv "PATH" (concat "/opt/local/bin:/usr/local/bin:" (getenv "PATH")))
  (push "/opt/local/bin" exec-path))

;; remove?
(eval-after-load 'magit
  '(setq magit-process-connection-type nil))


;; Installing Packages
(require 'setup-package)
(defun init--install-packages ()
  (packages-install
   '(markdown-mode
     clojure-mode
     projectile
     cider
     smartparens
     yasnippet
     clojure-snippets
     popup
     smex
     color-theme
     rainbow-mode
     rainbow-delimiters
     undo-tree
     magit
     move-text
     auto-highlight-symbol
     inf-ruby
     exec-path-from-shell
     company
     guru-mode
     expand-region
     ace-jump-mode
     clj-refactor
     zenburn-theme
     )))

(condition-case nil
    (init--install-packages)
  (error
   (package-refresh-contents)
   (init--install-packages)))

(require 'smex)
(smex-initialize)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; Highlight parenthesis
(show-paren-mode 1)

(require 'rainbow-delimiters)

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
(require 'cider)
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-repl-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-repl-mode-hook 'smartparens-mode)
(setq nrepl-hide-special-buffers t)
;(setq cider-repl-pop-to-buffer-on-connect nil)
(setq cider-popup-stacktraces nil)
(setq cider-popup-stacktraces-in-repl nil)
(setq cider-repl-popup-stacktraces t)
;(setq cider-repl-use-clojure-font-lock t)
(setq cider-prompt-save-file-on-load nil)
;(add-to-list 'same-window-buffer-names "*cider*")

;; From Emacs Live
(defun live-windows-hide-eol ()
  "Do not show ^M in files containing mixed UNIX and DOS line endings."
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))

;; (when (eq system-type 'windows-nt)
;;   (add-hook 'cider-mode-hook 'live-windows-hide-eol ))

(require 'company)
;; Enable company-mode globally
(add-hook 'after-init-hook 'global-company-mode)



;; Complete after 500ms
(setq company-idle-delay 500)

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
      ido-case-fold t
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
(require 'recentf)
(setq recentf-max-saved-items 200)
(setq recentf-max-menu-items 15)
(recentf-mode 1)


;; Undo tree for all buffers
(require' undo-tree)
(global-undo-tree-mode)

;; Show empty lines
(toggle-indicate-empty-lines)

;; Ediff
(setq ediff-split-window-function 'split-window-horizontally) 

;; Clojure mode
(autoload 'clojure-mode "clojure-mode")
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))

;; Markdown
(autoload 'markdown-mode "markdown-mode")
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))


;; Projectile mode
(require 'projectile)
(add-hook 'clojure-mode-hook 'projectile-mode)


;; TODO database utilities
(require 'dbconf)

;; Sorry, too hardcore
;;
;; (require 'guru-mode)
;; (guru-global-mode +1)

;; disable old theme before loading new
(defadvice load-theme 
  (before theme-dont-propagate activate)
  (mapcar #'disable-theme custom-enabled-themes))

;;
(require 'color-theme)
(load-theme 'zenburn t)

;; org mode

(defun org-summary-todo (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)   ; turn off logging
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))

(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)

(setq org-todo-keywords '((sequence "TODO" "PROGRESS" "|" "DONE")))

(setq org-todo-keyword-faces
      '(("TODO" :background "red1" :foreground "black" :weight bold :box (:line-width 2 :style released-button))
        ("PROGRESS" :background "orange" :foreground "black" :weight bold :box (:line-width 2 :style released-button))
        ("DONE" :background "forest green" :weight bold :box (:line-width 2 :style released-button))
	))
