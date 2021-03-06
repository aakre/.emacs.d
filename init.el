;;; Package --- summary: Custom initialization file based on http://tuhdo.github.io/emacs-tutor3.html
;;; Commentary:
;; Get help C-h f/v/a

;;; Code:
(package-initialize)

;; Bring dead keys back to life
(require 'iso-transl)

;; Remove splash screen
(setq inhibit-startup-screen t)

(add-hook 'text-mode-hook 'turn-on-auto-fill)


;; Set buffer width
(set-fill-column 80)

;; Add custom directory to the load path
(add-to-list 'load-path "~/.emacs.d/custom")

;; Load all files in the custom directory
(mapc 'load (directory-files "~/.emacs.d/custom" t ".*\.el"))

;; I'm lazy, y or n is enough
(defalias 'yes-or-no-p 'y-or-n-p)


;; Add line numbers in programming mode
;;(add-hook 'prog-mode-hook 'linum-mode)


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
(require 'setup-org-mode)
(require 'plantuml-mode)

;; Associate .dot files with plantuml-mode
(add-to-list 'auto-mode-alist '("\\.dot\\'" . plantuml-mode))


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

;; Lets you incrementally expand a region
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



;; File browser
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-window-width '35)


;; Latex
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(setq TeX-PDF-mode t)
(add-hook 'LaTeX-mode-hook 'auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)

(provide 'init)
;;; init.el ends here

;; Function template

;; (defun function-name (arguments...)
;;   "documentation"
;;   (interactive argument-passing-info) ; optional
;;   body...
;;   )
