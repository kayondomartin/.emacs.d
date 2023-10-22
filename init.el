;; do not show the startup message
(setq inhibit-startup-message t)

;; disable the toolbar
(tool-bar-mode -1)

;; disable the menu bar
(menu-bar-mode -1)

;; remove the scroll bar
(scroll-bar-mode -1)

;; highlight current line
(global-hl-line-mode t)

;; For MacOS
(setq mac-command-modifier 'meta)

;; line numbers
(line-number-mode t)
 
;; Use <ESC> to quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; more space
(set-fringe-mode 10)

;;Font and size
(set-face-attribute 'default nil :font "FiraCode Nerd Font" :height 250)

;; theme
(require 'doom-themes)
(load-theme 'doom-acario-dark t)

;; Line numbers
(column-number-mode)
(global-display-line-numbers-mode t)
;;disable line numbers in some modes
(dolist (mode '(org-mode-hook
		term-mode-hook
		shell-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda (0 (display-line-numbers-mode 0)))))

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package command-log-mode)

(use-package counsel
  :bind (("M-x" . counsel-M-x)
	 ("C-x b" . counsel-ibuffer)
	 ("C-x C-f" . counsel-find-file)
	 :map minibuffer-local-map
	 ("C-r" . 'counsel-minibufer-history)))

(use-package ivy-rich
  :init
  (ivy-rich-mode 1))

(use-package ivy :demand
  :diminish
  :bind (("C-s" . swiper)
	 :map ivy-minibuffer-map
	 ("TAB" . ivy-alt-done))
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
	ivy-count-format "%d/%d "))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 1))

;;(use-package doom-themes)
;;(load-theme 'doom-acario-dark)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("dccf4a8f1aaf5f24d2ab63af1aa75fd9d535c83377f8e26380162e888be0c6a9" default))
 '(ispell-dictionary nil)
 '(ivy-mode t)
 '(package-selected-packages
   '(doom-themes rainbow-delimiters doom-modeline counsel ivy command-log-mode use-package cmake-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
