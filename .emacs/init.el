;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; el-get : Manage the external elisp bits and pieces upon which you depend! http://tapoueh.org/emacs/el-get.html
;;; https://github.com/dimitri/el-get
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Basic setup for el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

;;; List all package name below you need to install, then el-get automatically install them

;; auto-complete
(el-get-bundle auto-complete)

;; org
(el-get-bundle org)

;; tuareg
(el-get-bundle tuareg)

;; magit
(el-get-bundle magit)

;; nyan mode
(el-get-bundle nyan-mode)
(nyan-mode 1)

;; org-bullets
(el-get-bundle org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; color-theme
(el-get-bundle color-theme)

;; exec-path-from-shell
;; Fixed => Ever find that a command works in your shell, but not in Emacs?
(el-get-bundle exec-path-from-shell)
(when (memq window-system '(mac ns))
   (exec-path-from-shell-initialize))

;;; Ruby
;; smart-compile
(el-get-bundle smart-compile)
(setq compilation-window-height 15) ;; default window height is 16

;; ruby-electric
(el-get-bundle ruby-electric)
(require 'ruby-electric)
(ruby-electric-mode t)
;(setq ruby-electric-expand-delimiters-list nil)

;; ruby-block
(el-get-bundle ruby-block)
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-hook 'after-init-hook '(lambda ()
			      (load "~/.emacs.d/my-noexternals.el")
			      ))
