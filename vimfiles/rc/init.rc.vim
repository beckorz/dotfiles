"---------------------------------------------------------------------------
" Initialize:
"

let s:is_windows = has('win32') || has('win64')

function! IsWindows() abort
  return s:is_windows
endfunction

function! IsMac() abort
  return !s:is_windows && !has('win32unix')
      \ && (has('mac') || has('macunix') || has('gui_macvim')
      \     || (!executable('xdg-open') && system('uname') =~? '^darwin'))
endfunction

" Setting of the encoding to use for a save and reading.
" Make it normal in UTF-8 in Unix.
if has('vim_starting') && &encoding !=# 'utf-8'
  if IsWindows() && !has('gui_running')
    set encoding=cp932
  else
    set encoding=utf-8
  endif
endif

" Build encodings.
let &fileencodings = join([
      \ 'ucs-bom', 'iso-2022-jp-3', 'utf-8', 'euc-jp', 'cp932'])

" Setting of terminal encoding.
if !has('gui_running') && IsWindows()
  " For system.
  set termencoding=cp932
endif

if has('multi_byte_ime')
  set iminsert=0 imsearch=0
endif

if IsWindows()
  " Exchange path separator.
  set shellslash
  " Download vimproc.dll
  let g:vimproc#download_windows_dll = 1
endif

let $CACHE = expand('~/vimfiles/cache')

if !isdirectory(expand($CACHE))
  call mkdir(expand($CACHE), 'p')
endif

let g:vimrc_has_git = executable('git')

" Load dein.
let s:dein_dir = finddir('dein.vim', '.;')
if s:dein_dir != '' || &runtimepath !~ '/dein.vim'
  if s:dein_dir == '' && &runtimepath !~ '/dein.vim'
    let s:dein_dir = expand('$CACHE/dein')
          \. '/repos/github.com/Shougo/dein.vim'
    if !isdirectory(s:dein_dir)
      let g:vimrc_has_dein = 0
      if g:vimrc_has_git
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
        let s:vimrc_has_dein = 1
      endif
    else
      let g:vimrc_has_dein = 1
    endif
  endif
  execute 'set runtimepath^=' . substitute(
        \ fnamemodify(s:dein_dir, ':p') , '/$', '', '')
endif

" Disable packpath
set packpath=

"---------------------------------------------------------------------------
" Disable default plugins

" Disable menu.vim
"if has('gui_running')
"   set guioptions=Mc
"endif
