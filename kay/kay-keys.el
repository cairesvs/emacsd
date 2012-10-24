(global-set-key [f5] 'copy-region-as-kill) ; Copy
(global-set-key [f6] 'kill-region)         ; Cut
(global-set-key [f7] 'yank)                ; Paste 
(global-set-key [kp-subtract] 'undo) ; [Undo] 
(global-set-key "\C-l" 'goto-line) ; [Ctrl]-[L] 
(global-set-key "\C-cf" 'find-name-dired)
(global-set-key (kbd "RET")         'newline-and-indent)
(global-set-key (kbd "C-<f4>")      'kill-buffer-and-window)
(global-set-key (kbd "<delete>")    'delete-char)  ; delete == delete  
(global-set-key (kbd "C-c d")        'magit-status) ; git status
(windmove-default-keybindings 'meta)

(provide 'kay-keys)