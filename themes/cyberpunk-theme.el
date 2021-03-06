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
 '(default ((t (:foreground "#ffffff" :background "#323232" :height 150 :width normal))))
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
 '(font-lock-keyword-face ((t (:foreground "#4c83ff"))))
 '(font-lock-type-face ((t (:foreground "#58E8D0"))))
 '(font-lock-variable-name-face ((t (:foreground "#547B96"))))

 ;; Other

 '(region ((t (:background "gray30" ))))
 '(cursor ((t (:background "#00FF44" ))))

 '(show-paren-match-face ((t (:background "#96CBFE" :foreground "#000000"))))
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

 ;; ORG-mode
 '(org-date ((t (:foreground "#4c83ff" :underline t))))
 '(org-done ((t (:bold t :weight bold :foreground "green"))))
 '(org-todo ((t (:bold t :foreground "red" :weight bold))))

 '(org-level-1 ((t (:foreground "#4c83ff" :height 1.2))))
 '(org-level-2 ((t (:foreground "#547B96"))))
 '(org-level-3 ((t (:foreground "#D975EB"))))
 '(org-level-4 ((t (:foreground "#4FB86B"))))
 '(org-level-5 ((t (:foreground "#58E8D0"))))
 '(org-level-6 ((t (:foreground "#99F000"))))
 '(org-level-7 ((t (:foreground "#999999"))))
 '(org-level-9 ((t (:foreground "#8D8D8D"))))

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
 '(vertical-border ((t (:background "#323232" :foreground "gray10"))))
 
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

 ;; '(ac-completion-face ((t (:foreground "darkgray" :underline t))))
 ;; '(ac-candidate-face ((t (:background "gray60" :foreground "black"))))
 ;; '(ac-selection-face ((t (:background "deep pink" :foreground "black"))))
 ;; '(ac-yasnippet-candidate-face ((t (:background "gray60" :foreground "black"))))
 ;; '(ac-yasnippet-selection-face ((t (:background "deep pink" :foreground "black"))))
 '(popup-isearch-match ((t (:background "black" :foreground "deep pink"))))
 '(popup-tip-face ((t (:background "gray10" :foreground "white"))))
 '(popup-scroll-bar-foreground-face ((t (:background "#0A0A0A"))))
 '(popup-scroll-bar-background-face ((t (:background "#"))))

 '(window-number-face ((t (:background "grey10" :foreground "#4c83ff"))))

 '(yas/field-highlight-face ((t (:background "deep pink" :foreground "black"))))

 ;; Interactive

 '(ido-first-match ((t (:foreground "#33FFCC" :background "#323232"))))
 '(ido-only-match ((t (:foreground "#33FFCC" :background "#323232"))))
 '(ido-subdir ((t (:foreground "gray60" :background "#323232"))))
 '(ido-indicator ((t (:foreground "black" :background "deep pink"))))

 '(match ((t (:foreground "#33FFCC" :background "#323232"))))
 '(minibuffer-prompt ((t (:foreground "#00FF00" :background "#323232"))))


 '(grep-match-face ((t (:foreground "black" :background "deep pink"))))
 '(grep-hit-face ((t (:foreground "black" :background "red"))))
 '(grep-context-face ((t (:foreground "black" :background "deep pink"))))

 ;; Rainbow delimiters
 
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#8D8D8D"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#8D8D8D"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#8D8D8D"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#8D8D8D"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#8D8D8D"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#8D8D8D"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#8D8D8D"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#8D8D8D"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#8D8D8D"))))
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


 '(company-tooltip ((t (:background "#222222"))))
 '(company-scrollbar-bg ((t (:background "#393939"))))
 '(company-scrollbar-fg ((t (:background "#292929"))))

 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 
)


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'cyberpunk)
