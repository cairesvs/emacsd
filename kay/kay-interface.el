;; Always show the matching parenthesis
(show-paren-mode 1)

;; Blink the cursor for easy tracking
(blink-cursor-mode 1)

;; Number the windows for easy access (alt-#)
;(window-numbering-mode 1)

;; Show both line and column number
(column-number-mode 1)

;; Keep track of windows layouts, to easily get
;; back to the previous one
(winner-mode 1)

;; Always have off menu-bar.
(menu-bar-mode 0)

;; Don't make backup files.
(setq make-backup-files nil)
(auto-save-mode 0)

;; Font size
(set-face-attribute 'default nil :height 90)

(provide 'kay-interface)
