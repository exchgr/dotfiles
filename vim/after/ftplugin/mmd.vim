" Markdown preview
nnoremap <buffer> <Leader>m :w!<CR>:!multimarkdown --smart -t html -o "%".html "%" && open "%".html<CR><CR>
