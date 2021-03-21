(add-to-list 'load-path "~/.emacs.d/load")

(require 'package)
;(add-to-list 'package-archives
;             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(require 'evil)
;(evil-mode 1)

(require 'evil-vimish-fold)

(require 'mule)

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
;(add-to-list 'default-frame-alist '(fullscreen . maximized))
(global-linum-mode 1)
(setq inhibit-startup-screen t)
(setq column-number-mode t)
(auto-fill-mode -1)
(defalias 'yes-or-no-p 'y-or-n-p)
(global-evil-vimish-fold-mode 1)

(setq-default fill-column 80)
(global-display-fill-column-indicator-mode 1)

(add-to-list 'default-frame-alist '(font . "Source Code Pro 10" ))
(set-face-attribute 'default t :font "Source Code Pro 10" )
(set-fontset-font "fontset-default" 'cyrillic "DejaVu Sans Mono 10")
(set-fontset-font "fontset-default" 'greek "DejaVu Sans Mono 10")

;(setq backup-directory-alist '(("." . "C:\\Users\\bma\\.emacs-backups")))
;(setq backup-by-copying t)
(setq auto-save-default nil)
(setq make-backup-files nil)

;(setq explicit-shell-file-name "c:\\windows\\system32\\WindowsPowerShell\\v1.0\\powershell.exe")
;(setq explicit-powershell.exe-args '("-Command" "-" ))
;(autoload 'powershell "powershell" "Run powershell as a shell within emacs." t) 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes '(tsdh-light))
 '(package-selected-packages '(evil-vimish-fold evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
