;;; org-super-links-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-super-links" "org-super-links.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from org-super-links.el

(autoload 'sl-store-link "org-super-links" "\
Store a point to the register for use in function `sl-insert-link'.
This is primarily intended to be called before `org-capture', but
could possibly even be used to replace `org-store-link' IF
function `sl-insert-link' is used to replace `org-insert-link'.  This
has not been thoroughly tested outside of links to/form org files.
GOTO and KEYS are unused.

\(fn &optional GOTO KEYS)" t nil)

(advice-add 'org-capture :before 'sl-store-link)

(autoload 'sl-insert-link "org-super-links" "\
Insert a super link from the register." t nil)

(autoload 'sl-link "org-super-links" "\
Insert a link and add a backlink to the target heading." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-super-links" '("sl-")))

;;;***

;;;### (autoloads nil "org-super-links-org-ql" "org-super-links-org-ql.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from org-super-links-org-ql.el

(add-to-list 'helm-org-ql-actions '("Super Link" . sl-insert-link-org-ql-action) t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-super-links-org-ql" '("sl-")))

;;;***

;;;### (autoloads nil "org-super-links-org-rifle" "org-super-links-org-rifle.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from org-super-links-org-rifle.el

(add-to-list 'helm-org-rifle-actions '("Super Link" . sl-insert-link-rifle-action) t)

(add-to-list 'helm-org-rifle-actions '("Super Link" . sl-insert-link-rifle-action) t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-super-links-org-rifle" '("sl-")))

;;;***

;;;### (autoloads nil nil ("org-super-links-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-super-links-autoloads.el ends here
