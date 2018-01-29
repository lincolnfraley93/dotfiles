" add syntax highlighting 
syntax on

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
au BufNewFile,BufRead * setlocal fo-=cr

" highlight 'this' keyword
hi ThisKeywordGroup ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE
match ThisKeywordGroup /this/
