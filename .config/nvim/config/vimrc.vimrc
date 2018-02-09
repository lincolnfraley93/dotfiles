" Vimscript file settings ---------- {{{{
augroup filetype_vim:
  au!
  au FileType vim setl foldmethod=marker
  au FileType vim nnoremap <buffer> <leader>so :so %<cr>
  au Filetype vim set tabstop=2 
        \ softtabstop=2
        \ tabstop=2
        \ softtabstop=2
        \ shiftwidth=2
        \ expandtab
        \ autoindent
        \ fileformat=unix
        \ smartindent
augroup END
" }}}}
