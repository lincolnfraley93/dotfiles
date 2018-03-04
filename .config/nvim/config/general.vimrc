" add syntax highlighting 
syntax enable

" Sets filetype detection, plugin, and indent 
filetype plugin indent on

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

" ignored directories
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*,*/ios/*,*/android/*,*/.build/*,*/elm-stuff/*

" create file as soon as it's edited
fun! CreateFile()
  if 'nerdtreebuffergator' =~ &ft
    return
  endif
  write
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
set breakindentopt+=shift:2

set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set autoindent
set expandtab

set updatetime=100

" mouse support
set mouse=a
