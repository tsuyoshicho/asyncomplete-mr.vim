"=============================================================================
" File: mru.vim
" Author: Tsuyoshi CHO
" Created: 2022-11-28
"=============================================================================

scriptencoding utf-8

function! asyncomplete#sources#mru#completor(opt, ctx) abort
  call asyncomplete#mr#util#completor_helper(a:opt, a:ctx, 'mru', mr#mru#list())
endfunction

function! asyncomplete#sources#mru#get_source_options(opts) abort
  return extend(extend({}, a:opts), {})
endfunction

" EOF
