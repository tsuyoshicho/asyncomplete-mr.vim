"=============================================================================
" File: mrr.vim
" Author: Tsuyoshi CHO
" Created: 2022-11-28
"=============================================================================

scriptencoding utf-8

function! asyncomplete#sources#mrr#completor(opt, ctx) abort
  call asyncomplete#mr#util#completor_helper(a:opt, a:ctx, 'mrr', mr#mrr#list())
endfunction

function! asyncomplete#sources#mrr#get_source_options(opts) abort
  return extend(extend({}, a:opts), {})
endfunction

" EOF
