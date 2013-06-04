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
 '(default ((t (:background "black" :foreground "light gray"))))
 '(blue ((t (:foreground "blue"))))
 '(bold ((t (:bold t))))
 '(bold-italic ((t (:bold t))))
 '(border-glyph ((t (nil))))
 '(buffers-tab ((t (:background "#0C1021" :foreground "#F8F8F8"))))
 
 '(font-lock-builtin-face ((t (:foreground "#FF6400"))))
 '(font-lock-comment-face ((t (:italic t :foreground "#8B8989"))))
 '(font-lock-constant-face ((t (:foreground "#4c83ff"))))
 '(font-lock-doc-string-face ((t (:foreground "DarkOrange"))))
 '(font-lock-function-name-face ((t (:foreground "deep pink"))))
 '(font-lock-keyword-face ((t (:foreground "#FBDE2D"))))
 '(font-lock-preprocessor-face ((t (:foreground "gray57"))))
 '(font-lock-reference-face ((t (:foreground "medium slate blue"))))
 '(font-lock-reference-face ((t (:foreground "gray"))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "#E9C062"))))
 '(font-lock-regexp-grouping-construct ((t (:foreground "red"))))
 '(font-lock-string-face ((t (:foreground "#61CE3C"))))
 '(font-lock-type-face ((t (:foreground "#D8FA3C"))))
 '(font-lock-variable-name-face ((t (:foreground "#D8FA3C"))))
 '(font-lock-warning-face ((t (:bold t :foreground "Pink"))))

 '(gui-element ((t (:background "gray10" :foreground "#96CBFE"))))
 '(region ((t ( :background "#7F073F"))))
 '(mode-line ((t (:background "gray10" :foreground "#4c83ff"))))
 '(mode-line-inactive ((t (:background "gray10" :foreground "gray30"))))

 '(highlight ((t (:background "DarkOrange"))))
 '(isearch ((t (:background "deep pink" :foreground "black"))))
 '(isearch-fail ((t (:background "red4"))))
 '(lazy-highlight ((t (:background "yellow" :foreground "black"))))
 '(next-error ((t (:background "deep pink" :foreground "black"))))
 '(query-replace ((t (:background "gray10"))))
 '(Highline-face ((t (:background "SeaGreen"))))
 '(hl-line ((t (:background "gray10"))))
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

 '(show-paren-match-face ((t (:background "deep pink" :foreground "black"))))

 '(ido-first-match ((t (:foreground "deep pink" :background "black"))))
 '(ido-only-match ((t (:foreground "deep pink" :background "black"))))
 '(ido-subdir ((t (:foreground "gray60" :background "black"))))
 '(ido-indicator ((t (:foreground "black" :background "deep pink"))))

 '(match ((t (:foreground "deep pink" :background "blackn"))))
 '(minibuffer-prompt ((t (:foreground "#61CE3C" :background "black"))))
 '(grep-match-face ((t (:foreground "black" :background "deep pink"))))
 '(grep-hit-face ((t (:foreground "black" :background "red"))))
 '(grep-context-face ((t (:foreground "black" :background "deep pink"))))
 
 '(rainbow-delimiters-depth-1-face ((t (:foreground "dark red"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "dark green"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "deep pink"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "green"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "light blue"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "orange"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "slate blue"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "light gray"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "white"))))


 '(undo-tree-visualizer-active-branch-face ((t (:foreground "deep pink" :background "black"))))
 '(hl-sexp-face ((t (:background "grey9"))))

 '(browse-kill-ring-current-entry-face ((t (:background "gray10"))))

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
