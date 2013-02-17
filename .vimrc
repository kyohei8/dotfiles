" Basics {
    set nocompatible
" }

"Bundles {
  filetype off
  set rtp+=~/dotfiles/.vim/vundle.git/
  call vundle#rc()

  Bundle 'Shougo/neocomplcache'
  Bundle 'Shougo/neosnippet.git'
  Bundle 'Shougo/unite.vim'
  Bundle 'scrooloose/nerdtree'

  Bundle 'pivotal/jasmine'
  Bundle 'tomtom/tcomment_vim'
  Bundle 'pekepeke/titanium-vim'
  Bundle 'taglist.vim'
  Bundle 'ZenCoding.vim'
  Bundle 'vim-coffee-script'
  Bundle 'tpope/vim-surround'
  Bundle 'tpope/vim-haml'
  Bundle 'tpope/vim-rails'
  Bundle 'nathanaelkane/vim-indent-guides'
  Bundle 'Source-Explorer-srcexpl.vim'
  Bundle 'thinca/vim-ref'
  Bundle 'thinca/vim-quickrun'
  "js環境
  Bundle 'JavaScript-syntax'
  Bundle 'pangloss/vim-javascript'
  "jqueryリファレンス
  Bundle 'soh335/vim-ref-jquery'
  "powerline
  Bundle 'Lokaltog/vim-powerline'
  Bundle 'Lokaltog/powerline-fonts'
  filetype plugin indent on     " required!
"}

"ステータスラインに文字コードと改行コードを表示
"set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
"set statusline=[*%n]\ %<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

"pathogenの読み込み
"call pathogen#runtime_append_all_bundles()
"call pathogen#infect()


"折りたたみ設定
set foldmethod=indent
set fdc=4
let perl_fold=1
set foldlevel=100 "Don't autofold anything

set autoindent                      "新しい行のインデントを現在行と同じにする
set backupdir=$HOME/.vimbackup      "バックアップファイルを作るディレクトリ
set browsedir=buffer                "ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
"set clipboard=unnamed              "クリップボードをWindowsと連携
"set directory=$HOME/vimbackup      "スワップファイル用のディレクトリ
set expandtab                       "タブの代わりに空白文字を挿入する
set hidden                          "変更中のファイルでも、保存しないで他のファイルを表示
set list                            "タブ文字、行末など不可視文字を表示する "インクリメンタルサーチを行set incsearch
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:< "listで表示される文字のフォーマットを指定する
set number                          "行番号を表示する
"set shiftwidth=4                   "シフト移動幅
set showmatch                       "閉じ括弧が入力されたとき、対応する括弧を表示する
set smartcase                       "検索時に大文字を含んでいたら大/小を区別
set smartindent                     "新しい行を作ったときに高度な自動インデントを行う
set smarttab                        "行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
"set tabstop=4                      "ファイル内の  が対応する空白の数
set whichwrap=b,s,h,l,<,>,[,]       "カーソルを行頭、行末で止まらないようにする
"set nowrapscan                     "検索をファイルの先頭へループしない

"履歴を50件に
set history=50

" Status Line
let g:Powerline_symbols = 'fancy'
set t_Co=256

set nowrap "折り返さない
set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932
set guioptions+=b "水平スクロールバーを表示
set backspace=indent,eol,start "インデントを削除
set wildmenu "コマンドライン補完するときに補完候補を表示する
au BufNewFile,BufRead * set iminsert=0 "日本語入力をリセット
au BufNewFile,BufRead * set tabstop=2 shiftwidth=2 "タブ幅をリセット
set colorcolumn=100 "100列目を強調表示 

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

  "も:
  nmap ; :

  "とりあえずDbに保存
  map  sa :savesa ~/Dropbox/private/vimdata

  "検索語が画面の真ん中に来るようにする
  nmap n nzz 
  nmap N Nzz 
  nmap * *zz 
  nmap # #zz 
  nmap g* g*zz 
  nmap g# g#zz

  " カーソルを自動的に()の中へ
  imap {} {}<Left>
  imap [] []<Left>
  imap () ()<Left>
  imap "" ""<Left>
  imap '' ''<Left>
  imap <> <><Left>
  imap // //<left>
  imap /// ///<left>

  "eclipseのあの動き
  map <silent> <A-Up> dd<Up>P
  map <silent> <C-A-Up> yyP
  map <silent> <A-Down> ddp
  map <silent> <C-A-Down> yyp

  "tabの動き
  nnoremap <silent> <A-left> <ESC>:tabn<CR>
  nnoremap <silent> <A-Right> <ESC>:tabp<CR>
  nnoremap <C-TAB> :tabnext<CR>
  nnoremap <C-S-TAB> :tabprev<CR>

  "Cmd+Enterでフルスクリーン
  map <D-enter> :set fullscreen! <CR>
  "imap <D> <ESC>
  " コンマの後に自動的にスペースを挿入
  inoremap , ,<Space>

  " 線を引く
  inoremap <F8> <C-R>=repeat('-', 80 - virtcol('.'))<CR>
  " 外部で変更のあったファイルを自動的に再読み込みする
  " http://vim-users.jp/2011/03/hack206/
  augroup vimrc-checktime
    autocmd!
    autocmd WinEnter * checktime
  augroup END
  "行を次の行の末尾につける(コメントなどに使う)
  map ff ddpkJ
"}

" ▼文字コードの自動認識
if &encoding !=# 'utf-8'
  set encoding=japan
  set fileencoding=japan
