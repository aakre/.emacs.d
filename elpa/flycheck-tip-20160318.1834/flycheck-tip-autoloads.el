;;; flycheck-tip-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (eclim-tip-cycle-reverse eclim-tip-cycle) "eclim-tip"
;;;;;;  "eclim-tip.el" (22269 32450 259982 727000))
;;; Generated autoloads from eclim-tip.el

(autoload 'eclim-tip-cycle "eclim-tip" "\


\(fn &optional REVERSE)" t nil)

(autoload 'eclim-tip-cycle-reverse "eclim-tip" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (error-tip-cycle-dwim-reverse error-tip-cycle-dwim)
;;;;;;  "error-tip" "error-tip.el" (22269 32450 255982 727000))
;;; Generated autoloads from error-tip.el

(autoload 'error-tip-cycle-dwim "error-tip" "\
Showing error function.
This function switches proper error showing function by context.
 (whether flycheck or flymake) The REVERSE option jumps by inverse if
the value is non-nil.

\(fn &optional REVERSE)" t nil)

(autoload 'error-tip-cycle-dwim-reverse "error-tip" "\
Same as ‘error-tip-cycle-dwim’, but it jumps to inverse direction.

\(fn)" t nil)

;;;***

;;;### (autoloads (flycheck-tip-cycle-reverse flycheck-tip-cycle)
;;;;;;  "flycheck-tip" "flycheck-tip.el" (22269 32450 239982 727000))
;;; Generated autoloads from flycheck-tip.el

(autoload 'flycheck-tip-cycle "flycheck-tip" "\
Move to next error if it's exists.
If it wasn't exists then move to previous error.
Move to previous error if REVERSE is non-nil.

\(fn &optional REVERSE)" t nil)

(autoload 'flycheck-tip-cycle-reverse "flycheck-tip" "\
Do `flycheck-tip-cycle by reverse order.

\(fn)" t nil)

;;;***

;;;### (autoloads (flymake-tip-cycle-reverse flymake-tip-cycle) "flymake-tip"
;;;;;;  "flymake-tip.el" (22269 32450 243982 727000))
;;; Generated autoloads from flymake-tip.el

(autoload 'flymake-tip-cycle "flymake-tip" "\


\(fn REVERSE)" t nil)

(autoload 'flymake-tip-cycle-reverse "flymake-tip" "\


\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("flycheck-tip-pkg.el") (22269 32450 267563
;;;;;;  28000))

;;;***

(provide 'flycheck-tip-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; flycheck-tip-autoloads.el ends here
