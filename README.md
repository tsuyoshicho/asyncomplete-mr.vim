# asyncomplete-mr.vim

[mr.vim](https://github.com/lambdalisue/mr.vim) source for [asyncomplete.vim](https://github.com/prabirshrestha/asyncomplete.vim) plugin.

## Example

![example 1](https://github.com/tsuyoshicho/asyncomplete-mr.vim/blob/assets/images/example1.gif)

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
