;;; Org-mode --- Custom setup

;;; Commentary:


;;; Code:

;; Handle the sub-list bullets
(setq org-list-demote-modify-bullet
      '(("+" . "-") ("-" . "+") ("*" . "+") ("1." . "-") ))

(provide 'setup-org-mode)

;;; setup-org.el ends here
