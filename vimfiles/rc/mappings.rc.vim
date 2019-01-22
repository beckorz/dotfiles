"---------------------------------------------------------------------------
" Key-mappings:
"

" QuickRun カーソル下がURLの場合ブラウザで開く
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

