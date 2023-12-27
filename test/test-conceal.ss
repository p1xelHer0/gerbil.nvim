;;; -*- Gerbil -*-

;;; -*- Conceals -*------------------------------------------------------------

;; Pretty lambda
;; Conceal `lambda (x)` into `λ (x)`
(def t1
  (lambda (x y z)
    (* x y z)))

;; TODO
;; Don't conceal within S-expression comments
#;(def t1
    (lambda (x y z)
      (* x y z)))



;;; -*- Plugins -*-------------------------------------------------------------

;; rainbow-delimiters.nvim
;; Disable rainbow-delimiters in S-expression comments `#;(...)`
#;(def t1
   (lambda (x y z)
     (* x y z)))

; (def t2
;   (lambda (x y z)
;     (* x y z)))
