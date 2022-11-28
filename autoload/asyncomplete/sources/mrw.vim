"=============================================================================
" File: mrw.vim
" Author: Tsuyoshi CHO
" Created: 2022-11-28
"=============================================================================

scriptencoding utf-8

function! asyncomplete#sources#mrw#completor(opt, ctx) abort
  call asyncomplete#sources#mr#util#completor_helper(a:opt, a:ctx, 'mrw', mr#mrw#list())
endfunction

function! asyncomplete#sources#mrw#get_source_options(opts) abort
  return extend(extend({}, a:opts), {})
endfunction

" EOF
