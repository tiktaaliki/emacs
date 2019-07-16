(package-initialize)

(require 'package)
(require 'org-install)
(add-to-list 'load-path "~/Sync/emacs/.emacs.d/lisp/")
(add-to-list 'load-path "~/Sync/emacs/.emacs.d/snippets")
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


;(setq custom-file "~/Sync/emacs/custom.el")

(setq use-package-verbose t)
(setq use-package-always-ensure t)

(eval-when-compile (require 'use-package))

(org-babel-load-file "~/Sync/emacs/settings.org")
;(org-babel-load-file "~/Sync/emacs/gallium.org")
(org-babel-load-file "~/Sync/emacs/pi.org")
