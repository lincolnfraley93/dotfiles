let mapleader=","
let maplocalleader="\\"
nnoremap <leader>q :q<CR>
filetype plugin indent on
set termguicolors
set showcmd
set tabstop=2
set shiftwidth=2
set expandtab
set smartcase
set ignorecase
set noshowmode
set noruler
set laststatus=0
set noshowcmd
set linebreak
set wrap
set breakindent
set breakindentopt+=shift:2
syntax on

set encoding=utf-8

set number
set rnu

" Go to end of line in insert mode
inoremap <leader>a <esc>A
noremap ; l
noremap l k
noremap k j
noremap j h

inoremap jk <ESC>

noremap < <<
noremap > >>

noremap K ^
noremap L $
noremap oo o<ESC>
noremap OO O<ESC>

noremap <Leader>w :w<CR>

noremap <Space> i_<ESC>r

noremap <Leader>v "*p

nnoremap <leader>noh :noh<cr>

noremap <Leader>p "0p

nnoremap <Leader>ns :!npm start<cr>
"nnoremap <Leader>tsn :!ts-node --type-check %<cr>
nnoremap <leader>py :!python %<cr>

" Convert word to uppercase while in insert mode
inoremap <leader>u <esc>viwUA

" Quickly insert an empty new line without entering insert mode
nnoremap oo o<ESC>
nnoremap OO O<ESC>

" paste with correct indentation
nnoremap p p=`]
nnoremap <c-p> p

set nocompatible              " required
filetype off                  " required

call dein#begin(expand('~/.vim/dein')) " plugins' root path
"call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {
    \ 'build': {
    \     'windows': 'tools\\update-dll-mingw',
    \     'cygwin': 'make -f make_cygwin.mak',
    \     'mac': 'make -f make_mac.mak',
    \     'linux': 'make',
    \     'unix': 'gmake',
    \    },
    \ })
call dein#add('Shougo/unite.vim')

call dein#add('easymotion/vim-easymotion')
call dein#add('junegunn/fzf.vim')
call dein#add('dracula/vim')
call dein#add('dkprice/vim-easygrep')
call dein#add('pangloss/vim-javascript')
call dein#add('mxw/vim-jsx')
call dein#add('elzr/vim-json')
call dein#add('vim-airline/vim-airline')
call dein#add('tpope/vim-fugitive')
call dein#add('neovimhaskell/haskell-vim')
call dein#add('jiangmiao/auto-pairs')
call dein#add('alvan/vim-closetag')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('jeetsukumaran/vim-buffergator')
call dein#add('vim-scripts/AutoComplPop')
call dein#add('leafgarland/typescript-vim')
call dein#add('Valloric/MatchTagAlways')
call dein#add('w0rp/ale')
call dein#add('chrisbra/NrrwRgn')
call dein#add('wesQ3/vim-windowswap')
call dein#add('Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' })
call dein#add('ervandew/supertab')
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')
call dein#add('ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install' })
call dein#add('carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] })
call dein#add('othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] })
call dein#add('scrooloose/NERDTree')
call dein#add('othree/javascript-libraries-syntax.vim')

call dein#end()
call dein#save_state()
filetype plugin indent on


colorscheme dracula

" open vimrc from any vim buffer by typing leader key and then vimrc
nnoremap <leader>ev :e $MYVIMRC<cr>

" automatically source the changes to vimrc when saved and closed
aug reload_vimrc 
    autocmd!
    autocmd BufWritePost ~/.vimrc source ~/.vimrc
aug END

" Switch tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" vim-javascript
let g:jsx_ext_required = 0

" command-t
set wildignore+=*/node_modules/*
set wildignore+=*/ios/*
set wildignore+=*/android/*
set wildignore+=*/assets/*

"vim-easygrep settings
let g:EasyGrepRecursive=1
let g:EasyGrepFilesToExclude=".git,node_modules,ios,android,package-lock.json,assets,npm-debug.log"
let g:EasyGrepCommand=1
let g:EasyGrepJumpToMatch=0

" open search
nnoremap <Leader>g :Grep 


" powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set encoding=utf-8
set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly
let g:airline_powerline_fonts=1

" vim-fugitive
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit<CR>

nnoremap <Leader>eslintrc :tabe ~/.eslintrc<CR>

" haskell-vim
let g:haskell_indent_case = 2

" vim-closetag
let g:closetag_filenames = "*.html,*.xhtml,*.jsx,*.js"

" auto-pairs
let g:AutoPairsShortcutFastWrap = '<C-e>'
let g:AutoPairsShortcutJump = '<C-n>'

" Functions
fun! PullAndRefresh()
  set noconfirm
  !git pull
  bufdo e!
  set confirm
endfun

nnoremap <Leader>gp call PullAndRefresh()

" This allows buffers to be hidden if you've modified a buffer
set hidden

" vim-airline
" control which sections get truncated and at what width
let g:airline#extensions#default#section_truncate_width = {
      \ 'a': 45,
      \ 'b': 45,
      \ 'x': 60,
      \ 'y': 88,
      \ 'z': 80,
      \ 'warning': 80,
      \ 'error': 80,
      \}

let g:airline_section_y = ''
let g:airline_section_warning = ''

" ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules\android\ios\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

let g:ctrlp_map ='<Leader>t'
map <leader>C :CtrlPClearCache<cr>

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
nnoremap <leader>t :CtrlP<cr>

" Easy bindings for its various modes
nnoremap <leader>bb :CtrlPBuffer<cr>
nnoremap <leader>bm :CtrlPMixed<cr>
nnoremap <leader>bs :CtrlPMRU<cr>

" vim-buffergator
" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1
let g:buffergator_display_regime = "bufname"

" Looper buffers
"let g:buffergator_mru_cycle_loop = 1

" Move to the next buffer
" nnoremap <Leader>d :BuffergatorMruCyclePrev<cr>

" Move to the previous buffer
" nnoremap <Leader>s :BuffergatorMruCycleNext<cr>

" View the entire list of buffers open
nnoremap <leader>bl :BuffergatorOpen<cr>

nnoremap <leader>T :e 
nnoremap <leader>bq :bp <BAR> bd #<cr>

nnoremap <Leader>c :lclose<CR>

nnoremap <C-K> <C-W><C-J>
nnoremap <C-J> <C-W><C-H>
nnoremap <C-L> <C-W><C-K>
nnoremap <C-P> <C-W><C-L>

au BufNewFile,BufRead * setlocal fo-=cr

" Javascript commands
aug filetype_javascript
  au!
  au FileType javascript vnoremap <buffer> <localleader>c <esc>`<i{/*<esc>`>a*/}<esc>
  au Filetype javascript nnoremap <buffer> <localleader>c I//<esc>
  au FileType javascript onoremap <buffer> i' :<c-u>normal! T'hvt'l<cr>
  au FileType javascript set formatprg=prettier\ --stdin
  au FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
