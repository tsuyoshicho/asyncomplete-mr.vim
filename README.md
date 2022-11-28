# asyncomplete-mr.vim

[asyncomplete.vim](https://github.com/prabirshrestha/asyncomplete.vim) plugin for [mr.vim](https://github.com/lambdalisue/mr.vim) source.

## Settings

```vim
" mrr
autocmd User asyncomplete_setup call
\ asyncomplete#register_source(
\   asyncomplete#sources#mrr#get_source_options({
\     'name': 'mrr',
\     'allowlist': ['*'],
\     'completor': function('asyncomplete#sources#mrr#completor'),
\     'priority': 20,
\   }))
" mru
autocmd User asyncomplete_setup call
\ asyncomplete#register_source(
\   asyncomplete#sources#mru#get_source_options({
\     'name': 'mru',
\     'allowlist': ['*'],
\     'completor': function('asyncomplete#sources#mru#completor'),
\     'priority': 20,
\   }))
" mrw
autocmd User asyncomplete_setup call
\ asyncomplete#register_source(
\   asyncomplete#sources#mrw#get_source_options({
\     'name': 'mrw',
\     'allowlist': ['*'],
\     'completor': function('asyncomplete#sources#mrw#completor'),
\     'priority': 20,
\   }))
```
