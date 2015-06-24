scriptencoding utf-8

" Basics {{{
    set t_Co=256
    set nowrap                          "折り返さない
    set wildmenu                        "コマンドライン補完するときに補完候補を表示する
    set noundofile                      "undoファイルを無効化
    "set cursorline                      "カーソルの強調表示
    set imdisable                       "コマンドモードでIMEを無効化(kaoriya限定)

    set helplang=ja,en                  "日本語のヘルプを表示

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

    set history=120                      "履歴を50件に

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
  NeoBundle 'itchyny/lightline.vim'
  NeoBundle 'jiangmiao/auto-pairs'
  "NeoBundle 'ryanoasis/vim-webdevicons'
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
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
" }}}

"折りたたみ設定
set foldmethod=indent
set fdc=4
let perl_fold=1
set foldlevel=100

"キーマップ
source ~/.vim/startup/mapping.vim

" 外部で変更のあったファイルを自動的に再読み込みする
" http://vim-users.jp/2011/03/hack206/
augroup vimrc-checktime
  autocmd!
  autocmd WinEnter * checktime
augroup END

"------------------------------------------------------
"NERDtree(ファイルツリー)の設定
"------------------------------------------------------
let NERDTreeShowHidden=0
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=0
let NERDTreeAutoCenter=1
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
"デフォルトでブックマークを表示
let g:NERDTreeShowBookmarks=1

"------------------------------------
" indent_guides
"------------------------------------
" インデントの深さに色を付ける
let g:indent_guides_start_level=2
let g:indent_guides_auto_colors=0
let g:indent_guides_enable_on_vim_startup=0
let g:indent_guides_color_change_percent=20
let g:indent_guides_guide_size=1
let g:indent_guides_space_guides=1

hi IndentGuidesOdd  ctermbg=249
hi IndentGuidesEven ctermbg=235
au FileType coffee,ruby,javascript,python,haml,eruby IndentGuidesEnable
nmap <silent><Leader>ig <Plug>IndentGuidesToggle


"------------------------------------
" lightline
"------------------------------------
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }


