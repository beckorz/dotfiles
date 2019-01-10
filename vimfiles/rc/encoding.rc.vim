"---------------------------------------------------------------------------
" Encoding:
"
" The automatic recognition of the character code.

" When do not include Japanese, use encoding for fileencoding.
function! s:ReCheck_FENC() abort
  let is_multi_byte = search("[^\x01-\x7e]", 'n', 100, 100)
  if &fileencoding =~# 'iso-2022-jp' && !is_multi_byte
    let &fileencoding = &encoding
  endif
endfunction

" Vimが表示できる文字エンコーディングのリスト(fileencodings)
set fencs=utf-8,iso-2022-jp,cp932,euc-jp,ucs-bom

autocmd MyAutoCmd BufReadPost * call s:ReCheck_FENC()

" Vimの通常使う文字エンコーディング(encoding)
if has('win32')
  set enc=utf-8
  set termencoding=cp932
else
  set enc=utf-8
endif

" Default fileformat.
set fileformat=dos
" Automatic recognition of a new line cord.
set fileformats=unix,dos,mac
