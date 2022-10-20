;;Emacs setup file

;;Disable startup message
(setq inhibit-startup-message t)

;;Disable menu-bar
(menu-bar-mode -1)

;;Disable scroll-bar
(scroll-bar-mode -1)

;;Disable tool-bar
(tool-bar-mode -1)

;;Get some breathing room
(set-fringe-mode 10)

(set-face-attribute 'default nil :font "Fira Code Retina")

;;Theme
(load-theme 'solarized-dark t)

;; Full screen
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;;Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;;Line numbers
(column-number-mode)
(global-display-line-numbers-mode t)

;;Disable line numbers on some modes
(dolist (mode '(org-mode-hook
		term-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;;Packages

;;Initialize package source
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))



;; Initialize use-package on non-linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package command-log-mode)


(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("TAB" . ivy-alt-done)	
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))
;;icons-in-terminal
;;(add-to-list 'load-path "/home/martin/.local/share/icons-in-terminal/")
;;(require 'icons-in-terminal)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(ccls lsp-java rust-mode lsp-mode swiper command-log-mode ivy all-the-icons doom-modeline solarized-theme cmake-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
