(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
'(inhibit-startup-screen t)
'(haskell-program-name "/usr/local/bin/ghci")
)
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(setq haskell-program-name "/usr/bin/ghci")
;; start emacsclient server at startup
(server-start)



;; auto-install script
(add-to-list 'load-path (expand-file-name "~/elisp"))
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")


;; git-emacs
(add-to-list 'load-path (expand-file-name "~/emacs/git-emacs"))
(require 'git-emacs)


;; icicles
(add-to-list 'load-path (expand-file-name "~/emacs/icicles"))
(require 'icicles)


;; allow copy-paste with external programs 
(setq x-select-enable-clipboard t)

(tool-bar-mode -1) ;turn off the toolbar.

(delete-selection-mode t)  ;delete a selection with a keypress


;; load this for Haskell mode
(add-to-list 'load-path (expand-file-name "~/haskell-mode"))
(load "~/emacs/haskell-mode/haskell-site-file.el")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(add-hook 'haskell-mode-hook 'font-lock-mode)
(require 'inf-haskell)
(put 'scroll-left 'disabled nil)


;; org-mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
