aug filetype_javascript
  au!
  au FileType javascript.jsx set formatprg=prettier\ --stdin
  au FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
  au FileType javascript.jsx set tabstop=2
        \ softtabstop=2
        \ shiftwidth=2
        \ textwidth=79
        \ expandtab
        \ autoindent
        \ fileformat=unix
        \ smartindent
        \ breakindentopt=shift:2
aug END
