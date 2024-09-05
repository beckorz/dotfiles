"---------------------------------------------------------------------------
" Key-mappings:
"

" QuickRun カーソル下がURLの場合ブラウザで開く
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" terminal
if has('win32') || has('win64')
  tnoremap <C-P> <Up>
  tnoremap <C-N> <Down>
endif

" Quickrun
let g:quickrun_no_default_key_mappings = 1
"nnoremap \r :cclose<CR>:write<CR>:QuickRun -mode n<CR>
"xnoremap \r :<C-U>cclose<CR>:write<CR>gv:QuickRun -mode v<CR>
nnoremap <leader>r :QuickRun<CR>

" Tagbar: TagbarToggle
nmap <F8> :TagbarToggle<CR>
