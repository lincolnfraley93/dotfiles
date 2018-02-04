" add syntax highlighting 
syntax on

" Sets filetype detection, plugin, and indent 
filetype indent plugin on

set termguicolors

" show partial command in last line of screen
set sc

" ignore case when searching
set smartcase
set ignorecase

" show line number and use relative line number
set number
set rnu

" allows modified buffers to be hidden
set hidden

" on newline, don't continue comments
aug disable_comments
  au!
  au BufNewFile,BufRead * setlocal fo-=cr
aug END

" highlight 'this' keyword
hi ThisKeywordGroup ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE
match ThisKeywordGroup /this/

" ignored directories
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*,*/ios/*,*/android/*

" create file as soon as it's edited
fun! CreateFile()
  if 'nerdtreebuffergator' =~ &ft
    return
  endif
  :write
endfun

aug create_file
  au!
  au BufNewFile * call CreateFile()
aug END

" automatically source the changes to vimrc when saved and closed
aug reload_vimrc 
  au!
  au BufWritePost $MYVIMRC source $MYVIMRC
  au BufWritePost *.vimrc source $MYVIMRC
aug END

" wrap lines
set linebreak
set wrap
set breakindent
