(require 'redo+) ; redo bombado

(global-set-key [(meta backspace)] 'undo-redo) 
		      
(defun undo-redo (arg)
  "Undo or redo changes.  If ARG is present or negative, redo ARG
   changes.  If ARG is positive, repeatedly undo ARG changes."
   (interactive "P") 
      (if (null arg) 
          (undo)     
       (let ((n (prefix-numeric-value arg)))
         (cond ((= n 0) (redo))
	         ((< n 0) (redo (- n)))
	         ((> n 0) (undo n))))))

(provide 'kay-redo)