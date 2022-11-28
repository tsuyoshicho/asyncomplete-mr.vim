"=============================================================================
" File: mru.vim
" Author: Tsuyoshi CHO
" Created: 2022-11-28
"=============================================================================

scriptencoding utf-8

function! asyncomplete#sources#mru#completor(opt, ctx) abort
  let l:typed = a:ctx['typed']
  let l:col = a:ctx['col']

  let l:kw = matchstr(l:typed, '\f*$')
  let l:kwlen = len(l:kw)
  let l:startcol = l:col - l:kwlen

  let l:cache = mr#mru#list()

  call filter(l:cache, {idx, v -> match(v, '\c^' . escape(l:kw, '\')) != -1})
  call map(l:cache, {idx, v -> {'dup' : 1, 'icase' : 1, 'menu' : '[mru]', 'word': v}})

  call asyncomplete#complete(a:opt['name'], a:ctx, l:startcol, l:cache)
endfunction

function! asyncomplete#sources#mru#get_source_options(opts) abort
  return extend(extend({}, a:opts), {})
endfunction

" EOF
