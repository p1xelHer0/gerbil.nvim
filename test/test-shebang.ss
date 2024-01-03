#!/usr/bin/env gxi
;;; This file has a Gerbil shebang
;;; It should therefore act as a Gerbil file


;; `:Inspect` to verify the symbols below
;; `def` should link to `@keyword`, not `@function
;; The `lambda` should be concealed if `set conceallevel=2`
(def t1
  (lambda (x y z)
    (* x y z)))
