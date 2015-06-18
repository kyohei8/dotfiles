" Basics {{{
    set nocompatible
    set t_Co=256
    set nowrap                          "折り返さない
    set wildmenu                        "コマンドライン補完するときに補完候補を表示する
    set noundofile                      "undoファイルを無効化

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
    "set shiftwidth=4                   "シフト移動幅
    set showmatch                       "閉じ括弧が入力されたとき、対応する括弧を表示する
    set smartcase                       "検索時に大文字を含んでいたら大/小を区別
    set smartindent                     "新しい行を作ったときに高度な自動インデントを行う
    set smarttab                        "行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
    "set tabstop=4                      "ファイル内の  が対応する空白の数
    set whichwrap=b,s,h,l,<,>,[,]       "カーソルを行頭、行末で止まらないようにする
    "set nowrapscan                     "検索をファイルの先頭へループしない

    set history=50                      "履歴を50件に

    set colorcolumn=100                 "100列目を強調表示
    set backspace=indent,eol,start      "インデントを削除

    au BufNewFile,BufRead * set iminsert=0 "日本語入力をリセット
    au BufNewFile,BufRead * set tabstop=2 shiftwidth=2 "タブ幅をリセット


" }}}

" NeoBundle {{{

  if 0 | endif

  if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
  endif

  call neobundle#begin(expand('~/.vim/bundle/'))

  NeoBundleFetch 'Shougo/neobundle.vim'

  " plugins ---------------------------------------
  " Theme
  NeoBundle 'tomasr/molokai'
  " Plugin
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'nathanaelkane/vim-indent-guides'
  NeoBundle 'mattn/emmet-vim'
  " -----------------------------------------------

  call neobundle#end()

  " Required:
  filetype plugin indent on

   " If there are uninstalled bundles found on startup,
   " this will conveniently prompt you to install them.
   NeoBundleCheck

" }}}

" Encode {{{

set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932

" }}}

"折りたたみ設定
set foldmethod=indent
set fdc=4
let perl_fold=1
set foldlevel=100



"keymapping{{{
  ".vimrcを開くコマンド<Space+.>
  nnoremap <Space>. :<C-u>tabedit $MYVIMRC<CR>
  "vimrcを再読み込み <Space+,>
  nnoremap <Space>, :<C-u>source $MYVIMRC<Return>

  "ノーマルモードのIMEを無効化
  nnoremap <silent> <C-^> <Nop>
  "Ctrl+cでも抜ける
  "inoremap <C-c> <Esc>
  " insertモードから抜ける
  inoremap <silent> jj <ESC>
  inoremap <silent> kk <ESC>
  inoremap <ESC> <ESC>

  " 挿入モードでのカーソル移動
  inoremap <C-j> <Down>
  inoremap <C-k> <Up>
  inoremap <C-h> <Left>
  inoremap <C-l> <Right>

  " ;も:
  nmap ; :

  "検索語が画面の真ん中に来るようにする
  nmap n nzz
  nmap N Nzz
  nmap * *zz
  nmap # #zz
  nmap g* g*zz
  nmap g# g#zz

  " カーソルを自動的に()の中へ
  imap { {}<Left>
  imap [ []<Left>
  imap ( ()<Left>
  imap "" ""<Left>
  imap '' ''<Left>
  imap <> <><Left>
" imap // //<left>
" imap /// ///<left>

  "eclipseのあの動き
  map <silent> <A-Up> dd<Up>P
  map <silent> <D-A-Up> yyP
  map <silent> <A-Down> ddp
  map <silent> <D-A-Down> yyp

  "tabの動き
  nnoremap <D-right> :tabnext<CR>
  nnoremap <D-left> :tabprev<CR>

  "Cmd+Enterでフルスクリーン
  map <D-enter> :set fullscreen! <CR>

  " コンマの後に自動的にスペースを挿入
  inoremap , ,<Space>

  " 'F8'で線を引く
  inoremap <F8> <C-R>=repeat('-', 80 - virtcol('.'))<CR>

  " 外部で変更のあったファイルを自動的に再読み込みする
  " http://vim-users.jp/2011/03/hack206/
  augroup vimrc-checktime
    autocmd!
    autocmd WinEnter * checktime
  augroup END

  "行を次の行の末尾につける(コメントなどに使う)
  map ff ddpkJ
"}}}

"------------------------------------------------------
"NERDtree(ファイルツリー)の設定
"------------------------------------------------------
let file_name = expand("%")
"let g:NERDTreeDirArrows=0
if has('vim_starting') &&  file_name == ""
  autocmd VimEnter * NERDTree ./
  autocmd VimEnter  <C-w>wi
endif
"Ctrl+eで開閉
nmap <silent> <C-e>      :NERDTreeToggle<CR>
vmap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
omap <silent> <C-e>      :NERDTreeToggle<CR>
imap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
cmap <silent> <C-e> <C-u>:NERDTreeToggle<CR>

