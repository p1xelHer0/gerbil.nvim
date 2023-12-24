;;; extends

;;; Reference: https://github.com/mighty-gerbils/gerbil/blob/master/etc/gerbil-mode.el
;;;
;;;   TODO
;;; - Learn more about Gerbil so I can write more TODOs.
;;; - Conditionally load this based on `b:is_gerbil` - right now we load it for
;;;   every Scheme file.

;;; -*- Operators -*-----------------------------------------------------------

;;   TODO
;; - Gotta find them all.
;; - I guess this is things like `.` and `::`? What more operators do we have?
;;
;; matches `symbol`
;; in the form `symbol` - that is any symbol whatsoever
((symbol) @operator
 (#match? @operator "^()$"))


;;; -*- Keywords -*------------------------------------------------------------

;;   TODO
;; - Missing _a lot_ of keywords.
;; - There are probably some symbols here that should be moved to
;;   @function.builtin
;;
;; matches `symbol`
;; in the form `(symbol ...)`
(list
  .
  (symbol) @keyword
  (#match? @keyword "^(import|export|declare|include|module|extern|cond-expand|require|provide|if|apply|eval|set!|when|unless|not|case-lambda|core-syntax-case|core-ast-case|syntax-case|ast-case|ast-rules|identifier-rules|core-match|with-syntax|with-syntax\\*|with-ast|with-ast\\*|call/cc|call/values|begin-syntax|begin-annotation|begin0|let-values|letrec-values|letrec\\*-values|letrec\\*|rec|quote|quasiquote|unquote|unquote-splicing|parameterize|syntax-parameterize|quote-syntax|syntax|quasisyntax|unsyntax|unsyntax-splicing|syntax/loc|def|def\\*|define-values|define-alias|alet|alet\\*|error|raise|let/cc|let/esc|unwind-protect|begin-foreign|begin-ffi|cut|with|with\\*|match|match\\*|sync|wait|foldl|foldr|andmap|ormap|type-of|spawn|spawn\\*|spawn/name|spawn/group|try|finally|catch|with-destroy|while|until|defmethod/alias|with-methods|with-class-methods|with-class-method|hash|hash-eq|hash-eqv|let-hash|assert!|awhen|chain|is|continue|yield|coroutine|for|for\\*|for/collect|for/fold|with-result|run-tests!|test-suite|test-case|check|checkf|check-eq\\?|check-not-eq\\?|check-eqv\\?|check-not-eqv\\?|check-equal\\?|check-not-equal\\?|check-output|check-predicate|check-exception|<-|<<|->|->>|-->|-->\\?)$"))

;;   TODO
;; -
;;
;; Matches `symbol`
;; in the form `(symbol (...))`
(list
  .
  (symbol) (list) @keyword ; this doesn't work, yet
  (#match? @keyword "^(defvalues)$"))


;;; -*- Builtins -*------------------------------------------------------------

;; TODO
;; - What do we consider a builtin? Things that are part of the core language
;;   but not a keyword, like `foldl`?
;;
;; Matches `symbol`
;; in the form `(symbol ...)`
(list
  .
  (symbol) @function.builtin
  (#match? @function.builtin "^()$"))


;;; -*- Type -*----------------------------------------------------------------

;;   TODO
;; - I found these under the `font-lock-type-face` in the Emacs gerbil-mode.
;;   Does that mean that we want to link them to @type?
;;
;; Matches `symbol`
;; in the form `(symbol ...)`
(list
  .
  (symbol) @type
  (#match? @type "^(deftype|defstruct|defclass|defmessage|interface|deferror-class|defstruct-type|defclass-type|defproto)$"))


;;; -*- Conceals -*------------------------------------------------------------

;; Pretty lambda
;; Conceal `lambda (x)` into `λ (x)`
((list
  .
  (symbol) @keyword
  (#match? @keyword "lambda"))
    (#set! conceal "λ"))


;;; -*- Plugins -*-------------------------------------------------------------

;; rainbow-delimiters.nvim
;; Disable rainbow-delimiters in S-expression comments `#;(...)`
((comment (list) @comment)
  (#set! "priority" 130))
