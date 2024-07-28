"-------------------------------------------------------------------------------
" General Config
"-------------------------------------------------------------------------------
" 新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする(autoindent)
set ai

" 外部のエディタで編集中のファイルが変更されたら、自動的に読み直す(autoread)
set ar

" 挿入モード時に<BS>で改行をこえて削除可能とする(backspace)
set bs=indent,eol,start

" ファイルを上書きする前にバックアップファイルを作る(backup)
"set bk
set nobk

" バックアップファイルの作成方法を決定する(backupcopy)
"set bkc=no

" バックアップファイルを作るディレクトリを設定する(backupdir)
"set bdir=.,~/tmp,~/

" バックアップファイルの拡張子(backupext)
set bex=.backup

" ファイルブラウザにどのディレクトリを使うかを指定する(Windows版等のGUI用)(browsedir)
set bsdir=buffer

" クリップボードの動作設定(clipboard)
set cb=unnamed

" コマンドラインに使われるスクリーン上の行数(cmdheight)
"set ch=2
set ch=1

" Diffモード用のオプション設定(diffopt)
set dip=filler,vertical

" C言語のインデント方法を決定する(cinoptions)
set cino+=:0,g0

" ステータスラインを表示するウィンドウを設定する(laststatus)
set ls=2

" 検索結果をハイライトする(hlsearch)
set hls

" 検索で、大文字小文字を区別しない(ignorecase)
set ic

" インクリメンタルサーチを行う(incsearch)
set is

" Ctrl+A、Ctrl+Xの加減算コマンドで認識する基数(nrformats)
set nf=alpha,hex

" 行番号を表示する(number)
set nu

" 自動インデントの各段階に使われる空白の数(shiftwidth)
set sw=4

" 自動改行幅の設定(textwidth)
set tw=0
" デフォルトvimrc_exampleのtextwidth設定上書き
autocmd FileType text setlocal textwidth=0

" コマンドをステータスラインに表示する(showcmd)
set sc

" 閉じ括弧が入力されたとき、対応する括弧を表示する(showmatch)
set sm

" 現在のモードを表示する(showmode)
set smd

" 検索で小文字なら大文字を無視、大文字なら無視しない設定(smartcase)
set scs

" 新しい行を作ったときに高度な自動インデントを行う(smartindent)
set si

" 強調表示(色付け)のON/OFF設定(syntax)
sy on

" ファイル内の <Tab> が対応する空白の数(tabstop)
set ts=4

" ウィンドウの幅を超える行の折り返し設定
set nowrap

" ファイルの末尾まで検索したら、ファイルの先頭へループする(wrapscan)
set nows

" タブ文字、行末など不可視文字を表示する
set list

" 自動インデント
set autoindent

" タブは自動で展開
set expandtab

" 保存されていないファイルがある時は、終了前に保存確認
set confirm

" listで表示される文字のフォーマットを指定する(listchars)
set lcs=tab:>-,eol:$,extends:>

" タブを表示 1:2つ以上だったら表示 2:常に表示
set showtabline=1

" gVimでもテキストベースのタブページを使う
"set guioptions-=e
"
" 入力モードの自動的に日本語入力を使わない
set iminsert=0
" 検索時自動的に日本語入力を使わない
set imsearch=-1

