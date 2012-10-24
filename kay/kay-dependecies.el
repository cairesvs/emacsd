; This dependencies module is inspired on Tavis Rudd's emacs.d, and
; Sebastian Cevey blogpost, both of these can be found at:
;
; * http://github.com/tavisrudd/emacs.d
; * http://bytes.inso.cc/2011/08/13/auto-installing-packages-in-emacs-with-elpa-and-el-get/

; Utility function derived from ELPA installation
; +info: http://tromey.com/elpa/install.html
;
(defun eval-url (url)
  (let ((buffer (url-retrieve-synchronously url)))
    (save-excursion
      (set-buffer buffer)
      (goto-char (point-min))
      (re-search-forward "^$" nil 'move)
      (eval-region (point) (point-max))
      (kill-buffer (current-buffer)))))

;;;;;;;;;;;;;;;;;;;;
;; ELPA Config
;;;;;;;;;;;;;;;;;;;;

(defun install-elpa ()
  (eval-url "http://tromey.com/elpa/package-install.el"))

(add-to-list 'load-path "~/.emacs.d/elpa")

(if (require 'package nil t)
  (package-initialize)
    ;;(progn
    ;;  ;; Emacs 24+ includes ELPA, but requires some extra setup
    ;;  ;; to use the (better) mermelade repo
    ;;  (package-initialize)
    ;;  (if (>= emacs-major-version 24)
    ;;      (add-to-list 'package-archives
    ;;                   '("marmalade" . "http://marmalade-repo.org/packages/") t)))
  (install-elpa))

;;;;;;;;;;;;;;;;;;;;
;; el-get Config
;;;;;;;;;;;;;;;;;;;;

(defun install-el-get ()
  (eval-url
   "https://github.com/dimitri/el-get/raw/master/el-get-install.el"))

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

; Ensure installation of el-get, if not there automatically
; install it
(unless (require 'el-get nil t)
  (install-el-get))

;;;;;;;;;;;;;;;;;;;;
;;  Adding Extra sources
;;;;;;;;;;;;;;;;;;;;

(setq el-get-generate-autoloads t
      el-get-sources '(

	(:name window-numbering
         :type git
         :url "https://github.com/nschum/window-numbering.el.git")

        (:name golden-ratio
         :type git
         :url "https://github.com/roman/golden-ratio.el.git")

        (:name winner-mode
         :type emacswiki)

	(:name redo+
	       :type http
	       :url "http://www.emacswiki.org/emacs/download/redo+.el")

        (:name popup
         :type git
         :url "https://github.com/emacsmirror/popup.git")

        (:name auto-complete
         :type git
         :url "https://github.com/emacsmirror/auto-complete.git")

        (:name color-theme-sunburst
         :type git
         :url "https://github.com/roman/Emacs-Sunburst-Color-Theme.git")))

;;;;;;;;;;;;;;;;;;;;
;;- Setting my dependencies
;;;;;;;;;;;;;;;;;;;;

(setq kay-el-get-packages
      '(
       ; OH MEIN GOT! I can't live without dependencies
       package
       magit
       ack
       winner-mode
       window-numbering
       org-mode
       goto-last-change
       golden-ratio
       popup
       auto-complete
       redo+
       ; Color themes dependencies
       color-theme
       color-theme-sunburst
       ))

(el-get 'sync kay-el-get-packages)

(provide 'kay-dependecies)
