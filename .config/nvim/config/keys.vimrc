" map leader and local leader 
let mapleader=","
let maplocalleader="\\"

" close file  
nnoremap <leader>q :q<CR>

" write file
noremap <Leader>w :w<CR>

" cursor movment
noremap ; l
noremap l k
noremap k j
noremap j h

" switch back to normal mode
inoremap jk <ESC>

" indent 
noremap < <<
noremap > >>

" go to beginning and end of line
noremap K ^
noremap L $

" Convert word to uppercase while in insert mode
inoremap <leader>u <esc>viwUA

" paste with correct indentation
nnoremap p p=`]

" open vimrc from any vim buffer by typing leader key and then vimrc
nnoremap <leader>ev :e $MYVIMRC<cr>

" open ~/.eslintrc in vertical split
nnoremap <leader>esrc :vs ~/.eslintrc<cr>

" move between windows
nnoremap <C-K> <C-W><C-J>
nnoremap <C-J> <C-W><C-H>
nnoremap <C-L> <C-W><C-K>
nnoremap <C-P> <C-W><C-L>

" go to end of line in insert mode
inoremap <c-a> <esc>A

" cycle through buffers
nnoremap <leader>d :bprevious<cr>
nnoremap <leader>s :bnext<cr>
