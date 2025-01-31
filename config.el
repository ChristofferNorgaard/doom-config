;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!
(setq doom-font (font-spec :family "ComicCode Nerd Font"))
;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Documents/N - notes/NO - Org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(setq org-roam-directory "~/Documents/N - notes/NR - Org roam")
(load "~/.doom.d/texmathp.el")
(load "~/.doom.d/frames-only-mode.el")
(setq frames-only-mode t)
(use-package yasnippet
  :config
  (setq yas-snippet-dirs '("~/.doom.d/yasnippet/"))
  (yas-global-mode 1)
  (add-to-list 'yas-key-syntaxes 'yas-longest-key-from-whitespace)
(defun my-yas-try-expanding-auto-snippets ()
    (when (and (eq evil-state 'insert) (and (boundp 'yas-minor-mode) yas-minor-mode))
      (let ((yas-buffer-local-condition ''(require-snippet-condition . auto)))
        (yas-expand))))
  (add-hook 'post-command-hook #'my-yas-try-expanding-auto-snippets)
  (add-hook! org-mode (yas-activate-extra-mode 'latex-mode)))

(defun my/org-tab-conditional ()
  (interactive)
  (if (yas-active-snippets)
      (yas-next-field-or-maybe-expand)
    (org-cycle)))

(map! :after evil-org
      :map evil-org-mode-map
      :i "<tab>" #'my/org-tab-conditional)

(remove-hook 'doom-first-buffer-hook #'smartparens-global-mode) ;; to dissable () completeing

(with-eval-after-load "ispell"
  ;; Configure `LANG`, otherwise ispell.el cannot find a 'default
  ;; dictionary' even though multiple dictionaries will be configured
  ;; in next line.
  (setenv "LANG" "en_US.UTF-8")
  (setq ispell-program-name "hunspell")
  ;; Configure German, Swiss German, and two variants of English.
  (setq ispell-dictionary "sl_SI,en_US")
  ;; ispell-set-spellchecker-params has to be called
  ;; before ispell-hunspell-add-multi-dic will work
  (ispell-set-spellchecker-params)
  (ispell-hunspell-add-multi-dic "sl_SI,en_US")
  ;; For saving words to the personal dictionary, don't infer it from
  ;; the locale, otherwise it would save to ~/.hunspell_de_DE.
  (setq ispell-personal-dictionary "~/.hunspell_personal"))

;; The personal dictionary file has to exist, otherwise hunspell will
;; silently not use it.
(use-package! anki-editor)
(setq anki-editor-latex-style 'mathjax)
(setq +latex-viewers '(pdf-tools))
(use-package! zotra)
(setq zotra-default-bibliography "~/Documents/N - notes/NR - Org roam/References/main.bib")

(defun prompt-for-url ()
  "Prompt user for a URL and return it."
  (read-string "Enter URL: "))

(defvar archivebox-data-dir "~/Documents/N - notes/NR - Org roam/References/Archive"
  "Directory where archivebox data is stored.")

(defvar archivebox-process-buffer "*archivebox-output*"
  "Buffer name for archivebox process output.")

(defun process-url-with-zotra-and-archive (url)
  "Process URL with zotra-add-entry and archivebox asynchronously.
Argument URL is the URL to process."
  (interactive
   (list (prompt-for-url)))

  ;; Call zotra-add-entry with the URL
  (zotra-add-entry url)

  ;; Create or get buffer for output
  (let ((output-buffer (get-buffer-create archivebox-process-buffer)))
    ;; Clear the buffer
    (with-current-buffer output-buffer
      (erase-buffer))

    ;; Execute command asynchronously
    (let* ((default-directory archivebox-data-dir)
           (process (start-process "archivebox-process"
                                 output-buffer
                                 "/usr/bin/env"
                                 "archivebox"
                                 "add"
                                 url)))

      ;; Set process sentinel to handle completion
      (set-process-sentinel
       process
       (lambda (proc event)
         (cond
          ((string-match "finished" event)
           (message "Archivebox finished processing URL: %s" url))
          ((string-match "exited abnormally" event)
           (message "Error processing URL: %s" url)
           (display-buffer archivebox-process-buffer)
           (with-current-buffer archivebox-process-buffer
             (goto-char (point-max))
             (insert (format "\nProcess ended with error: %s\n" event)))))))

      ;; Log the command to buffer (will only be seen if there's an error)
      (with-current-buffer output-buffer
        (goto-char (point-max))
        (insert (format "\nProcessing URL: %s\n" url))
        (insert (format "Command: archivebox add %s\n\n" url)))

      (message "Started processing URL: %s" url))))

(setq calendar-week-start-day 1)

;; Load org-ref and its dependencies
(use-package org-ref
  :ensure t
  :config
  ;; Set the bibliography path
  (setq bibtex-completion-bibliography '("~/Documents/N - notes/NR - Org roam/References/main.bib")
        bibtex-completion-library-path '("~/Documents/N - notes/NR - Org roam/References/pdfs/")
        bibtex-completion-notes-path "~/Documents/N - notes/NR - Org roam/References/notes/"

        ;; Configure org-ref
        org-ref-bibliography-notes "~/Documents/N - notes/NR - Org roam/References/notes/"
        org-ref-default-bibliography '("~/Documents/N - notes/NR - Org roam/References/main.bib")
        org-ref-pdf-directory "~/Documents/N - notes/NR - Org roam/References/pdfs/"))
