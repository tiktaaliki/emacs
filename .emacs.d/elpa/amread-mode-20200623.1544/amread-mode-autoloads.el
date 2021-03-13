;;; amread-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "amread-mode" "amread-mode.el" (0 0 0 0))
;;; Generated autoloads from amread-mode.el

(autoload 'amread-start "amread-mode" "\
Start / resume amread." t nil)

(autoload 'amread-stop "amread-mode" "\
Stop amread." t nil)

(autoload 'amread-mode "amread-mode" "\
I'm reading mode.

If called interactively, enable Amread mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "amread-mode" '("amread-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; amread-mode-autoloads.el ends here
