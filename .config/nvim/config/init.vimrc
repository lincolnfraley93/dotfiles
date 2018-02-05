call dein#begin(expand('~/.vim/dein')) " plugins' root path

" colorschemes
call dein#add('dracula/vim')

" general
call dein#add('scrooloose/NERDTree')
call dein#add('scrooloose/nerdcommenter')

" autocompletion
call dein#add('Shougo/deoplete.nvim')
call dein#add('ervandew/supertab')
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')
call dein#add('ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] })
call dein#add('carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] })
call dein#add('othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] })

call dein#add('easymotion/vim-easymotion')
call dein#add('dkprice/vim-easygrep')
call dein#add('elzr/vim-json')
call dein#add('vim-airline/vim-airline')
call dein#add('tpope/vim-fugitive')
call dein#add('neovimhaskell/haskell-vim')
call dein#add('jiangmiao/auto-pairs')
call dein#add('alvan/vim-closetag')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('jeetsukumaran/vim-buffergator')
call dein#add('leafgarland/typescript-vim')
call dein#add('Valloric/MatchTagAlways')
call dein#add('w0rp/ale')
call dein#add('wesQ3/vim-windowswap')
call dein#add('terryma/vim-multiple-cursors')

" javascript
call dein#add('pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] })
call dein#add('mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] })

" text objects
call dein#add('kana/vim-textobj-user')
call dein#add('beloglazov/vim-textobj-quotes')

call dein#end()
call dein#save_state()
