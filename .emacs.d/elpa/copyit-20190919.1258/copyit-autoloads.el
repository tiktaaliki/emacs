;;; copyit-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "copyit" "copyit.el" (0 0 0 0))
;;; Generated autoloads from copyit.el

(autoload 'copyit-variable "copyit" "\
Copy pretty-printed value `SYMBOL's variable.
Copy quoted string if `FLIP-BARE-STRING' is non-NIL.

\(fn SYMBOL &optional FLIP-BARE-STRING)" t nil)

(autoload 'copyit-file-pathname "copyit" "\
Copy `FILE-PATH'.

\(fn FILE-PATH)" t nil)

(autoload 'copyit-file-content "copyit" "\
Copy `FILE-PATH' content.

\(fn FILE-PATH)" t nil)

(autoload 'copyit-file-exif-information "copyit" "\
Copy exif-information by `FILE-PATH'.

\(fn FILE-PATH)" t nil)

(autoload 'copyit-file-as-data-uri "copyit" "\
Copy `FILE-PATH' content as Data URI format.

\(fn FILE-PATH)" t nil)

(autoload 'copyit-ssh "copyit" "\
Copy ssh file." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "copyit" '("copyit-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; copyit-autoloads.el ends here
