;;; deft-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "deft" "../../../../../.emacs.d/elpa/deft-20160610.1739/deft.el"
;;;;;;  "ac4f56ff5e01e9129e12447199a9c2d2")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/deft-20160610.1739/deft.el

(autoload 'deft-find-file "deft" "\
Find FILE interactively using the minibuffer.
FILE must exist and be a relative or absolute path, with extension.
If FILE is not inside `deft-directory', fall back to using `find-file'.

\(fn FILE)" t nil)

(autoload 'deft-new-file "deft" "\
Create a new file quickly.
Use either an automatically generated filename or the filter string if non-nil
and `deft-use-filter-string-for-filename' is set.  If the filter string is
non-nil and title is not from filename, use it as the title.

\(fn)" t nil)

(autoload 'deft "deft" "\
Switch to *Deft* buffer and load files.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/deft-20160610.1739/deft-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/deft-20160610.1739/deft.el")
;;;;;;  (22762 37239 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; deft-autoloads.el ends here
