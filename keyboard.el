(global-set-key (kbd "M-x") 'smex)

(global-set-key (kbd "<home>") 'beginning-of-buffer)
(global-set-key (kbd "<end>") 'end-of-buffer)

(global-set-key "\C-z" 'undo)

(global-set-key (kbd "C-c c") 'comment-or-uncomment-region)

(global-set-key (kbd "S-<right>") 'windmove-right)
(global-set-key (kbd "S-<left>") 'windmove-left)
(global-set-key (kbd "S-<up>") 'windmove-up)
(global-set-key (kbd "S-<down>") 'windmove-down)

(global-set-key (kbd "C-.") 'complete-symbol)

(global-set-key (kbd "C-x b") 'ibuffer)
(global-set-key (kbd "C-x u") 'undo-tree)
(global-set-key (kbd "C-x q") 'save-buffers-kill-emacs)

;; mode specific keybindings

(add-hook 'nrepl-mode-hook
	  (lambda ()
	    (define-key nrepl-mode-map 
	      (kbd "C-c <deletechar>") 'nrepl-clear-buffer)
	    (define-key nrepl-mode-map
	      (kbd "C-c <pause>") 'nrepl-interrupt)))

(provide 'keyboard)
