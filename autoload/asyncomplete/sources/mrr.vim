"=============================================================================
" File: mrr.vim
" Author: Tsuyoshi CHO
" Created: 2022-11-28
"=============================================================================

scriptencoding utf-8

function! asyncomplete#sources#mrr#completor(opt, ctx) abort
  let l:typed = a:ctx['typed']
  let l:col = a:ctx['col']

  let l:kw = matchstr(l:typed, '\w\+$')
  let l:kwlen = len(l:kw)
  let l:startcol = l:col - l:kwlen

  let l:cache = mr#mrr#list()

  call filter(l:cache, {v -> match(v.word, '\c^' . escape(l:kw, '\')) != -1})

  call asyncomplete#complete(a:opt['name'], a:ctx, l:startcol, l:cache)
endfunction

function! asyncomplete#sources#mrr#get_source_options(opts) abort
  return extend(extend({}, a:opts), {})
endfunction

" EOF
