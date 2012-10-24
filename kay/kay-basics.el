(require 'magit) ; git
(require 'golden-ratio) ; arrumando proporção de tela
(require 'paren) (show-paren-mode t)

(setq cua-enable-cua-keys nil)           ;; only for rectangles
(cua-mode t)
(global-auto-revert-mode t)
(golden-ratio-enable) ; habilitando golden ratio

(setq ac-ignore-case nil)
(mouse-avoidance-mode 'jump)             
(delete-selection-mode 1)                
(setq search-highlight t                 ;; highlight when searching... 
  query-replace-highlight t)             ;; ...and replacing
(fset 'yes-or-no-p 'y-or-n-p)            ;; enable y/n answers to yes/no 
(setq completion-ignore-case t           ;; ignore case when completing...
  read-file-name-completion-ignore-case t) ;; ...filenames tools
(set-input-method nil)                   ; no funky input for normal editing;
(size-indication-mode t)                 ;; show file size (em

(setq x-select-enable-clipboard t        ;; copy-paste should work ...
  interprogram-paste-function            ;; ...with...
  'x-cut-buffer-or-selection-value)      ;; ...other X clients
		      
(setq x-select-enable-clipboard t)

(setq inhibit-startup-message t          ;; don't show ...    
  inhibit-startup-echo-area-message t)   ;; ... startup messages
(setq require-final-newline t)           ;; end files with a newline

(setq auto-mode-alist (cons '("\\.sass" . css-mode) auto-mode-alist))

(provide 'kay-basics)