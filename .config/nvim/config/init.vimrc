call dein#begin(expand('~/.vim/dein')) " plugins' root path

" colorschemes
call dein#add('dracula/vim')

" general
call dein#add('Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' })
call dein#add('ervandew/supertab')
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')
call dein#add('scrooloose/NERDTree')

" editing

" javascript
call dein#add('pangloss/vim-javascript')
call dein#add('mxw/vim-jsx')
call dein#add('othree/javascript-libraries-syntax.vim')
call dein#add('ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install' })
call dein#add('carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] })
call dein#add('othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] })

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
call dein#add('dkprice/vim-easygrep')
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

call dein#end()
call dein#save_state()
