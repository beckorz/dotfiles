" [Markdown形式に沿ってfoldするためのVimスクリプト - Slowly But Surely](https://wisteriasec.wordpress.com/2017/12/30/markdown%E5%BD%A2%E5%BC%8F%E3%81%AB%E6%B2%BF%E3%81%A3%E3%81%A6fold%E3%81%99%E3%82%8B%E3%81%9F%E3%82%81%E3%81%AEvim%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%97%E3%83%88/)

" function! FoldMarkdown(lnum)
"   let line = getline(a:lnum)
"   let next = getline(a:lnum + 1)
"  
"   if next =~ '^#\{1}[^#]\+'
"     return '<1'
"   elseif line =~ '^#\{2}[^#]\+'
"     return 2
"   elseif next =~ '^#\{2}[^#]\+'
"     return '<2'
"   elseif line =~ '^#\{3}[^#]\+'
"     return 3
"   elseif next =~ '^#\{3}[^#]\+'
"     return '<3'
"   endif
"  
"   return '='
" endfunction
" 
" set foldmethod=expr foldexpr=FoldMarkdown(v:lnum)

" let g:tagbar_type_markdown = {
"     \ 'ctagstype' : 'markdown',
"     \ 'kinds' : [
"         \ 'h:Heading_L1',
"         \ 'i:Heading_L2',
"         \ 'k:Heading_L3'
"     \ ]
" \ }
" 
" autocmd VimEnter * nested :TagbarOpen

set completeslash=slash
