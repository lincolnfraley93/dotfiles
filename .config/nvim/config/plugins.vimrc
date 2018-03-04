colorscheme monokai

" vim-easygrep 
let g:EasyGrepRecursive=1
let g:EasyGrepFilesToExclude=".git,node_modules,ios,android,package-lock.json,assets,npm-debug.log,.build,elm-stuff"
let g:EasyGrepCommand=1
let g:EasyGrepJumpToMatch=0
" open easygrep
nnoremap <Leader>g :Grep 

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
      \ 'dir':  'elm-stuff\build\node_modules\android\ios\v[\/](\.(git|hg|svn)|\_site)$',
      \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg|DS_Store|tern-project)$',
      \}
let g:ctrlp_map ='<Leader>t'
" Use the nearest .git directory as the cwd
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_show_hidden = 1

" vim-buffergator
" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'
let g:buffergator_suppress_keymaps = 1
let g:buffergator_display_regime = "bufname"

" MatchTagAlways
let g:mta_filetypes = {
      \ 'html' : 1,
      \ 'xhtml' : 1,
      \ 'jxsxml' : 1,
      \ 'jinja' : 1,
      \ 'javascript.jsx': 1,
      \}

" NERDTree
nnoremap <Leader>nt :NERDTreeToggle<Enter>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.DS_Store$']
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
"let g:deoplete#enable_at_startup = 0
"aug deoplete_group
  "au!
  "au VimEnter * call deoplete#enable()
"aug END
"let g:deoplete#omni#functions = {}
"let g:deoplete#omni#functions.javascript = [
      "\ 'tern#Complete',
      "\ 'jspc#omni'
      "\]
"let g:deoplete#omni#functions['javascript.jsx'] = [
      "\ 'tern#Complete',
      "\ 'jspc#omni'
      "\]
"let g:deoplete#omni#input_patterns = {}
"let g:deoplete#omni#input_patterns.javascript = '[^. *\t]\.\w*'
"let g:deoplete#omni#input_patterns['javascript.jsx'] = '[^. *\t]\.\w*'
"let g:deoplete#sources = {}
"let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
"let g:deoplete#sources.javascript = ['file', 'ultisnips', 'ternjs']
"let g:deoplete#file#enable_buffer_path = 1
"let g:deoplete#disable_auto_complete = 1
"let g:tern#command = ['tern']
"let g:tern#arguments = ['--persistent']
"let g:UltiSnipsExpandTrigger="<C-j>"
"let g:deoplete#enable_refresh_always = 1
"let g:deoplete#enable_camel_case = 1
""set omnifunc=syntaxcomplete#Complete
"augroup omnifuncs
  "autocmd!
  "autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  "autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  "autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  "autocmd FileType javascript.jsx setlocal omnifunc=javascriptcomplete#CompleteJS
  "autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  "autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"augroup end

"let g:tern_map_keys=1
  "" Display argument type hints when the cursor is left over a function
"let g:tern_show_argument_hints = 'on_hold'
"let g:tern_show_signature_in_pum = 1
"autocmd FileType javascript,javascript.jsx setlocal omnifunc=tern#Complete

""tern 
"let g:deoplete#sources#ternjs#types = 1
"let g:deoplete#sources#ternjs#filetypes = [
      "\ 'jsx',
      "\ 'javascript.jsx',
      "\ 'vue',
      "\ '...'
      "\ ]
"let g:deoplete#sources#ternjs#docs = 1

" supertab
" scroll down the list
let g:SuperTabDefaultCompletionType = "<c-n>"
" close the preview window when you're not using it
let g:SuperTabClosePreviewOnPopupClose = 1
let g:SuperTabNoCompleteAfter = ['//', '^', '\s']

" nerdcommenter
let g:NERDCustomDelimiters = { 'javascript.jsx': { 'left': '//', 'leftAlt': '{/*', 'rightAlt': '*/}' } }

" vim-elm
let g:elm_format_autosave = 0

" python-mode
let g:pymode_folding = 0
