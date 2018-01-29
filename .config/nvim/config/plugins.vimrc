colorscheme dracula

" vim-javascript
let g:jsx_ext_required = 0

" vim-easygrep 
let g:EasyGrepRecursive=1
let g:EasyGrepFilesToExclude=".git,node_modules,ios,android,package-lock.json,assets,npm-debug.log"
let g:EasyGrepCommand=1
let g:EasyGrepJumpToMatch=0

" haskell-vim
let g:haskell_indent_case = 2

" vim-closetag
let g:closetag_filenames = "*.html,*.xhtml,*.jsx,*.js"

" auto-pairs
let g:AutoPairsShortcutFastWrap = '<C-e>'
let g:AutoPairsShortcutJump = '<C-n>'

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
" hide y and warning section
let g:airline_section_y = ''
let g:airline_section_warning = ''

" ctrlp
let g:ctrlp_custom_ignore = {
      \ 'dir':  'node_modules\android\ios\v[\/](\.(git|hg|svn)|\_site)$',
      \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
      \}
let g:ctrlp_map ='<Leader>t'
" Use the nearest .git directory as the cwd
let g:ctrlp_working_path_mode = 'r'

" vim-buffergator
" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'
let g:buffergator_suppress_keymaps = 1
let g:buffergator_display_regime = "bufname"
" View the entire list of buffers open
nnoremap <leader>bl :BuffergatorOpen<cr>

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
" move between errors
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
