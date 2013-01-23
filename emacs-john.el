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
 '(c-basic-offset 4)
 '(indent-tabs-mode nil)
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

(put 'narrow-to-region 'disabled nil)

(put 'upcase-region 'disabled nil)

(setq tramp-default-method "ssh")

;; auto-install script
(add-to-list 'load-path (expand-file-name "~/elisp"))
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")


;; git-emacs
(add-to-list 'load-path (expand-file-name "~/emacs/git-emacs"))
(require 'git-emacs)


;; icicles
;(add-to-list 'load-path (expand-file-name "~/emacs/icicles"))
;(require 'icicles)

;; enable icicle- mode by default
;(icy-mode 1)


;; allow copy-paste with external programs
(setq x-select-enable-clipboard t)

(tool-bar-mode -1) ;turn off the toolbar.

(toggle-scroll-bar -1) ;turn off the scroll bar

(delete-selection-mode t)  ;delete a selection with a keypress


;; load this for Haskell mode
(add-to-list 'load-path (expand-file-name "~/emacs/haskell-mode"))
(load "~/emacs/haskell-mode/haskell-site-file.el")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(add-hook 'haskell-mode-hook 'font-lock-mode)
(require 'inf-haskell)
(put 'scroll-left 'disabled nil)


;; load ghc-mod haskell-mode extension
(add-to-list 'load-path (expand-file-name "~/emacs/ghc-mod"))
(autoload 'ghc-init "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))


;; enable the windmove default keybindings.
;; shift + {right, left, etc} moves window focus.
(windmove-default-keybindings)


;; enable iswitchb-mode
;(iswitchb-mode 1)

;; cycle through buffers with Ctrl-Tab (like Firefox)
(global-set-key (kbd "<C-tab>") 'bury-buffer)
(global-set-key (kbd "<C-S-iso-lefttab>") 'unbury-buffer)


;; do not confirm a new file or buffer
 (setq confirm-nonexistent-file-or-buffer nil)
 (require 'ido)
 (ido-mode 1)
 (ido-everywhere 1)
 (setq ido-create-new-buffer 'always)
 (setq ido-enable-tramp-completion nil)
 (setq ido-enable-last-directory-history nil)
 (setq ido-confirm-unique-completion nil) ;; wait for RET, even for unique?
 (setq ido-show-dot-for-dired t) ;; put . as the first item
 (setq ido-enable-flex-matching t)

;; Set up cedet modes.
(load-file "~/emacs/cedet/common/cedet.elc")
(require 'semantic-ia)

(defun my-c-mode-cedet-hook ()
 ;(local-set-key "." 'semantic-complete-self-insert)
 ;(local-set-key ">" 'semantic-complete-self-insert)
 (semantic-load-enable-gaudy-code-helpers)
 (semantic-load-enable-excessive-code-helpers)
 (semantic-load-enable-all-exuberent-ctags-support)
 (global-set-key (kbd "\C-c-") 'senator-fold-tag-toggle)
 (global-semantic-idle-completions-mode))
(add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)




;; set ourselves some nice keybindings:
(global-set-key (kbd "<mouse-7>") 'scroll-left)
(global-set-key (kbd "<mouse-6>") 'scroll-right)


;; Load up YAsnippet
(require 'yasnippet-bundle)

;; Load up our color themes
;(add-to-list 'load-path (expand-file-name "~/emacs/color-theme"))
;(require 'color-theme)
;(color-theme-tango)





;; Load up winner mode (redo-undo for window layouts)
(winner-mode t)

;; Highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#fff")

;; set recent file mode
;;(recentf-mode 1)


;; Include sr-speedbar (inline speedbar)
;; (require 'sr-speedbar)


;; ECB stuff
;;(add-to-list 'load-path (expand-file-name "~/emacs/ecb-2.40"))
;;(require 'ecb)
;;(require 'ecb-autoloads)

(global-set-key (kbd "\C-cj") 'align-regexp)

;; load go-mode stuff
;; (add-to-list 'load-path "/home/john/extern-projects/go/misc/emacs/" t)
;; (require 'go-mode-load)

;; add magit stuff
(add-to-list 'load-path "~/emacs/magit/" t)
(require 'magit)

;; (menu-bar-mode 0)

;; (global-semantic-idle-completions-mode)
;;(global-set-key (kbd "<M-f1>") 'semantic-symref)
;;(global-set-key (kbd "<C-f1>") 'semantic-symref-symbol))


(set-face-background 'hl-line "#444")


(show-paren-mode 1)
(setq-default show-trailing-whitespace t)


;; Use hippie-expand instead of dabbrev
(global-set-key [(meta /)] (make-hippie-expand-function
			    '(try-complete-file-name-partially
			      try-complete-file-name
			      try-expand-all-abbrevs
			      try-expand-list
			      try-expand-line
			      try-expand-dabbrev
			      try-expand-dabbrev-all-buffers
			      try-expand-dabbrev-from-kill
			      try-complete-lisp-symbol-partially
			      try-complete-lisp-symbol) t))

(set-default-font "-*-terminus-*-*-*-*-14-*-*-*-*-*-*-*")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "DarkSlateGray"
                         :foreground "Wheat" :inverse-video nil :box nil :strike-through nil
                         :overline

                         (custom-set-faces
                          '(my-tab-face            ((((class color)) (:background "#306060"))) t))
                         (add-hook 'font-lock-mode-hook
                                   (function
                                    (lambda ()
                                      (setq font-lock-keywords
                                            (append font-lock-keywords
                                                    '(("\t+" (0 'my-tab-face t))))))))
                         )))))


;; some org-mode stuff

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-c'" 'org-cycle-agenda-files)
(setq org-log-done t)

(setq org-todo-keywords
      '((sequence "TODO(t)" "STARTED(s)" "WAIT(w)" "|" "DONE(d)" "CANCELED(c!)")))

(setq org-todo-keyword-faces
      '(("TODO" . org-warning) ("STARTED" . (:foreground "green" :weight bold))
        ("DONE" . (:foreground "purple" :weight bold))
        ("WAIT" . (:foreground "red" :weight bold)) ("CANCELED" . (:foreground "blue" :weight bold))))

(setq org-agenda-files '())
(add-to-list 'org-agenda-files "~/Dropbox/org/" t)


;; Set some nice key mappings
(define-key global-map "\C-cr" 'revert-buffer)
(define-key global-map "\C-cw" 'whitespace-cleanup)

(require 'jinja)

(setq scheme-program-name "racket")
