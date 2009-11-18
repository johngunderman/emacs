(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-battery-mode t)
 '(display-time-mode t)
 '(haskell-program-name "/usr/local/bin/ghci")
 '(indicate-empty-lines t)
 '(inhibit-startup-screen t)
 '(transient-mark-mode t)
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

(toggle-scroll-bar -1) ;turn off the scroll bar

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


;; enable the windmove default keybindings.
;; shift + {right, left, etc} moves window focus.
(windmove-default-keybindings)
