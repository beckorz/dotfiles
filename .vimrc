"-------------------------------------------------------------------------------
" Vimrc
"-------------------------------------------------------------------------------
" == For Unix and Linux ==
" mkdir -p ~/vimfiles/rc/
" git clone https://github.com/Shougo/dein.vim.git ~/vimfiles/repos/dein.vim
" 
" == For windows. ==
" mkdir %USERPROFILE%\vimfiles\rc
" git clone https://github.com/Shougo/dein.vim.git %USERPROFILE%/vimfiles/repos/dein.vim

let g:vimrc_local_dir_name = 'vimfiles'
let g:vimrc_local_dir = fnamemodify(expand('<sfile>'), ':h').'/'.g:vimrc_local_dir_name

if 1
  execute 'source' fnamemodify(expand('<sfile>'), ':h').'/'.g:vimrc_local_dir_name.'/rc/vimrc'
endif
