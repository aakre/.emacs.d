;;; Package --- summary: Custom initialization file based on http://tuhdo.github.io/emacs-tutor3.html
;;; Commentary:
;; Get help C-h f/v/a

;;; Code:
(package-initialize)

;; Remove splash screen
(setq inhibit-startup-screen t)


;; Set buffer width
(set-fill-column 80)

;; Add custom directory to the load path
(add-to-list 'load-path "/home/olaa/.emacs.d/custom")

;; Load all files in the custom directory
(mapc 'load (directory-files "/home/olaa/.emacs.d/custom" t ".*\.el"))

;; I'm lazy, y or n is enough
(defalias 'yes-or-no-p 'y-or-n-p)


;; Add line numbers in programming mode
(add-hook 'prog-mode-hook 'linum-mode)


;; Removes the freakisly accessible kill-emacs key binding
(global-unset-key (kbd "C-x C-c"))
(global-set-key (kbd "C-x r q") 'save-buffers-kill-emacs)


;; Add MELPA package manager
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)



;; ;;;;;;;;;;;;;;;;;;
;; ;; Load modules ;;           
;; ;;;;;;;;;;;;;;;;;;
(require 'setup-editing)
(require 'setup-programming)
(require 'setup-faces-and-ui)


;;;;;;;;;;;;;;;;;;;
;; Load packages ;;           
;;;;;;;;;;;;;;;;;;;

(require 'smartparens-config)
(setq sp-base-key-bindings 'paredit)
(setq sp-autoskip-closing-pair 'always)
(setq sp-hybrid-kill-entire-symbol nil)
(sp-use-paredit-bindings)


;; Highlights undos etc
(require 'volatile-highlights)
(volatile-highlights-mode t)


;; Cleans up whitespaces when moving between lines
(require 'clean-aindent-mode)
(add-hook 'prog-mode-hook 'clean-aindent-mode)


(require 'undo-tree)
(global-undo-tree-mode)


;; Expands snippets, like FOR + tab gives loop constructor
(require 'yasnippet)
(yas-global-mode 1)


(require 'expand-region)
(global-set-key (kbd "M-m") 'er/expand-region)


;; Explore filesystem
(require 'ztree-dir)
(global-set-key (kbd "C-x e") 'ztree-dir)


;; nyan mode
(case window-system
  ((x w32) (nyan-mode)))


;;(add-to-list 'custom-theme-load-path "/home/olaa/.emacs.d/emacs-color-theme-solarized")
;;(set-frame-parameter nil 'background-mode 'dark)
;;(load-theme 'solarized t)
(load-theme 'zenburn t)


(require 'neotree)
(global-set-key [f8] 'neotree-toggle)



