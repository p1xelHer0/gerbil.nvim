;;; This file has no shebang nor mode line
;;; It should therefore act as a normal Scheme file


;;;   TODO
;;; - Conditionally load `scheme/highlights.scm` based on `b.is_gerbil`
;;; - Can

;; `:Inspect` to verify the symbols below
;; `def` should link to `@function`, not `@keyword
;; The `lambda` should not be concealed - see TODO
(def t1
  (lambda (x y z)
    (* x y z)))
