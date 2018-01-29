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

" Go to end of line in insert mode
inoremap <leader>a <esc>A

" switch back to normal mode
inoremap jk <ESC>

" indent 
noremap < <<
noremap > >>

" go to beginning and end of line
noremap K ^
noremap L $

" add new line above and below and return to normal mode
noremap oo o<ESC>
noremap OO O<ESC>

" remove highlighting 
nnoremap <leader>noh :noh<cr>

" run python, typescript, and node
nnoremap <Leader>ns :!npm start<cr>
"nnoremap <Leader>tsn :!ts-node --type-check %<cr>
nnoremap <leader>py :!python %<cr>

" Convert word to uppercase while in insert mode
inoremap <leader>u <esc>viwUA

" Quickly insert an empty new line without entering insert mode
nnoremap oo o<ESC>

" paste with correct indentation
nnoremap p p=`]

" open vimrc from any vim buffer by typing leader key and then vimrc
nnoremap <leader>ev :e $MYVIMRC<cr>

" automatically source the changes to vimrc when saved and closed
aug reload_vimrc 
  autocmd!
  autocmd BufWritePost ~/.vimrc source ~/.vimrc
aug END

" open easygrep
nnoremap <Leader>g :Grep 

" vim-fugitive
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit<CR>

" open ~/.eslintrc in vertical split
nnoremap <leader>esrc :vs ~/.eslintrc<cr>

" reset ctrlp cache
map <leader>C :CtrlPClearCache<cr>

" Use a leader instead of the actual named binding
nnoremap <leader>t :CtrlP<cr>

" move between windows
nnoremap <C-K> <C-W><C-J>
nnoremap <C-J> <C-W><C-H>
nnoremap <C-L> <C-W><C-K>
nnoremap <C-P> <C-W><C-L>

