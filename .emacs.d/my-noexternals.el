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
(setq delete-auto-save-files nil)

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
(load-theme 'manoj-dark t)

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

;;;;;;;;;;;;;;;;;;
;;; Keybindings
;;;;;;;;;;;;;;;;;;

;; Wind-move
(global-set-key (kbd "C-c C-j") 'windmove-left)
(global-set-key (kbd "C-c C-k") 'windmove-down)
(global-set-key (kbd "C-c C-l") 'windmove-up)
(global-set-key (kbd "C-c C-;") 'windmove-right)
