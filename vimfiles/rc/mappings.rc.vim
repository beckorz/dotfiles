"---------------------------------------------------------------------------
" Key-mappings:
"

" QuickRun カーソル下がURLの場合ブラウザで開く
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" \z : VimFilerをトグルで開閉出来るようにする
"   [VimFilerのtoggleオプションが便利 - Qiita](https://qiita.com/knt45/items/cf5d63fd99a2fd0e4de8)
nnoremap <silent> <Leader>z :<C-u>VimFilerBufferDir -split -simple -winwidth=42 -toggle -no-quit<CR>

" terminal
if has('win32') || has('win64')
  tnoremap <C-P> <Up>
  tnoremap <C-N> <Down>
endif