aug END

" python commands
aug filetype_python
  au!
  au Filetype python nnoremap <buffer> <localleader>c I#<esc>
aug END

" python
au BufNewFile,BufRead *.py:
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" javascript
au BufNewFile,BufRead *.js:
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
    \ set autoindent

hi ThisKeywordGroup ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE
match ThisKeywordGroup /this/

" MatchTagAlways
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'javascript.jsx': 1,
    \}

" ALE
let g:ale_fixers = {
  \'javascript': ['eslint'],
  \}
nmap <silent> <leader>s <Plug>(ale_previous_wrap)
nmap <silent> <leader>d <Plug>(ale_next_wrap)
nnoremap <leader>ale :ALEFix<cr>

" Narrow region
vnoremap <leader>nrw :NW<cr>

" NERDTree
nnoremap <Leader>nt :NERDTreeToggle<Enter>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1

aug nerdtree_group
  au!
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
aug END

" deoplete
let g:deoplete#enable_at_startup = 1

set completeopt=longest,menuone,preview

let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']

let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']

let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
\]

autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:UltiSnipsExpandTrigger="<C-j>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" close the preview window when you're not using it
let g:SuperTabClosePreviewOnPopupClose = 1

let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ 'js',
                \ ]

let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.javascript = '[^. *\t]\.\w*'

" omnifuncs
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

" javascript-libraries-syntax
let g:used_javascript_libs='underscore,react,flux,ramda'
