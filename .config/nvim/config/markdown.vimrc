aug filetype_markdown
  au!
  au Filetype markdown onoremap <buffer> ih :<c-u>execute "normal! ?^[-=][-=]\\+$\r:nohlsearch\rkvg_"<cr>
  au Filetype markdown onoremap <buffer> ah :<c-u>execute "normal! ?^[-=][-=]\\+$\r:nohlsearch\rg_vk0"<cr>
aug END
