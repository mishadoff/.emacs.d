(require 'codetools)
(require 'commons)
(require 'expand-region)
(require 'company)
(require 'cider)
(require 'move-text)
(require 'clj-refactor)
(require 'smartparens)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GENERAL TWEAKS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; for mac we use command as a meta key
(setq mac-option-key-is-meta nil)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)
(setq mac-command-key-is-meta t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Basic Mode    Prefix C-
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-a") 'beginning-of-line)
(global-set-key (kbd "C-b") 'backward-word)
;; C-c reserved prefix for [Code Mode]
(global-set-key (kbd "C-d") 'delete-char)
(global-set-key (kbd "C-e") 'end-of-line)
(global-set-key (kbd "C-f") 'forward-word)
;; C-g Emacs Escape
(global-set-key (kbd "C-h") 'delete-backward-char)
;; C-ijkl arrows, mapped in karabiner
;; C-mn enter or return, mapped in karabiner
;; C-o available
;; C-p available
;; C-q available
(global-set-key (kbd "C-r") 'replace-regexp)
(global-set-key (kbd "C-s") 'isearch-forward) ;; C-r changes direction
;; C-t reserved for [Tool Mode]
;; C-u ________________________
;; C-v ________________________
;; C-w cut
;; C-x reserved for [Execute Mode]
;; C-y paste
(global-set-key (kbd "C-z") 'undo-tree-undo)
(global-set-key (kbd "C-SPC") 'set-mark-command)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C--") 'er/contract-region)
;; C-[/C-] Global Escape, mapped in karabiner
(global-set-key (kbd "C-.") 'company-complete-common)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Alternative Mode    Prefix C-M-
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-M-a") 'beginning-of-buffer)
;; b
;; c
;; d
(global-set-key (kbd "C-M-e") 'end-of-buffer)
;; f
;; g
;; h
;; ijkl
;; mn
;; o
;; p
;; q
;; r
;; s
;; t
;; u
;; v
;; w
;; x
;; y
(global-set-key (kbd "C-M-z") 'undo-tree-redo)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Code Mode           Prefix C-c
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-c a") 'magit-blame) ;; Press Q to quit
(global-set-key (kbd "C-c b") 'goto-match-paren)
(global-set-key (kbd "C-c c") 'comment-or-uncomment-region)
(global-set-key (kbd "C-c d") 'duplicate-line)
;; C-e
(global-set-key (kbd "C-c f") 'dired-jump)
;; g
;; h
(global-set-key (kbd "C-c i") 'indent-region)
;; j
(global-set-key (kbd "C-c k") 'kill-whole-line)
(global-set-key (kbd "C-c l") 'goto-line)
;; m
;; n
;; o
;; p
;; q
;; r
;; s
;; t
;; u
;; v
(global-set-key (kbd "C-c w") 'whack-whitespace)
;; x
;; y
;; z

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Tool Mode           Prefix C-t
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; TODO

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Execute Mode        Prefix C-x
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-x b") 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x u") 'undo-tree)
(global-set-key (kbd "C-x p") 'dired-jump)
(global-set-key (kbd "C-x q") 'save-buffers-kill-emacs)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x m") 'menu-bar-mode)
(global-set-key (kbd "C-x w") 'browse-url-at-point)
(global-set-key (kbd "C-x C-w") 'open-in-chrome)
(global-set-key (kbd "C-x n") 'ido-switch-buffer)
(global-set-key (kbd "C-x C-n") 'ido-switch-buffer)
(global-set-key (kbd "M-j") 'ace-jump-mode)
(global-set-key (kbd "C-x f") 'ido-find-file)
(global-set-key (kbd "C-x C-r") 'recentf-ido-find-file)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GLOBAL FEATURES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-n") (kbd "C-u 5 C-n"))
(global-set-key (kbd "M-p") (kbd "C-u 5 C-p"))

;; move text
(global-set-key (kbd "<M-up>") 'move-text-up)
(global-set-key (kbd "<M-down>") 'move-text-down)

;; buffer positional switch
(global-set-key (kbd "S-<right>") 'windmove-right)
(global-set-key (kbd "S-<left>") 'windmove-left)
(global-set-key (kbd "S-<up>") 'windmove-up)
(global-set-key (kbd "S-<down>") 'windmove-down)

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
			       (local-set-key (kbd "C-c h h") 'hs-hide-all)))

(define-key cider-mode-map (kbd "C-c M-e") 'cider-eval-expression-at-point-in-repl)
(define-key cider-mode-map (kbd "C-c M-t") 'cider-test-run-tests)
(define-key cider-mode-map (kbd "C-c M-d") 'cider-debug-defun-at-point)
(define-key cider-mode-map (kbd "C-c M-c") 'cider-repl-clear-buffer)
(define-key cider-mode-map (kbd "C-c M-j") 'cider-jack-in-command)
(define-key cider-mode-map (kbd "C-x M-l") 'cider-load-buffer)


;; smartparens

;; TODO REVIEW SMARTPARENS
;;(define-key sp-keymap (kbd "M-b") 'sp-backward-sexp)
;;(adefine-key sp-keymap (kbd "M-u") 'sp-backward-up-sexp)
;;(define-key sp-keymap (kbd "M-d") 'sp-kill-sexp)
;;(define-key sp-keymap (kbd "M-n") 'sp-next-sexp)
;;(define-key sp-keymap (kbd "M-p") 'sp-previous-SEXP)

(define-key sp-keymap (kbd "C-c s s") 'sp-slurp-hybrid-sexp)
(define-key sp-keymap (kbd "C-c s f") 'sp-forward-slurp-sexp)
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


;; Org-Mode ;; Prefix C-o

;; (define-prefix-command 'org-mode-custom-map)
;; (global-set-key (kbd "C-o") 'org-mode-custom-map)

;; (define-key org-mode-custom-map (kbd "f") 'org-forward-element)
;; (define-key org-mode-custom-map (kbd "b") 'org-backward-element)

(add-hook 'org-mode-hook 
          (lambda ()
	    ;; configure own keybinfings
	    (local-set-key (kbd "C-M-k") 'org-move-subtree-down)
	    (local-set-key (kbd "C-M-i") 'org-move-subtree-up)
	    (local-set-key (kbd "C-<down>") 'org-forward-element)
	    (local-set-key (kbd "C-<up>") 'org-backward-element)
	  
	    (local-set-key (kbd "M-<down>") 'org-move-subtree-down)
	    (local-set-key (kbd "M-<up>") 'org-move-subtree-up)

	    ;; prefixed keybindings C-o
	    (local-set-key (kbd "C-o k") 'org-cut-subtree)
	    (local-set-key (kbd "C-o n") 'org-narrow-to-subtree)
	    (local-set-key (kbd "C-o s") 'org-sparse-tree)
	    (local-set-key (kbd "C-o w") 'widen)
	    (local-set-key (kbd "C-o t") 'org-todo)
	    
	    (local-set-key (kbd "C-o e") 'next-error)
	    (local-set-key (kbd "C-o r") 'previous-error)
	    
	    (local-set-key (kbd "M-.") 'org-open-at-point)
	    (local-set-key (kbd "M-,") 'org-mark-ring-goto)))

(provide 'keyboard)
