colorscheme dracula

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
let g:ctrlp_show_hidden = 1
nnoremap <leader>C :CtrlPClearCache<cr>
nnoremap <leader>t :CtrlP<cr>

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
      \ 'jxsxml' : 1,
      \ 'jinja' : 1,
      \ 'javascript.jsx': 1,
      \}

" ALE
" move between errors
nmap <silent> <leader>s <Plug>(ale_previous_wrap)
nmap <silent> <leader>d <Plug>(ale_next_wrap)
let g:ale_javascript_eslint_use_global = 1

" NERDTree
nnoremap <Leader>nt :NERDTreeToggle<Enter>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1
" close vim if one of last two buffers is nerdtree
aug nerdtree_group
  au!
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
aug END

" vim-jsx
let g:jsx_ext_required = 0

" vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-s>'
let g:multi_cursor_prev_key='<C-d>'

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
      \ 'tern#Complete',
      \ 'jspc#omni'
      \]
let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.javascript = '[^. *\t]\.\w*'
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
let g:UltiSnipsExpandTrigger="<C-j>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" supertab
" scroll down the list
let g:SuperTabDefaultCompletionType = "<c-n>"
" close the preview window when you're not using it
let g:SuperTabClosePreviewOnPopupClose = 1
