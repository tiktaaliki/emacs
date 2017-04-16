org-ref-cite-types

(key-chord-define-global "kk" 'org-ref-cite-hydra/body)

(setf (cdr (assoc 'org-mode bibtex-completion-format-citation-functions)) 'org-ref-format-citation)

(setq org-latex-prefer-user-labels t)

(add-hook 'org-ref-clean-bibtex-entry-hook 'org-ref-replace-nonascii)

(setq org-latex-pdf-process
      '("pdflatex -interaction nonstopmode -output-directory %o %f"
	"bibtex %b"
	"pdflatex -interaction nonstopmode -output-directory %o %f"
	"pdflatex -interaction nonstopmode -output-directory %o %f")

(setq org-ref-completion-library 'org-ref-ivy-cite)
(require 'org-ref)

(require 'doi-utils)

doi-utils-pdf-url-functions

(doi-utils-get-pdf-url "10.1021/jp511426q")

(add-to-list 'org-ref-bibtex-journal-abbreviations
  '("JIR" "Journal of Irreproducible Research" "J. Irrep. Res."))

(add-to-list 'org-ref-nonascii-latex-replacements
  '("Ã¦" . "{\\\\ae}"))

(bibtex-map-entries 'org-ref-title-case-article)

(setq org-ref-bibtex-hydra-key-binding "\C-cj")

(key-chord-define-global "jj" 'org-ref-bibtex-hydra/body)

(require 'org-ref-wos)

(require 'org-ref-scopus)

(require 'org-ref-isbn)

(require 'org-ref-pubmed)

(require 'org-ref-arxiv)

(require 'org-ref-sci-id)

(require 'x2bib)

(setq reftex-default-bibliography '("~/Dropbox/bibliography/references.bib"))

(setq org-ref-bibliography-notes "~/Dropbox/bibliography/notes.org"
      org-ref-default-bibliography '("~/Dropbox/bibliography/references.bib")
      org-ref-pdf-directory "~/Dropbox/bibliography/bibtex-pdfs/")

(setq org-ref-completion-library 'org-ref-ivy-cite)

(defun my/org-ref-open-pdf-at-point ()
  "Open the pdf for bibtex key under point if it exists."
  (interactive)
  (let* ((results (org-ref-get-bibtex-key-and-file))
         (key (car results))
         (pdf-file (funcall org-ref-get-pdf-filename-function key)))
    (if (file-exists-p pdf-file)
        (find-file pdf-file)
      (message "No PDF found for %s" key))))

(setq org-ref-open-pdf-function 'my/org-ref-open-pdf-at-point)

(defun my/org-ref-open-pdf-at-point ()
  "Open the pdf for bibtex key under point if it exists."
  (interactive)
  (let* ((results (org-ref-get-bibtex-key-and-file))
         (key (car results))
	 (pdf-file (car (bibtex-completion-find-pdf key))))
    (if (file-exists-p pdf-file)
	(org-open-file pdf-file)
      (message "No PDF found for %s" key))))

(setq org-ref-open-pdf-function 'my/org-ref-open-pdf-at-point)

(setq org-ref-open-pdf-function 'org-ref-get-mendeley-filename)

(setq bibtex-dialect 'biblatex)

(setq  org-latex-pdf-process
       '("latexmk -shell-escape -bibtex -pdf %f"))

(require 'org-ref-wos)
(require 'org-ref-scopus)
(require 'org-ref-pubmed)

(org-open-file (org-latex-export-to-pdf))

(browse-url (org-html-export-to-html))
