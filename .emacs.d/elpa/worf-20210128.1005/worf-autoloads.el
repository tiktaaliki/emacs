;;; worf-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "worf" "worf.el" (0 0 0 0))
;;; Generated autoloads from worf.el

(autoload 'worf-mode "worf" "\
Minor mode for navigating and editing `org-mode' files.

If called interactively, enable Worf mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp, also
enable the mode if ARG is omitted or nil, and toggle it if ARG is
`toggle'; disable the mode otherwise.

When `worf-mode' is on, various unprefixed keys call commands
if the (looking-back \"^*+\") is true.

\\{worf-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'worf-archive "worf" nil t nil)

(autoload 'worf-archive-and-commit "worf" nil t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "worf" '("ac-trigger-commands" "company-begin-commands" "hydra-" "org-extract-archive-file" "worf-")))

;;;***

;;;### (autoloads nil nil ("elpa.el" "worf-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; worf-autoloads.el ends here