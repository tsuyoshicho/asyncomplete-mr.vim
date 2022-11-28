"=============================================================================
" File: asyncomplete-mr.vim
" Author: Tsuyoshi CHO
" Created: 2022-11-28
"=============================================================================

scriptencoding utf-8

if exists('g:loaded_asyncomplete-mr')
    finish
endif
let g:loaded_asyncomplete-mr = 1

let s:save_cpo = &cpo
set cpo&vim



let &cpo = s:save_cpo
unlet s:save_cpo
