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
set showtabline=2

" gVimでもテキストベースのタブページを使う
"set guioptions-=e
"
" 入力モードの自動的に日本語入力を使わない
set iminsert=0
" 検索時自動的に日本語入力を使わない
set imsearch=-1

" ステータス行の表示内容を設定する(statusline)
if isdirectory(expand('$CACHE/dein/repos/github.com/tpope/vim-fugitive'))
  set stl=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%y%{fugitive#statusline()}%=%l,%c%V,0x%02B%8P
else
  set stl=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%y%=%l,%c%V,0x%02B%8P
endif

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

"set noshellslash
"set shellslash

" pythondll 系は通しておかないとダメっぽい？

" Python path
"set pythonthreedll=\/usr/local/Cellar/python3/3.6.4_2/Frameworks/Python.framework/Versions/3.6/Python
"set pythondll=C:\Python\python27\python27.dll
"set pythonthreedll=C:/Python/python35/python35.dll
"set pythonthreedll=C:/Python/python36/python36.dll
"set pythonthreehome=\/usr/local/Cellar/python3/3.6.4_2/\Frameworks/Python.framework/Versions/3.6
"set pythonhome=C:\Python\python27
"set pythonthreehome=C:/Python/python35
"set pythonthreehome=C:/Python/python36

set colorcolumn=79
