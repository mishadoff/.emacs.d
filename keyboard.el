(global-set-key (kbd "M-x") 'smex)

(global-set-key (kbd "<home>") 'beginning-of-buffer)
(global-set-key (kbd "<end>") 'end-of-buffer)

(global-set-key "\C-z" 'undo)

(require 'codetools)
(require 'move-text)

(global-set-key (kbd "C-c c") 'comment-or-uncomment-region)
(global-set-key (kbd "C-c d") 'duplicate-line)
(global-set-key (kbd "C-c f") 'indent-region)
(global-set-key (kbd "C-c l") 'goto-line)


;; Move text
(global-set-key (kbd "<C-S-up>") 'move-text-up)
(global-set-key (kbd "<C-S-down>") 'move-text-down)

(global-set-key (kbd "S-<right>") 'windmove-right)
(global-set-key (kbd "S-<left>") 'windmove-left)
(global-set-key (kbd "S-<up>") 'windmove-up)
(global-set-key (kbd "S-<down>") 'windmove-down)

(global-set-key (kbd "C-.") 'complete-symbol)

;; Global Features

(global-set-key (kbd "C-x b") 'ibuffer)
(global-set-key (kbd "C-x u") 'undo-tree)
(global-set-key (kbd "C-x q") 'save-buffers-kill-emacs)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x z") 'eshell)
(global-set-key (kbd "C-x m") 'menu-bar-mode)
(global-set-key (kbd "C-x w") 'browse-url-at-point)


;; mode specific keybindings

(add-hook 'nrepl-mode-hook
	  (lambda ()
	    (define-key nrepl-mode-map 
	      (kbd "C-c <deletechar>") 'nrepl-clear-buffer)
	    (define-key nrepl-mode-map
	      (kbd "C-c <pause>") 'nrepl-interrupt)))


(add-hook 'slime-repl-mode-hook
	  (lambda ()
	    (define-key slime-repl-mode-map 
	      (kbd "C-c <deletechar>") 'slime-repl-clear-buffer)
	    (define-key slime-repl-mode-map
	      (kbd "C-c <pause>") 'slime-interrupt)))

(provide 'keyboard)
