autocmd!

call dein#begin(expand('~/.vim/dein')) " plugins' root path

" colorschemes
call dein#add('dracula/vim')
call dein#add('crusoexia/vim-monokai')
call dein#add('flazz/vim-colorschemes')
call dein#add('owickstrom/vim-colors-paramount')

" general
call dein#add('scrooloose/NERDTree')
call dein#add('scrooloose/nerdcommenter')
call dein#add('airblade/vim-gitgutter')
call dein#add('wesQ3/vim-windowswap')
call dein#add('w0rp/ale')

"" autocompletion
call dein#add('Shougo/deoplete.nvim')
call dein#add('ervandew/supertab')
"call dein#add('SirVer/ultisnips')
"call dein#add('honza/vim-snippets')
call dein#add('ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] })
call dein#add('carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] })
call dein#add('othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] })
call dein#add('vim-scripts/AutoComplPop')

call dein#add('easymotion/vim-easymotion')
call dein#add('dkprice/vim-easygrep')
call dein#add('elzr/vim-json')
call dein#add('vim-airline/vim-airline')
call dein#add('tpope/vim-fugitive')
call dein#add('jiangmiao/auto-pairs')
call dein#add('alvan/vim-closetag')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('Valloric/MatchTagAlways')

"" javascript
call dein#add('pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] })
call dein#add('mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] })

" swift
call dein#add('kballard/vim-swift', {
      \ 'filetypes': 'swift',
      \ 'unite_sources': ['swift/device', 'swift/developer_dir']
      \})

" elm
call dein#add('elmcast/elm-vim')

" python
call dein#add('python-mode/python-mode')

"" text objects
call dein#add('kana/vim-textobj-user')
call dein#add('beloglazov/vim-textobj-quotes')

call dein#end()
call dein#save_state()
