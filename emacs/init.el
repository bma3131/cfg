(add-to-list 'load-path "~/.emacs.d/load")

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
;(add-to-list 'default-frame-alist '(fullscreen . maximized))
(global-linum-mode 1)
(setq inhibit-startup-screen t)
(setq column-number-mode t)
(auto-fill-mode -1)
(defalias 'yes-or-no-p 'y-or-n-p)

(setq-default fill-column 80)
(global-display-fill-column-indicator-mode 1)

(add-to-list 'default-frame-alist '(font . "Consolas" ))
(set-face-attribute 'default t :font "Consolas" )
(set-face-attribute 'default nil :height 100)
(set-fontset-font "fontset-default" 'cyrillic "DejaVu Sans Mono 11")
(set-fontset-font "fontset-default" 'greek "DejaVu Sans Mono 11")

;(setq backup-directory-alist '(("." . "C:\\Users\\bma\\.emacs-backups")))
;(setq backup-by-copying t)
(setq auto-save-default nil)
(setq make-backup-files nil)

(setq explicit-shell-file-name "c:\\windows\\system32\\WindowsPowerShell\\v1.0\\powershell.exe")
(setq explicit-powershell.exe-args '("-Command" "-" ))
;(autoload 'powershell "powershell" "Run powershell as a shell within emacs." t) 

 (require 'mule)
