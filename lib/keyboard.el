(global-set-key (kbd "M-x") 'smex)

;; TODO enter must be disabled
(add-hook 'clojure-mode-hook '(lambda () (local-set-key (kbd "RET") 'newline-and-indent)))

(require 'codetools)

(global-set-key (kbd "C-x C-r") 'recentf-ido-find-file)
(global-set-key "\C-z" 'undo)

;; for mac we use command as a meta key
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; Guru
(global-set-key (kbd "C-h") 'backward-delete-char)

(require 'move-text)
(require 'yasnippet)

(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)

(define-key yas-minor-mode-map (kbd "C-c TAB") 'yas-expand)
(define-key yas-minor-mode-map (kbd "C-c y") 'yas/insert-snippet)

(global-set-key (kbd "C-c c") 'comment-or-uncomment-region)
(global-set-key (kbd "C-c d") 'duplicate-line)
(global-set-key (kbd "C-c w") 'whack-whitespace)
(global-set-key (kbd "C-c l") 'goto-line)
(global-set-key (kbd "C-c f") 'indent-region)
(global-set-key (kbd "C-c i") 'indent-region)
 
(require 'ecb)
(global-set-key (kbd "C-c e") 'ecb-minor-mode)

;; Move text
(global-set-key (kbd "<C-S-up>") 'move-text-up)
(global-set-key (kbd "<C-S-down>") 'move-text-down)

(global-set-key (kbd "S-<right>") 'windmove-right)
(global-set-key (kbd "S-<left>") 'windmove-left)
(global-set-key (kbd "S-<up>") 'windmove-up)
(global-set-key (kbd "S-<down>") 'windmove-down)

(global-set-key (kbd "C-.") 'company-complete-common)

;; Global Features

(global-set-key (kbd "C-x b") 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x u") 'undo-tree)
(global-set-key (kbd "C-x q") 'save-buffers-kill-emacs)
(global-set-key (kbd "C-x g") 'magit-status)
;(global-set-key (kbd "C-x z") 'eshell)
(global-set-key (kbd "C-x m") 'menu-bar-mode)
(global-set-key (kbd "C-x w") 'browse-url-at-point)
(global-set-key (kbd "C-x n") 'ido-switch-buffer)

;; Paredit mode
;(global-set-key (kbd "C-x p") 'paredit-mode) ;; should me removed when comfortable with paredit

;; mode specific keybindings
(require 'cider)
(define-key cider-repl-mode-map (kbd "C-c <deletechar>") 'cider-repl-clear-buffer)
(define-key cider-repl-mode-map (kbd "C-c <pause>") 'cider-interrupt)

(require 'smartparens)
(define-key sp-keymap (kbd "M-f") 'sp-forward-sexp)
(define-key sp-keymap (kbd "M-b") 'sp-backward-sexp)
(define-key sp-keymap (kbd "M-u") 'sp-backward-up-sexp)
(define-key sp-keymap (kbd "M-d") 'sp-kill-sexp)
(define-key sp-keymap (kbd "M-n") 'sp-next-sexp)
(define-key sp-keymap (kbd "M-p") 'sp-previous-sexp)
(define-key sp-keymap (kbd "M-c") 'sp-select-previous-thing-exchange)
(define-key sp-keymap (kbd "M-s") 'sp-slurp-hybrid-sexp)

(provide 'keyboard)
