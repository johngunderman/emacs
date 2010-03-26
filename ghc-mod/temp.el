(setq load-path (cons "." load-path))
(defun ghc-compile () (mapcar (lambda (x) (byte-compile-file x)) (list 
"ghc.el" "ghc-func.el" "ghc-doc.el" "ghc-comp.el" "ghc-flymake.el"
)))
