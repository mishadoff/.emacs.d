(require 'codetools)
(require 'expand-region)
(require 'company)
(require 'move-text)
(require 'clj-refactor)
(require 'smartparens)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GENERAL TWEAKS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; for mac we use command as a meta key
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GLOBAL FEATURES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "M-x") 'smex)

(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-h") 'backward-delete-char)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-.") 'company-complete-common)

(global-set-key (kbd "M-n") (kbd "C-u 5 C-n"))
(global-set-key (kbd "M-p") (kbd "C-u 5 C-p"))

(global-set-key (kbd "C-M-a") 'beginning-of-buffer)
(global-set-key (kbd "C-M-e") 'end-of-buffer)

;; TODO guru-mode + company



;; move text
(global-set-key (kbd "<C-S-up>") 'move-text-up)
(global-set-key (kbd "<C-S-down>") 'move-text-down)

;; buffer positional switch
(global-set-key (kbd "S-<right>") 'windmove-right)
(global-set-key (kbd "S-<left>") 'windmove-left)
(global-set-key (kbd "S-<up>") 'windmove-up)
(global-set-key (kbd "S-<down>") 'windmove-down)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; EXTENDED FUNCTIONALITY, PREFIX C-x
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-x b") 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x u") 'undo-tree)
(global-set-key (kbd "C-x q") 'save-buffers-kill-emacs)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x m") 'menu-bar-mode)
(global-set-key (kbd "C-x w") 'browse-url-at-point)
(global-set-key (kbd "C-x n") 'ido-switch-buffer)
(global-set-key (kbd "C-x j") 'ace-jump-mode)
(global-set-key (kbd "C-x f") 'ido-find-file)
(global-set-key (kbd "C-x C-r") 'recentf-ido-find-file)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CODE MODE, PREFIX C-c
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-c c") 'comment-or-uncomment-region)
(global-set-key (kbd "C-c d") 'duplicate-line)
(global-set-key (kbd "C-c w") 'whack-whitespace)
(global-set-key (kbd "C-c l") 'goto-line)
(global-set-key (kbd "C-c f") 'indent-region)
(global-set-key (kbd "C-c i") 'indent-region)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MODE SPECIFIC KEYBINDINGS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; clojure mode specific

(add-hook 'clojure-mode-hook (lambda ()
			       ;; clj-refactor
                               (clj-refactor-mode 1)
			       (cljr-add-keybindings-with-prefix "C-c r")

			       ;; keybindings
			       (local-set-key (kbd "RET") 'newline-and-indent)
			       ))

;; TODO MORE CIDER BINDINGS

;; smartparens

;; TODO REVIEW SMARTPARENS
;(define-key sp-keymap (kbd "M-b") 'sp-backward-sexp)
;(adefine-key sp-keymap (kbd "M-u") 'sp-backward-up-sexp)
;(define-key sp-keymap (kbd "M-d") 'sp-kill-sexp)
;(define-key sp-keymap (kbd "M-n") 'sp-next-sexp)
;(define-key sp-keymap (kbd "M-p") 'sp-previous-sexp)
(define-key sp-keymap (kbd "M-c") 'sp-select-previous-thing-exchange)
(define-key sp-keymap (kbd "M-s") 'sp-slurp-hybrid-sexp)


;; Hide Block 
(global-set-key (kbd "C-c h t") 'hs-toggle-hiding)
(global-set-key (kbd "C-c h s") 'hs-show-all)
(global-set-key (kbd "C-c h h") 'hs-hide-all)


(provide 'keyboard)
