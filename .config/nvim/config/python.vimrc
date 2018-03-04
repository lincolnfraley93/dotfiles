aug filetype_python
  au!
  au BufRead,BufNewFile *.py set tabstop=4
        \ softtabstop=4
        \ shiftwidth=4
        \ textwidth=120
        \ expandtab
        \ autoindent
        \ fileformat=unix
        \ smartindent
        \ backspace=indent,eol,start
aug END
