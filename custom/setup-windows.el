;;; setup-windows --- Set key-bindings that enable faster window switching

;;; Commentary:
;; Use M-right/left to move right and left between the visible windows

;;; Code:

;; Changes to the window to the right
(global-unset-key (kbd "<M-right>"))
(global-set-key (kbd "<M-right>") (lambda () "Changes focus to the next window" (interactive) (other-window 1)))


;; Changes to the window to the left
(global-unset-key (kbd "<M-left>"))
(global-set-key (kbd "<M-left>") (lambda () "Changes focus to the previous window" (interactive) (other-window -1)))

(provide 'setup-windows)
;;; setup-windows.el ends here
