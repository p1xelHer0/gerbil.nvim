fun! s:DetectGerbil()
  if getline(1) =~# '^\(#!.*/bin/env\s\+gxi\>\|;\+ -\*- Gerbil -\*-\)'
    let b:is_gerbil = 1
  endif
endfun

autocmd BufNewFile,BufRead * call s:DetectGerbil()
