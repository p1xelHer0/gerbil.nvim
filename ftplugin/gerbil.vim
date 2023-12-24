if !exists('b:is_gerbil')
  finish
endif

if exists('b:did_ftplugin_gerbil')
  finish
endif

"""   TODO
""" - I am not even sure if I know what `lispwords` does. :D
""" - Missing keywords here.
""" - Investigate indentation rules.
setl lispwords+=def,def*
setl lispwords+=import,export,declare,include
setl lispwords+=module,extern,cond-expand,require,provide
setl lispwords+=if,apply,eval,set!
setl lispwords+=when,unless,not
setl lispwords+=case-lambda
setl lispwords+=core-syntax-case,core-ast-case
setl lispwords+=syntax-case,ast-case,ast-rules
setl lispwords+=identifier-rules
setl lispwords+=core-match
setl lispwords+=with-syntax,with-syntax*
setl lispwords+=with-ast,with-ast*
setl lispwords+=call/cc,call/values
setl lispwords+=begin-syntax,begin-annotation,begin0
setl lispwords+=let-values,letrec-values,letrec*-values
setl lispwords+=letrec*,rec
setl lispwords+=quote,quasiquote,unquote,unquote-splicing
setl lispwords+=parameterize,syntax-parameterize
setl lispwords+=quote-syntax
setl lispwords+=syntax,quasisyntax,unsyntax,unsyntax-splicing
setl lispwords+=syntax/loc
setl lispwords+=define-values,define-alias
setl lispwords+=alet,alet*
setl lispwords+=error,raise
setl lispwords+=let/cc,let/esc
setl lispwords+=unwind-protect
setl lispwords+=begin-foreign,begin-ffi
setl lispwords+=cut
setl lispwords+=with,with*
setl lispwords+=match,match*
setl lispwords+=sync,wait
setl lispwords+=foldl,foldr,andmap,ormap
setl lispwords+=type-of
setl lispwords+=spawn,spawn*,spawn/name,spawn/group
" sugar
setl lispwords+=try,finally,catch,with-destroy
setl lispwords+=while,until,defmethod/alias
setl lispwords+=with-methods,with-class-methods,with-class-method
setl lispwords+=hash,hash-eq,hash-eqv,let-hash,assert!,awhen
setl lispwords+=chain,is
" coroutines
setl lispwords+=continue,yield,coroutine
" iterators
setl lispwords+=for,for*,for/collect,for/fold
" actor messaging
setl lispwords+=<-,<<,->,->>,-->,-->?
setl lispwords+=with-result
" test
setl lispwords+=run-tests!,test-suite,test-case
setl lispwords+=check,checkf,check-eq?,check-not-eq?,check-eqv?
setl lispwords+=check-not-eqv?,check-equal?,check-not-equal?
setl lispwords+=check-output,check-predicate,check-exception

let b:did_ftplugin_gerbil = 1