endif
if has('iconv')
  let s:enc_euc = 'euc-jp'
  let s:enc_jis = 'iso-2022-jp'
  " iconvがeucJP-msに対応しているかをチェック
  if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'eucjp-ms'
    let s:enc_jis = 'iso-2022-jp-3'
  " iconvがJISX0213に対応しているかをチェック
  elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'euc-jisx0213'
    let s:enc_jis = 'iso-2022-jp-3'
  endif
  " fileencodingsを構築
  if &encoding ==# 'utf-8'
    let s:fileencodings_default = &fileencodings
    let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
    let &fileencodings = &fileencodings .','. s:fileencodings_default
    unlet s:fileencodings_default
  else
    let &fileencodings = &fileencodings .','. s:enc_jis
    set fileencodings+=utf-8,ucs-2le,ucs-2
    if &encoding =~# '^\(euc-jp\|euc-jisx0213\|eucjp-ms\)$'
      set fileencodings+=cp932
      set fileencodings-=euc-jp
      set fileencodings-=euc-jisx0213
      set fileencodings-=eucjp-ms
      let &encoding = s:enc_euc
      let &fileencoding = s:enc_euc
    else
      let &fileencodings = &fileencodings .','. s:enc_euc
    endif
  endif
  " 定数を処分
  unlet s:enc_euc
  unlet s:enc_jis
endif
" 日本語を含まない場合は fileencoding に encoding を使うようにする
if has('autocmd')
  function! AU_ReCheck_FENC()
    if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
      let &fileencoding=&encoding
    endif
  endfunction
  autocmd BufReadPost * call AU_ReCheck_FENC()
endif
" 改行コードの自動認識
set fileformats=unix,dos,mac
" □とか○の文字があってもカーソル位置がずれないようにする
if exists('&ambiwidth')
  set ambiwidth=double
endif
" ▲文字コードの自動認識


"ネオコン
" neocomplcache settings
" http://vim-users.jp/2010/10/hack177/
" http://vim-users.jp/2010/11/hack185/
" http://vim-users.jp/2011/01/hack193/

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" 起動時に有効
let g:neocomplcache_enable_at_startup = 1
"2文字で有効
let g:neocomplcache_auto_completion_start_length = 2
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
"日本語をキャッシュしない
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
" Plugin key-mappings.
imap <C-k> <Plug>(neocomplcache_snippets_expand)
smap <C-k> <Plug>(neocomplcache_snippets_expand)
" Ctrl+g で1文字削除
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
" SuperTab like snippets behavior. タブで展開
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
"inoremap <expr><CR> neocomplcache#smart_close_popup() . "\<CR>"
" 補完候補が表示されている場合は確定。そうでない場合は改行
inoremap <expr><CR>  pumvisible() ? neocomplcache#close_popup() : "<CR>"
"inoremap <expr><CR>  neocomplcache#sources#snippets_complete#expandable()" ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? neocomplcache#close_popup() : "<CR>"
"Tabキーの動作
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
  endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

"------------------------------------------------------
"独自定義function
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
"

"------------------------------------------------------
"JavascriptからCoffeescriptを生成するfunction ---------
"------------------------------------------------------
function! ReplaceCoffee()
  %s/var //g
  %s/;//g
  %s/function//g
  %s/,$//g
  %s/^.\+}$\n//g
  %s/\/\//#/g
  %s/\t/  /g
  %s/===/is/g
  %s/&&/and/g
  %s/||/or/g
  gg=G
endfunction
nmap <silent>  ;s  :call ReplaceCoffee()<CR>

"ノーマルモードで改行を挿入
"noremap <CR> li<CR><ESC>
noremap ;js

"Apexlogを見やすくする
function! ReplaceLog()
  :cal SetSyn("logtalk")
  try
    %s/^.\+|$\n//g
    "%s/^.\+|//g
    "%s/^.\+)$\n//g
    %s/^.\+|$\n//g
    :call set syntax=Logtalk
  catch
  endtry
endfunction
nmap <silent>  ;log :call ReplaceLog()<CR>

"jquery の ref
let g:ref_jquery_path = '~\Documents\jqapi\docs'


"------------------------------------
" coffeeScript Setting
"------------------------------------
" vimにcoffeeファイルタイプを認識させる
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
"リアルタイムプレビュー
let coffee_compile_vert = 1
au BufWritePost *.coffee :CoffeeCompile watch vert
"------------------------------------
" vim-coffee-script
"------------------------------------
" 保存時にコンパイル
autocmd BufWritePost *.coffee silent CoffeeMake! -cb | cwindow | redraw!

"------------------------------------
" jasmine.vim
"------------------------------------
" ファイルタイプを変更
function! JasmineSetting()
  au BufRead,BufNewFile *Helper.js,*Spec.js  set filetype=jasmine.javascript
  au BufRead,BufNewFile *Helper.coffee,*Spec.coffee  set filetype=jasmine.coffee
  au BufRead,BufNewFile,BufReadPre *Helper.coffee,*Spec.coffee  let b:quickrun_config = {'type' : 'coffee'}
  call jasmine#load_snippets()
  map <buffer> <leader>m :JasmineRedGreen<CR>
  command! JasmineRedGreen :call jasmine#redgreen()
  command! JasmineMake :call jasmine#make()
endfunction
au BufRead,BufNewFile,BufReadPre *.coffee,*.js call JasmineSetting()

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

"------------------------------

"------------------------------------
"srcexpl.vim
"------------------------------------
"タグを生成
let g:SrcExpl_UpdateTags = 1

