;;; autothemer-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "autothemer" "../../../../../.emacs.d/elpa/autothemer-20170112.1324/autothemer.el"
;;;;;;  "ed3b133ab685c739d3f92778ccd5d105")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/autothemer-20170112.1324/autothemer.el

(autoload 'autothemer-deftheme "autothemer" "\
Define a theme NAME with description DESCRIPTION.
A color PALETTE can be used to define let*-like
bindings within both the REDUCED-SPECS and the BODY.

\(fn NAME DESCRIPTION PALETTE REDUCED-SPECS &rest BODY)" nil t)

(autoload 'autothemer-generate-templates "autothemer" "\
Autogenerate customizations for all unthemed faces.
Iterate through all currently defined faces, select those that
have been left uncustomized by the most recent call to
`autothemer-deftheme' and generate customizations that best
approximate the faces' current definitions using the color
palette used in the most recent invocation of
`autothemer-deftheme'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/autothemer-20170112.1324/autothemer-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/autothemer-20170112.1324/autothemer.el")
;;;;;;  (22770 49739 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; autothemer-autoloads.el ends here
