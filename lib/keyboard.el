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

(global-set-key (kbd "C-z") 'undo-tree-undo)
(global-set-key (kbd "M-z") 'undo-tree-redo)
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
(global-set-key (kbd "C-x C-n") 'ido-switch-buffer)
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
;; it's possible to use jack-in as common functionality for other languages as well
;(global-set-key (kbd "C-c j") 'cider-jack-in)
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
			       (hs-minor-mode 1)
			       ;; keybindings
			       (local-set-key (kbd "RET") 'newline-and-indent)

			       (local-set-key (kbd "C-c h t") 'hs-toggle-hiding)
			       (local-set-key (kbd "C-c h s") 'hs-show-all)
			       (local-set-key (kbd "C-c h h") 'hs-hide-all)

			       
			       ))

(add-hook 'cider-mode-hook (lambda ()
			     ;; keybindings
			     (local-set-key (kbd "C-c t") 'cider-test-run-tests)
			     
			     ))

;; TODO MORE CIDER BINDINGS

;; smartparens

;; TODO REVIEW SMARTPARENS
;;(define-key sp-keymap (kbd "M-b") 'sp-backward-sexp)
;;(adefine-key sp-keymap (kbd "M-u") 'sp-backward-up-sexp)
;;(define-key sp-keymap (kbd "M-d") 'sp-kill-sexp)
;;(define-key sp-keymap (kbd "M-n") 'sp-next-sexp)
;;(define-key sp-keymap (kbd "M-p") 'sp-previous-SEXP)

(define-key sp-keymap (kbd "C-c s s") 'sp-slurp-hybrid-sexp)
(define-key sp-keymap (kbd "C-c s d") 'sp-kill-hybrid-sexp)
(define-key sp-keymap (kbd "C-c s t") 'sp-transpose-sexp)

(define-key sp-keymap (kbd "M-s") 'sp-slurp-hybrid-sexp)
(define-key sp-keymap (kbd "M-d") 'sp-kill-hybrid-sexp)
(define-key sp-keymap (kbd "M-t") 'sp-transpose-sexp)


;; (define-key sp-keymap (kbd "C-c s b") 'sp-forward-barf-sexp)
;; (define-key sp-keymap (kbd "C-c s d") 'sp-kill-hybrid-sexp)
;; (define-key sp-keymap (kbd "C-c s f") 'sp-forward-sexp)
;; (define-key sp-keymap (kbd "C-c s s") 'sp-forward-slurp-sexp)




;; Hide Block 


;; Markdown-mode

(add-hook 'markdown-mode-hook (lambda()
				(local-set-key (kbd "M-n") nil)
				(local-set-key (kbd "M-p") nil)
				))

(provide 'keyboard)


;; Org-Mode ;; Prefix C-o

;; (define-prefix-command 'org-mode-custom-map)
;; (global-set-key (kbd "C-o") 'org-mode-custom-map)

;; (define-key org-mode-custom-map (kbd "f") 'org-forward-element)
;; (define-key org-mode-custom-map (kbd "b") 'org-backward-element)

(add-hook 'org-mode-hook 
          (lambda ()
	    ;; configure own keybinfings
	    (local-set-key (kbd "<C-S-down>") 'org-move-subtree-down)
	    (local-set-key (kbd "<C-S-up>") 'org-move-subtree-up)
	    (local-set-key (kbd "C-<down>") 'org-forward-element)
	    (local-set-key (kbd "C-<up>") 'org-backward-element)
	    (local-set-key (kbd "M-<up>") 'org-up-element)
	    (local-set-key (kbd "M-<down>") 'outline-next-visible-heading)
	    ;; prefixed keybindings C-o
	    (local-set-key (kbd "C-o k") 'org-cut-subtree)
	    (local-set-key (kbd "C-o n") 'org-narrow-to-subtree)
	    (local-set-key (kbd "C-o s") 'org-sparse-tree)
	    (local-set-key (kbd "C-o w") 'widen)
	    
	    (local-set-key (kbd "C-o e") 'next-error)
	    (local-set-key (kbd "C-o r") 'previous-error)

	    (local-set-key (kbd "M-.") 'org-open-at-point)
	    (local-set-key (kbd "M-,") 'org-mark-ring-goto)

	    
	    ))
