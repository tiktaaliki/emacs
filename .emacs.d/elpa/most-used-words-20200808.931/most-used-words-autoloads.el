;;; most-used-words-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "most-used-words" "most-used-words.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from most-used-words.el

(autoload 'most-used-words-buffer "most-used-words" "\
Show the N (default 3) most used words in the current buffer.

\(fn &optional N)" t nil)

(autoload 'most-used-words-buffer-with-counts "most-used-words" "\
Show with counts the N (default 3) most used words in the current buffer.

\(fn &optional N)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "most-used-words" '("most-used-words-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; most-used-words-autoloads.el ends here