" ステータス行の表示内容を設定する(statusline)
set stl=%<          " 切り詰め位置
set stl+=%f         " ファイル名
set stl+=\ %m       " 変更チェック[+]
set stl+=%r         " 読み取り専用[r]
set stl+=%h         " ヘルプページ[HELP]
set stl+=%w         " プレビュー[Preview]
set stl+=[%{(&fenc!=''?&fenc:&enc).(&bomb?'(BOM)':'')}]    " fileencoding + BOM
set stl+=[%{&ff}]   " fileformat
set stl+=%y         " filetype
" Gitのブランチ表示(fugitive)
if isdirectory(expand('$CACHE/dein/repos/github.com/tpope/vim-fugitive'))
    set stl+=%{fugitive#statusline()}
endif
set stl+=%=         " 右寄せ
set stl+=%l         " カーソル行
set stl+=,
set stl+=%c         " カーソルの列
set stl+=%V         " カーソルの列(画面上)
set stl+=,
set stl+=0x%02B     " カーソル下の文字コード(HEX表記)
set stl+=%8P        " %表示

set undodir=~/vimfiles/undo

set directory=~/vimfiles/tmp

" listで表示される文字のフォーマットを指定する(listchars)
" utf-8の場合、特殊文字列をらしく設定する。(他のエンコード時エラーになる可能性ある為if分岐
if &encoding ==# 'utf-8'
    set listchars=tab:»_,trail:_,eol:↲,extends:»,precedes:«,nbsp:%
endif

" JSONのダブルクォートが表示されないのを回避
" @see: https://qiita.com/karur4n/items/a26007236c59c5fb8735
set conceallevel=0
let g:vim_json_syntax_conceal = 0

" pythondll 系は通しておかないとダメっぽい？

" Python path
"set pythonthreedll=\/usr/local/Cellar/python3/3.6.4_2/Frameworks/Python.framework/Versions/3.6/Python
"set pythondll=C:\Python\python27\python27.dll
"set pythonthreedll=C:/Python/python35/python35.dll
"set pythonthreedll=C:/Python/python36/python36.dll
set pythonthreedll=C:\Python\python312\python312.dll
"set pythonthreehome=\/usr/local/Cellar/python3/3.6.4_2/\Frameworks/Python.framework/Versions/3.6
"set pythonhome=C:\Python\python27
"set pythonthreehome=C:/Python/python35
"set pythonthreehome=C:/Python/python36

" grepを実行したら自動的にQuickfixの一覧画面を表示
augroup QuickFixCmd
  autocmd!
  autocmd QuickFixCmdPost *grep* cwindow
augroup END

" dein向けには、shellslashが必要だが、noshellslashの方が望ましい
set noshellslash

" Enable migemo
if has("migemo")
    set migemo
endif

colorscheme ron

"---------------------------------------------------------------------------
" Options:"{{{
hi statement  guifg=white     gui=NONE                " 
hi LineNr     guifg=#607075   gui=none guibg=black    " 行番号
hi constant   guifg=magenta   gui=none                " 定数
hi String     guifg=magenta                           " 文字列のみ
hi preproc    guifg=red                               " 
hi Search                              guibg=yellow   " 検索文字列の背景色
hi type       guifg=lightblue gui=NONE                " 
hi Normal     guifg=#babdb6            guibg=#151b1d  " 通常文字
hi SpecialKey guifg=#4f5b5d   gui=none guibg=#2c3032  " タブ等の特殊キー
hi NonText    guifg=#4f5b5d   gui=none guibg=#232729  " 改行記号等
hi Function   guifg=#ffaa33                           " 関数

if version >= 700
  " インテリセンスメニュー
  hi Pmenu      guifg=magenta guibg=white
  hi PmenuSel   guifg=red     guibg=lightblue
  hi PmenuSbar                guibg=lightblue

  hi TabLine      guifg=#446644    guibg=black    gui=None
  hi TabLineFill  guifg=#232729    guibg=#232729  gui=None
  hi TabLineSel   guifg=#88ee99    guibg=black    gui=None
endif
"}}}

" http://mattn.kaoriya.net/software/vim/20140523124903.htm
let g:markdown_fenced_languages = [
    \ 'apache',
    \ 'autohotkey',
    \ 'awk',
    \ 'bash=sh',
    \ 'bat=dosbatch',
    \ 'c',
    \ 'conf',
    \ 'cpp',
    \ 'cs',
    \ 'csharp=cs',
    \ 'css',
    \ 'diff',
    \ 'dos=dosbatch',
    \ 'erb=eruby',
    \ 'html',
    \ 'ini=dosini',
    \ 'java',
    \ 'javascript',
    \ 'jproperties',
    \ 'js=javascript',
    \ 'json=javascript',
    \ 'make',
    \ 'ora',
    \ 'pas=pascal',
    \ 'perl',
    \ 'php',
    \ 'pl=perl',
    \ 'powershell=ps1',
    \ 'properties=jproperties',
    \ 'ps1',
    \ 'python',
    \ 'r',
    \ 'rc',
    \ 'reg=registry',
    \ 'registry',
    \ 'ruby',
    \ 'sass',
    \ 'sh',
    \ 'shell=sh',
    \ 'sql',
    \ 'vb',
    \ 'vb.net=vb',
    \ 'vim',
    \ 'xml',
    \ 'yaml',
    \ 'yml=yaml',
    \]

" 全角空白をハイライト(好みで有効にする) {{{
augroup HighlightWideSpace
  au!
  au VimEnter,ColorScheme * hi WideSpace term=underline ctermbg=gray guibg=gray
  au VimEnter,WinEnter * match WideSpace /　/
augroup END
" }}}

" Vim のカラースキームが微妙に気に食わないときの対処法 - 反省はしても後悔はしない
" https://cohama.hateblo.jp/entry/2013/08/11/020849
function! s:get_syn_id(transparent)
  let synid = synID(line("."), col("."), 1)
  if a:transparent
    return synIDtrans(synid)
  else
    return synid
  endif
endfunction
function! s:get_syn_attr(synid)
  let name = synIDattr(a:synid, "name")
  let ctermfg = synIDattr(a:synid, "fg", "cterm")
  let ctermbg = synIDattr(a:synid, "bg", "cterm")
  let guifg = synIDattr(a:synid, "fg", "gui")
  let guibg = synIDattr(a:synid, "bg", "gui")
  return {
        \ "name": name,
        \ "ctermfg": ctermfg,
        \ "ctermbg": ctermbg,
        \ "guifg": guifg,
        \ "guibg": guibg}
endfunction
function! s:get_syn_info()
  let baseSyn = s:get_syn_attr(s:get_syn_id(0))
  echo "name: " . baseSyn.name .
        \ " ctermfg: " . baseSyn.ctermfg .
        \ " ctermbg: " . baseSyn.ctermbg .
        \ " guifg: " . baseSyn.guifg .
        \ " guibg: " . baseSyn.guibg
  let linkedSyn = s:get_syn_attr(s:get_syn_id(1))
  echo "link to"
  echo "name: " . linkedSyn.name .
        \ " ctermfg: " . linkedSyn.ctermfg .
        \ " ctermbg: " . linkedSyn.ctermbg .
        \ " guifg: " . linkedSyn.guifg .
        \ " guibg: " . linkedSyn.guibg
endfunction
command! SyntaxInfo call s:get_syn_info()

"------------------------------------------------------------
" g:quickrun_config の初期化

" split分割を右を既定とする
set splitright

if !exists("g:quickrun_config")
     let g:quickrun_config = get(g:, 'quickrun_config', {})
     let g:quickrun_config['_'] = {
         \   'runner'    : 'vimproc',
         \   'runner/vimproc/updatetime' : 60,
         \   'hook/time/enable': 1,
         \   'outputter/buffer/into': 1,
         \   'outputter/buffer/opener': 'vnew',
         \   'outputter/buffer/close_on_empty': 1,
         \ }
     let g:quickrun_config['sql/oracle'] = {
         \   'command': 'sqlplus',
         \   'exec': ['%c %o \@%s'],
         \   'hook/output_encode/enable' : 1,
         \   'hook/output_encode/encoding' : '&termencoding'
         \}
"         "\ 'exec': '%c %o \@%s',
"         "\ 'command': 'sqlplus',
"         "\ 'cmdopt': '-S %{get(g:, "quickrun_oracle_conn", "/nolog")}',
"         "\ 'hook/output_encode/encoding': 'sjis',
"         "\ 'hook/eval/enable': 1,
"         "\ 'hook/eval/template':
"         "\   'set echo off' . "\r" .
"         "\   'set linesize 1000' . "\r" .
"         "\   'set trimspool on' . "\r" .
"         "\   'set feedback off' . "\r" .
"         "\   'set colsep ","' . "\r" .
"         "\   'set heading on' . "\r" .
"         "\   'set underline off' . "\r" .
"         "\   '%s',
"         "\}
     let g:quickrun_config['javascript/cscript'] = {
         \   'command': 'cscript',
         \   'exec': '%c %o %s %a',
         \   'cmdopt': '//Nologo',
         \   'hook/output_encode/enable' : 1,
         \   'hook/output_encode/encoding' : '&termencoding'
         \}
 "        \   'tempfile': '%{tempname()}.js',
     let g:quickrun_config['javascript/wscript'] = {
         \   'command': 'wscript',
         \   'exec': '%c %o %s %a',
         \   'cmdopt': '//Nologo',
         \   'hook/output_encode/enable' : 1,
         \   'hook/output_encode/encoding' : '&termencoding'
         \}
 "        \   'tempfile': '%{tempname()}.js',
endif

if has('win32') || has('win64')
    let g:quickrun_config['html'] = {
        \   'command': 'mshta',
        \   'exec': ['%c %o %s'],
        \ }

    let g:quickrun_config['sql/postgres'] = { 
    \   "hook/output_encode/enable" : 1,
    \   "hook/output_encode/encoding" : "&termencoding",
    \}

    let g:quickrun_config['python'] = { 
    \   "hook/output_encode/enable" : 1,
    \   "hook/output_encode/encoding" : "&termencoding",
    \}
endif


"---------------------------------------------------------------------------
"   File Types
"---------------------------------------------------------------------------

"------------------------------------------------------------------[PHP]----
autocmd FileType php :set dictionary=$HOME/vimfiles/dict/PHP.dict
"autocmd BufRead *.php\|*.ctp\|*.tpl :set dictionary=~/vimfiles/dictionaries/php.dict filetype=php

"-----------------------------------------------------------------[HTML]----
autocmd BufNewFile,BufRead *.hta set filetype=html

"-------------------------------------------------------------[Markdown]----
autocmd BufNewFile,BufRead *.txt,*.md,*.mkd,*.markdown set filetype=markdown

"-----------------------------------------------------------------[SASS]----
autocmd BufNewFile,BufRead *.sass set filetype=sass
"------------------------------------------------------------------[CSS]----
autocmd BufNewFile,BufRead *.css,*.less set filetype=css

"-----------------------------------------------------------------[moin]----
autocmd BufNewFile,BufRead *.moin set filetype=moin
autocmd BufNewFile,BufRead *.trac set filetype=moin

autocmd FileType javascript :compiler javascriptlint

"-------------------------------------------------------------------[vb]----
autocmd BufNewFile,BufRead *.bas,*.cls set filetype=vb

"-----------------------------------------------------------------[moin]----

"-----------------------------------------------------------------[mml]-----
autocmd BufNewFile,BufRead *.mml set filetype=mml
autocmd FileType mml nnoremap <leader>m :MmlMake<cr>

" Pascal / Delphi
if (1==1) "change to "1==0" to use original syntax
  au BufNewFile,BufRead *.pas,*.PAS set ft=delphi
else
  au BufNewFile,BufRead *.pas,*.PAS set ft=pascal
endif
" Delphi project file
au BufNewFile,BufRead *.dpr,*.DPR set ft=delphi
" Delphi form file
au BufNewFile,BufRead *.dfm,*.DFM set ft=delphi
au BufNewFile,BufRead *.xfm,*.XFM set ft=delphi
" Delphi package file
au BufNewFile,BufRead *.dpk,*.DPK set ft=delphi
" Delphi .DOF file = INI file for MSDOS
au BufNewFile,BufRead *.dof,*.DOF set ft=dosini
au BufNewFile,BufRead *.kof,*.KOF set ft=dosini
au BufNewFile,BufRead *.dsk,*.DSK set ft=dosini
au BufNewFile,BufRead *.desk,*.DESK set ft=dosini
au BufNewFile,BufRead *.dti,*.DTI set ft=dosini
" Delphi .BPG = Makefile
au BufNewFile,BufRead *.bpg,*.BPG set ft=make|setlocal makeprg=make\ -f\ % 

" VMware .vmx Config File = INI file for MSDOS
au BufNewFile,BufRead *.vmx,*.VMX set ft=dosini

" gitconfig.*
au BufNewFile,BufRead *.gitconfig.* setf gitconfig 

if executable('pylsp')
    " pip install python-lsp-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pylsp',
        \ 'cmd': {server_info->['pylsp']},
        \ 'allowlist': ['python'],
        \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    " nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    " nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
