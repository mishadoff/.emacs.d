;; Cyberpunk Colour Theme
;;
;; "and he'd still see the matrix in his sleep, bright lattices of logic
;; unfolding across that colorless void..."
;;
;; William Gibson, Neuromancer.

(deftheme cyberpunk 
  "Cyberpunk theme based on Sam Aaron's cyberpunk.el theme.
   Ported to new emacs theme management.")

(custom-theme-set-faces
 'cyberpunk
 '(default ((t (:foreground "#ffffff" :background "#000000" :height 150 :width normal))))
 '(blue ((t (:foreground "blue"))))
 '(bold ((t (:bold t))))
 '(bold-italic ((t (:bold t))))
 '(border-glyph ((t (nil))))
 '(buffers-tab ((t (:background "#0C1021" :foreground "#F8F8F8"))))

 '(font-lock-builtin-face ((t (:foreground "#D975EB"))))
 '(font-lock-string-face ((t (:foreground "#0DBA19"))))
 '(font-lock-comment-face ((t (:foreground "#999999"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#999999"))))
 '(font-lock-constant-face ((t (:foreground "#58E8D0"))))
 '(font-lock-function-name-face ((t (:foreground "#ffffff"))))
 '(font-lock-keyword-face ((t (:foreground "#5789FF"))))
 '(font-lock-type-face ((t (:foreground "#58E8D0"))))
 '(font-lock-variable-name-face ((t (:foreground "#547B96"))))

 ;; Other

 '(region ((t (:background "gray30" ))))
 '(cursor ((t (:background "#00FF44" ))))

 ;; Not working???
 '(show-paren-match-face ((t (:background "#4FB86B" :foreground "#FFFFFF"))))
 '(show-paren-mismatch-face ((t (:background "#FF0000" ))))

 '(gui-element ((t (:background "gray10" :foreground "#96CBFE"))))
 '(mode-line ((t (:background "gray10" :foreground "#4c83ff"))))
 '(mode-line-inactive ((t (:background "gray10" :foreground "gray30"))))

 ;; Undo-Tree
 '(undo-tree-visualizer-active-branch-face ((t (:foreground "#4c83ff" :background "#000000"))))

 ;; ISearch
 '(isearch ((t (:background "#33FFCC" :foreground "#000000"))))
 '(isearch-fail ((t (:background "#33FFCC" :foreground "#000000"))))
 '(lazy-highlight ((t (:background "#FFFF00" :foreground "#000000"))))
 

;; TODO Configure

 '(highlight ((t (:background "DarkOrange"))))
 '(next-error ((t (:background "deep pink" :foreground "black"))))
 '(query-replace ((t (:background "gray10"))))
 '(Highline-face ((t (:background "SeaGreen"))))
 '(italic ((t (nil))))
 '(left-margin ((t (nil))))
 '(text-cursor ((t (:background "yellow" :foreground "black"))))
 '(toolbar ((t (nil))))
 '(underline ((nil (:underline nil))))
 '(vertical-border ((t (:background "black" :foreground "gray10"))))
 
 '(magit-diff-add ((t (:foreground "green"))))
 '(magit-diff-del ((t (:foreground "red"))))
 '(magit-item-highlight ((t (:background "gray15"))))
 '(magit-section-title ((t (:foreground "deep pink"))))
 '(magit-diff-hunk-header ((t (:foreground "orange"))))
 '(magit-branch ((t (:foreground "gold"))))

 '(eval-sexp-fu-flash ((t (:background "grey15" :foreground "DeepPink3"))))
 '(nrepl-eval-sexp-fu-flash ((t (:background "grey15" :foreground "DeepPink3"))))
 '(nrepl-error-highlight-face ((t (:background "black" :foreground "red" :underline t))))

 ;; TODO Configure AC

 '(ac-completion-face ((t (:foreground "darkgray" :underline t))))
 '(ac-candidate-face ((t (:background "gray60" :foreground "black"))))
 '(ac-selection-face ((t (:background "deep pink" :foreground "black"))))
 '(ac-yasnippet-candidate-face ((t (:background "gray60" :foreground "black"))))
 '(ac-yasnippet-selection-face ((t (:background "deep pink" :foreground "black"))))
 '(popup-isearch-match ((t (:background "black" :foreground "deep pink"))))
 '(popup-tip-face ((t (:background "gray10" :foreground "white"))))
 '(popup-scroll-bar-foreground-face ((t (:background "#0A0A0A"))))
 '(popup-scroll-bar-background-face ((t (:background "gray10"))))

 '(window-number-face ((t (:background "grey10" :foreground "#4c83ff"))))

 '(yas/field-highlight-face ((t (:background "deep pink" :foreground "black"))))

 ;; Interactive

 '(ido-first-match ((t (:foreground "#33FFCC" :background "#000000"))))
 '(ido-only-match ((t (:foreground "#33FFCC" :background "#000000"))))
 '(ido-subdir ((t (:foreground "gray60" :background "black"))))
 '(ido-indicator ((t (:foreground "black" :background "deep pink"))))

 '(match ((t (:foreground "#33FFCC" :background "#000000"))))
 '(minibuffer-prompt ((t (:foreground "#00FF00" :background "#000000"))))


 '(grep-match-face ((t (:foreground "black" :background "deep pink"))))
 '(grep-hit-face ((t (:foreground "black" :background "red"))))
 '(grep-context-face ((t (:foreground "black" :background "deep pink"))))

 ;; Rainbow delimiters
 
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#4D4D4D"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#3B3B3B"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#2A2A2A"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#4D4D4D"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#3B3B3B"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#2A2A2A"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#4D4D4D"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#3B3B3B"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#2A2A2A"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "#FFFFFF" :background "#FF0000"))))

 '(hl-sexp-face ((t (:background "grey9"))))

 '(browse-kill-ring-current-entry-face ((t (:background "gray10"))))

 ;; Markdown settings

 '(markdown-link-face ((t (:foreground "#FBDE2D"))))
 '(markdown-url-face ((t (:foreground "#61CE3C"))))
 '(markdown-bold-face ((t (:foreground "#FF6400"))))
 '(markdown-italic-face ((t (:italic t :foreground "#FF6400"))))
 '(markdown-pre-face ((t (:foreground "#4c83ff"))))
 '(markdown-inline-code-face ((t (:foreground "#4c83ff"))))
 '(markdown-list-face ((t (:foreground "#8B8989"))))

 )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'cyberpunk)
