syntax on
filetype off
set nocompatible


" <NeoBundle===================================================================
if 0 | endif

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
" plugins --------------------------------
" Theme
NeoBundle 'tomasr/molokai'
NeoBundle 'MPiccinato/wombat256'
NeoBundle 'lsdr/monokai'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'NLKNguyen/papercolor-theme'
" Plugin
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'moll/vim-bbye'
" input extend
NeoBundle 'tpope/vim-surround'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'kana/vim-submode'
NeoBundle 'nelstrom/vim-visual-star-search'
NeoBundle 'AndrewRadev/switch.vim'
" NeoBundle 'marijnh/tern_for_vim'
NeoBundle 'Valloric/YouCompleteMe'
" -> then
"  $ cd ~/.vim/bundle/YouCompleteMe
"  $ git submodule update --init --recursive
"  $ ./install.sh
" vimが起動しな起動しなくなるので brew unlink python する

" Langage
NeoBundle 'mattn/emmet-vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'einars/js-beautify'
NeoBundleLazy 'maksimr/vim-jsbeautify', {'autoload':{'filetypes':['javascript','html','css']}}
NeoBundle 'heavenshell/vim-jsdoc'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'kchmck/vim-coffee-script'
" Tool
NeoBundle 'rizzatti/dash.vim'

" ---------------------------------------
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"==============================================================================>

"<Basics========================================================================
set shell=/usr/local/bin/zsh

set t_Co=256
set nowrap                          "折り返さない
set wildmenu                        "コマンドライン補完するときに補完候補を表示する
set noundofile                      "undoファイルを無効化
set cursorline                      "カーソルの強調表示
set imdisable                       "コマンドモードでIMEを無効化(kaoriya限定)

set helplang=ja,en                  "日本語のヘルプを表示

set autoread                        "外部で変更のあったファイルを自動的に再読み込みする
set autoindent                      "新しい行のインデントを現在行と同じにする;
set backupdir=$HOME/.vimbackup      "バックアップファイルを作るディレクトリ
set browsedir=buffer                "ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
"set clipboard=unnamed              "クリップボードをWindowsと連携
"set directory=$HOME/vimbackup      "スワップファイル用のディレクトリ
set expandtab                       "タブの代わりに空白文字を挿入する
set hidden                          "変更中のファイルでも、保存しないで他のファイルを表示
set list                            "タブ文字、行末など不可視文字を表示する
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:< "listで表示される文字のフォーマットを指定する
set incsearch                       "インクリメンタルサーチを行う
set number                          "行番号を表示する
set showmatch                       "閉じ括弧が入力されたとき、対応する括弧を表示する
set smartcase                       "検索時に大文字を含んでいたら大/小を区別
set smartindent                     "新しい行を作ったときに高度な自動インデントを行う
set smarttab                        "行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
"set tabstop=4                      "ファイル内の  が対応する空白の数
set whichwrap=b,s,h,l,<,>,[,]       "カーソルを行頭、行末で止まらないようにする
set wrapscan                        "検索をファイルの先頭へループ

set history=1200                    "履歴件数
set infercase                       "マッチした単語の大文字小文字を区別しない
set colorcolumn=100                 "100列目を強調表示
set backspace=indent,eol,start      "インデントを削除
set equalalways                     "全てのウィンドウを自動的に同じサイズにする
set lazyredraw                      "マクロなどの途中経過を描写しない
set title                           "ウィンドウタイトルを設を設定
set noerrorbells visualbell t_vb=   "ベルを無効

au BufNewFile,BufRead * set iminsert=0 "日本語入力をリセット
au BufNewFile,BufRead * set tabstop=2 shiftwidth=2 "タブ幅をリセット

"==============================================================================>

" Encode {{{
set encoding=utf-8
set fenc=utf-8
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
" }}}

"折りたたみ設定
set foldmethod=indent
set fdc=4
let perl_fold=1
set foldlevel=100

"------------------------------------------------------
" emmet
"------------------------------------------------------
let g:user_emmet_install_global = 0
autocmd FileType html,ejs,css,sass,scss,stylus,less EmmetInstall


"------------------------------------------------------
"キーマップ
"------------------------------------------------------
source ~/.vim/startup/mapping.vim

"------------------------------------------------------
"NERDtree(ファイルツリー)の設定
"------------------------------------------------------
source ~/.vim/startup/nerdtree.vim

"------------------------------------------------------
" Unite
"------------------------------------------------------
source ~/.vim/startup/unite.vim

"------------------------------------
" lightline
"------------------------------------
source ~/.vim/startup/lightline.vim

"------------------------------------
" vim jsdoc
"------------------------------------
let g:jsdoc_default_mapping = 0
nnoremap <silent> <Space>J :JsDoc<CR>

" highlight line
let g:PaperColor_Dark_CursorLine = "#37474F"


"------------------------------------
" indentLine
"------------------------------------
let g:indentLine_color_gui = '#424242'
nmap <silent><Leader>i <Plug>IndentLinesToggle
"let g:indentLine_char = '¦'

"------------------------------------
" by filetype
"------------------------------------
source ~/.vim/startup/filetype.vim
