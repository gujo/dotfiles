(setq column-number-mode t)
(setq tab-width 4)
;;(set-scroll-bar-mode 'right)
(setq fringe-mode 0)
(menu-bar-mode -1)

(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
(defvaralias 'cpython-indent-level 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)


(add-to-list 'load-path "~/.emacs.d/lisp/")

;; yaml-mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(add-hook 'yaml-mode-hook
	  '(lambda ()
	     (define-key yaml-mode-map "\C-m" 'newline-and-indent)))


(require 'puppet-mode)
(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))


(add-to-list 'load-path "~/.emacs.d/lisp/color-theme/")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-tm)))

;;(add-to-list 'load-path "~/.emacs.d/lisp/emacs-color-theme-solarized/")
;;(require 'color-theme-solarized)

;;(add-to-list 'load-path "~/.emacs/lisp/dockerfile-mode.el")
;;(require 'dockerfile-mode)
;;(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))


;; markdown-mode
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.txt\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )
