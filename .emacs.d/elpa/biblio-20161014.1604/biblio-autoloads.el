;;; biblio-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "biblio-arxiv" "../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-arxiv.el"
;;;;;;  "6edc1d0ce05a35268c08b6309fbd806a")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-arxiv.el

(autoload 'biblio-arxiv-backend "biblio-arxiv" "\
A arXiv backend for biblio.el.
COMMAND, ARG, MORE: See `biblio-backends'.

\(fn COMMAND &optional ARG &rest MORE)" nil nil)

(add-hook 'biblio-init-hook #'biblio-arxiv-backend)

(autoload 'biblio-arxiv-lookup "biblio-arxiv" "\
Start an arXiv search for QUERY, prompting if needed.

\(fn &optional QUERY)" t nil)

(defalias 'arxiv-lookup 'biblio-arxiv-lookup)

;;;***

;;;### (autoloads nil "biblio-crossref" "../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-crossref.el"
;;;;;;  "e9c779497291ee959549a4f39f4f4fce")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-crossref.el

(autoload 'biblio-crossref-backend "biblio-crossref" "\
A CrossRef backend for biblio.el.
COMMAND, ARG, MORE: See `biblio-backends'.

\(fn COMMAND &optional ARG &rest MORE)" nil nil)

(add-hook 'biblio-init-hook #'biblio-crossref-backend)

(autoload 'biblio-crossref-lookup "biblio-crossref" "\
Start a CrossRef search for QUERY, prompting if needed.

\(fn &optional QUERY)" t nil)

(defalias 'crossref-lookup 'biblio-crossref-lookup)

;;;***

;;;### (autoloads nil "biblio-dblp" "../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-dblp.el"
;;;;;;  "54a261d0e1200b2a28e8e9e243366542")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-dblp.el

(autoload 'biblio-dblp-backend "biblio-dblp" "\
A DBLP backend for biblio.el.
COMMAND, ARG, MORE: See `biblio-backends'.

\(fn COMMAND &optional ARG &rest MORE)" nil nil)

(add-hook 'biblio-init-hook #'biblio-dblp-backend)

(autoload 'biblio-dblp-lookup "biblio-dblp" "\
Start a DBLP search for QUERY, prompting if needed.

\(fn &optional QUERY)" t nil)

(defalias 'dblp-lookup 'biblio-dblp-lookup)

;;;***

;;;### (autoloads nil "biblio-dissemin" "../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-dissemin.el"
;;;;;;  "0097ad5f8cb833660a64ada5f6be26f3")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-dissemin.el

(autoload 'biblio-dissemin-lookup "biblio-dissemin" "\
Retrieve a record by DOI from Dissemin, and display it.
Interactively, or if CLEANUP is non-nil, pass DOI through
`biblio-cleanup-doi'.

\(fn DOI &optional CLEANUP)" t nil)

(defalias 'dissemin-lookup 'biblio-dissemin-lookup)

(autoload 'biblio-dissemin--register-action "biblio-dissemin" "\
Add Dissemin to list of `biblio-selection-mode' actions.

\(fn)" nil nil)

(add-hook 'biblio-selection-mode-hook #'biblio-dissemin--register-action)

;;;***

;;;### (autoloads nil "biblio-doi" "../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-doi.el"
;;;;;;  "68ed5dbf7dc0287c3edb0a9575887473")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-doi.el

(autoload 'doi-insert-bibtex "biblio-doi" "\
Insert BibTeX entry matching DOI.

\(fn DOI)" t nil)

;;;***

;;;### (autoloads nil "biblio-download" "../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-download.el"
;;;;;;  "3320bed3caa4a08e9f81fe71db89073a")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-download.el

(autoload 'biblio-download--register-action "biblio-download" "\
Add download to list of `biblio-selection-mode' actions.

\(fn)" nil nil)

(add-hook 'biblio-selection-mode-hook #'biblio-download--register-action)

;;;***

;;;### (autoloads nil "biblio-hal" "../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-hal.el"
;;;;;;  "6454d4f1c3e5871f26087bfab7b378b6")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-hal.el

(autoload 'biblio-hal-backend "biblio-hal" "\
A HAL backend for biblio.el.
COMMAND, ARG, MORE: See `biblio-backends'.

\(fn COMMAND &optional ARG &rest MORE)" nil nil)

(add-hook 'biblio-init-hook #'biblio-hal-backend)

(autoload 'biblio-hal-lookup "biblio-hal" "\
Start a HAL search for QUERY, prompting if needed.

\(fn &optional QUERY)" t nil)

(defalias 'hal-lookup 'biblio-hal-lookup)

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-arxiv.el"
;;;;;;  "../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-crossref.el"
;;;;;;  "../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-dblp.el"
;;;;;;  "../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-dissemin.el"
;;;;;;  "../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-doi.el"
;;;;;;  "../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-download.el"
;;;;;;  "../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-hal.el"
;;;;;;  "../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio-pkg.el"
;;;;;;  "../../../../../.emacs.d/elpa/biblio-20161014.1604/biblio.el")
;;;;;;  (22762 36825 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; biblio-autoloads.el ends here
