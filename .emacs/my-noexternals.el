;;;;;;;;;;;;;;;;;;
;;; Add load-path
;;;;;;;;;;;;;;;;;;
; You can add any of your own customized scripts in here.
(add-to-list 'load-path "~/.emacs.d/my-extensions")

;;;;;;;;;;;;;;;;;;
;;; Character code
;;;;;;;;;;;;;;;;;;

;; UTF-8 (set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

;;;;;;;;;;;;;;;;;;
;;; Behavior
;;;;;;;;;;;;;;;;;;

;; Disable startup message
(setq inhibit-startup-message t)

;; Disable to create backup file
(setq make-backup-files nil)

;; Diable to create auto-save files
(setq auto-save-default nil)

;; Disable to autos-save list files
(setq auto-save-list-file-prefix nil)

;; Enlight the opposite cursor
(show-paren-mode 1)

;; Scroll by each line
(setq scroll-conservatively 1)

;; Modify the " yes or no " => " y or n "
(fset 'yes-or-no-p 'y-or-n-p)

;; Disable beep and flash
(setq ring-bell-function 'ignore)

;; Enlight Trailing white space

;; Chagne option to meta
(setq mac-option-modifier 'meta)

;; Deleting traring space and blank lines
(add-hook 'before-save-hook 'delete-trailing-whitespace 'delete-blank-lines)

;; Word ( line ) wrap
(global-visual-line-mode t)
(setq-default word-wrap t)

;;;;;;;;;;;;;;;;;;
;;; Design
;;;;;;;;;;;;;;;;;;

;; Disable pop up frames
(setq ns-pop-up-frames nil)

;; Disable menu bar
(menu-bar-mode -1)

;; Turn off toolbar
(if window-system
        (tool-bar-mode 0))

;; Theme
;; (load-theme 'manoj-dark t)
(defun color-theme-all-hallows-eve ()
(interactive)
(color-theme-install
 '(color-theme-all-hallows-eve
   ((background-color . "#070707")
    (background-mode . dark)
    (cursor-color . "#73597E")
    (foreground-color . "#fff"))
   (default ((t nil)))
   (bold ((t (:bold t))))
   (bold-italic ((t (:italic t :bold t))))
   (font-lock-builtin-face ((t (:foreground "white"))))
   (font-lock-comment-face ((t (:foreground "#9933CC" :italic t))))
   (font-lock-constant-face ((t (:foreground "#3387CC"))))
   (font-lock-doc-string-face ((t (:foreground "red"))))
   (font-lock-function-name-face ((t (:foreground "white"))))
   (font-lock-keyword-face ((t (:foreground "#CC7833"))))
   (font-lock-preprocessor-face ((t (:foreground "#CC7833"))))
   (font-lock-reference-face ((t (:foreground "red"))))
   (font-lock-string-face ((t (:foreground "#66CC33"))))
   (font-lock-type-face ((t (:foreground "red" :italic t))))
   (font-lock-variable-name-face ((t (:foreground "white"))))
   (font-lock-warning-face ((t (:foreground "red"))))
   (highlight ((t (:background "#222"))))
   (italic ((t (:italic t))))
   (js2-function-param-face ((t (:foreground "white" :italic t))))
   (underline ((t (:underline t)))))))
(color-theme-all-hallows-eve)

;; Change the mini buffer color
(face-spec-set 'minibuffer-prompt
               '((((class color) (background light))
                  (:foreground "cyan"))
                 (t (:foreground "white"
                     :background "brown"))))
;; Mode line shows time
(display-time-mode 1)
(setq display-time-string-forms
      '((propertize (concat " " 24-hours ":" minutes " ")
 		   'face 'egoge-display-time)))

;; Mode line color for active
(set-face-foreground 'mode-line "white")
(set-face-background 'mode-line "Red")

;; Mode line color for inactive
(set-face-foreground 'mode-line-inactive "gray30")
(set-face-background 'mode-line-inactive "gray85")

;; Add color fo mode line for file name
(set-face-attribute 'mode-line-buffer-id nil :foreground "black")

;;;;;;;;;;;;;;;;;;
;;; Keybindings
;;;;;;;;;;;;;;;;;;

;; Wind-move
(global-set-key (kbd "C-c C-j") 'windmove-left)
(global-set-key (kbd "C-c C-k") 'windmove-down)
(global-set-key (kbd "C-c C-l") 'windmove-up)
(global-set-key (kbd "C-c C-;") 'windmove-right)


;;;;;;;;;;;;;;;;;;
;;; Ruby Environment
;;;;;;;;;;;;;;;;;;
(autoload 'ruby-mode "ruby-mode"
	    "Mode for editing ruby source files" t)
(add-to-list 'auto-mode-alist '("\\.rb$latex " . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

;; Xmpfilter
(require 'rcodetools)
(define-key ruby-mode-map (kbd "C-c C-c") 'xmp)

;; smart-compile
(setq compilation-window-height 15) ;; default window height is 16
(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))
