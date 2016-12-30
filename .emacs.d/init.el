;; Miscellaneous settings
;; ----------------------
;;
(setq-default inhibit-startup-screen t
              initial-scratch-message nil
              frame-title-format '(buffer-file-name "%f" "%b")
              truncate-lines t
              default-truncate-lines t
              font-lock-use-fonts '(or (mono) (grayscale))
              font-lock-use-colors '(color)
              font-lock-maximum-decoration t
              font-lock-maximum-size nil
              font-lock-auto-fontify t
              global-font-lock-mode t
              paren-mode 'sexp
              show-paren-mode t
              blink-cursor-alist '((t . hollow))
              user-full-name "Allele Dev"
              user-mail-address "allele.dev@gmail.com"
              query-user-mail-address nil
              display-warning-minimum-level 'error
              disabled-command-function nil
              delete-key-deletes-forward t
              kill-read-only-ok t
              column-number-mode t
              line-number-mode t
              tab-width 2
              indent-tabs-mode nil
              c-default-style "linux"
              c-basic-offset 2
              page-delimiter "^\\s *\n\\s *"
              minibuffer-max-depth nil
              toolbar-print-function 'ps-print-buffer-with-faces
              ps-line-number t
              ps-n-up-printing 2
              ps-print-color-p nil
              fill-column 80
              initial-major-mode 'text-mode
              display-time-day-and-date t
              case-fold-search t
              buffers-menu-sort-function 'sort-buffers-menu-by-mode-then-alphabetically
              buffers-menu-grouping-function 'group-buffers-menu-by-mode-then-alphabetically
              buffers-menu-submenus-for-groups-p t
              buffers-tab-filter-functions nil
              ispell-program-name "aspell"
              linum-format "%d "
              )

;; Clean Startup
;; -------------
;; I got tired of deleting the scratch and warning buffers that alway appear
;; after startup.  I prefer a clean, blank window when I begin.  This should
;; kill them after startup.
;;
(add-hook 'after-init-hook
          (lambda ()
            (let ((warnings (get-buffer "*Warnings*")))
              (if (not (equal warnings nil))
                  (kill-buffer warnings))))
          t)

;; Text Settings
;; -------------
;; Basic, fundamental text mode settings.
;;
(add-hook 'text-mode-hook
          (lambda ()
            (auto-fill-mode t)))

;; ============================================================================
;; External E-Lisp Packages
;; ============================================================================

(add-to-list 'load-path "~/.emacs.d/elisp")
(load-theme 'tango-dark)
