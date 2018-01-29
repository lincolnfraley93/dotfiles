aug filetype_javascript
  au!
  au FileType javascript vnoremap <buffer> <localleader>c <esc>`<i{/*<esc>`>a*/}<esc>
  au Filetype javascript nnoremap <buffer> <localleader>c I//<esc>
  au FileType javascript onoremap <buffer> i' :<c-u>normal! T'hvt'l<cr>
  au FileType javascript set formatprg=prettier\ --stdin
  au FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
aug END

au BufNewFile,BufRead *.js:
      \ set tabstop=2
      \ set softtabstop=2
      \ set shiftwidth=2
      \ set autoindent
