" Markdown preview
nnoremap <buffer> <Leader>m :w!<CR>:!markdown "%" \| smartypants > "%".html && open "%".html<CR><CR>
