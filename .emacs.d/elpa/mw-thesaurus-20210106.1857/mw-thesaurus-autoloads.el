;;; mw-thesaurus-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "mw-thesaurus" "mw-thesaurus.el" (0 0 0 0))
;;; Generated autoloads from mw-thesaurus.el

(autoload 'mw-thesaurus-lookup-dwim "mw-thesaurus" "\
Look up a thesaurus definition on demand using Merriam-Webster online dictionary.
If a region is selected use mw-thesaurus-lookup-word
if a thing at point is not empty use mw-thesaurus-lookup-word-at-point
otherwise as for word using mw-thesaurus-lookup-word" t nil)

(autoload 'mw-thesaurus-lookup-at-point "mw-thesaurus" "\
Look up a thesaurus definition for word at point using Merriam-Webster online dictionary.

\(fn WORD-POINT)" t nil)

(autoload 'mw-thesaurus-lookup "mw-thesaurus" "\
Look up a thesaurus definition for word using Merriam-Webster online dictionary.
`BEGINNING' and `END' correspond to the selected text with a word to look up.
If there is no selection provided, additional input will be required.

\(fn &optional BEGINNING END)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "mw-thesaurus" '("mw-thesaurus-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; mw-thesaurus-autoloads.el ends here
