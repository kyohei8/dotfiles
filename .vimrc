filetype off
set nocompatible

" <plug =======================================================================
call plug#begin('~/.vim/plugged')

" Plugin
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/indentLine'
" Plug 'tpope/vim-git'
" Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'moll/vim-bbye'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tmhedberg/matchit'
Plug 'ctrlpvim/ctrlp.vim' "ファイル検索
Plug 'tacahiroy/ctrlp-funky' "関数検索
Plug 'suy/vim-ctrlp-commandline' "コマンドライン検索
Plug 't9md/vim-smalls' "easymotion的なやつ
Plug 'rking/ag.vim' " ag
" Plug 'craigemery/vim-autotag'
" Plug 'majutsushi/tagbar'
Plug 'ap/vim-css-color'
Plug 'KabbAmine/vCoolor.vim'
Plug 'junegunn/vim-easy-align'
Plug 'thinca/vim-quickrun'

" input extend
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'kana/vim-submode'
Plug 'nelstrom/vim-visual-star-search' " * で次を検索
Plug 'AndrewRadev/switch.vim'
Plug 'Valloric/YouCompleteMe'
" -> then
"  $ cd ~/.vim/plugged/YouCompleteMe
"  $ ./install.py  --tern-completer
" vimが起動しな起動しなくなるので brew unlink python する
Plug 'terryma/vim-multiple-cursors'
Plug 'thinca/vim-visualstar'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Langage
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'cakebaker/scss-syntax.vim'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'einars/js-beautify', { 'for': ['javascript', 'jsx'] }
Plug 'maksimr/vim-jsbeautify', { 'for': ['javascript','html','css'] }
Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx', 'jsx'] }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'sophacles/vim-processing', { 'for': 'processing' }
Plug 'digitaltoad/vim-pug', { 'for': 'pug' }
Plug 'slim-template/vim-slim', { 'for': 'slim' }
Plug 'vim-jp/vim-go-extra', { 'for': 'go' }
Plug 'nicklasos/vim-jsx-riot'
" YouCompleteMeのJS改善
Plug 'ternjs/tern_for_vim', { 'do': 'npm install', 'for': ['javascript', 'javascript.jsx'] }
Plug 'neomake/neomake'
Plug 'benjie/neomake-local-eslint.vim'

" Tool
Plug 'rizzatti/dash.vim'

" Theme
Plug 'nanotech/jellybeans.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'dfxyz/CandyPaper.vim'
Plug 'Wutzara/vim-materialtheme'
Plug 'idbrii/vim-sandydune'
Plug 'joshdick/onedark.vim'

call plug#end()
"==============================================================================>
"
"<Basics========================================================================
set shell=/usr/local/bin/zsh\ -i

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
source $VIMRUNTIME/macros/matchit.vim " Vimの「%」を拡張する
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
set title                           "ウィンドウタイトルを設定
set noerrorbells visualbell t_vb=   "ベルを無効

au BufNewFile,BufRead * set iminsert=0 "日本語入力をリセット
au BufNewFile,BufRead * set tabstop=2 shiftwidth=2 "タブ幅をリセット
au BufRead,BufNewFile *.tag :set filetype=html " Riotjsの読込設定

"==============================================================================>

" Highlight .js as .jsx
let g:jsx_ext_required = 0

" Encode {{{
" set encoding=utf-8
" set fenc=utf-8
" set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
" }}}
"

"折りたたみ設定
set foldmethod=indent
set fdc=4
let perl_fold=1
set foldlevel=100

"------------------------------------------------------
" キーマップ
"------------------------------------------------------
source ~/.vim/startup/mapping.vim

"------------------------------------------------------
" JavaScript
"------------------------------------------------------
" let g:javascript_enable_domhtmlcss = 1
" let g:javascript_ignore_javaScriptdoc = 1
let g:javascript_plugin_jsdoc = 1

"------------------------------------------------------
" neomake
" (eslint check)
"------------------------------------------------------
let g:neomake_javascript_enabled_makers = ['eslint', 'flow']
let g:neomake_jsx_enabled_makers = ['eslint', 'flow']
let g:neomake_verbose = 0
let g:neomake_open_list = 2 " 1 open list and move cursor 2 open list without move cursor
let g:neomake_list_height = 5

if has('mac') " {{{
  let g:neomake_error_sign = {
        \ 'text': '😡',
        \ 'texthl': 'SignColumn',
        \ }
  let g:neomake_warning_sign = {
        \ 'text': '😠',
        \ 'texthl': 'SignColumn',
        \ }
endif " }}}

" run neomake on the current file on every write
autocmd! BufWritePost * Neomake


"------------------------------------------------------
" GoLang
"------------------------------------------------------
if $GOROOT != ''
  set rtp+=$GOROOT/misc/vim
endif
" gocodeを読み込む
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")

"------------------------------------
" ultisnips
"------------------------------------
let g:UltiSnipsSnippetsDir = "~/.vim/UltiSnips"
" Trigger configuration.
let g:UltiSnipsExpandTrigger="<c-space>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"------------------------------------------------------
" ag.vim
"------------------------------------------------------
let g:ag_working_path_mode="r"

"------------------------------------------------------
" YouCompleteMe
"------------------------------------------------------
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_cache_omnifunc = 1
let g:ycm_complete_in_comments_and_strings = 1
let g:ycm_min_num_identifier_candidate_chars = 3
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_collect_identifiers_from_tags_files = 1

let g:ycm_filetype_blacklist = {
  \ 'tagbar' : 1,
  \ 'vimwiki' : 1,
  \ 'json' : 1
  \ }

"------------------------------------------------------
" tern js
"------------------------------------------------------
let g:tern#command = ['tern', '--no-port-file']
let g:tern_show_argument_hints='on_hold'
let g:tern_map_keys=1
let g:tern_show_signature_in_pum = 1

"------------------------------------------------------
" emmet
"------------------------------------------------------
let g:user_emmet_install_global = 0
autocmd FileType html,ejs,css,sass,scss,stylus,less EmmetInstall
" Emmet keymap
imap <C-f> <C-y>,

"------------------------------------------------------
" CtrlP
"------------------------------------------------------
let g:ctrlp_show_hidden=1 " ドットファイルも検索対象にする
let g:ctrlp_by_filename=1
let g:ctrlp_match_window = 'max:10;results:100'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v([\/]\.(git|hg|svn)|node_modules|bower_conpnent)',
  \ 'file': '\v\.(png|jpg|jpeg|gif|svg|swp|swp|swo)$'
  \ }
let g:ctrlp_extensions = ['funky', 'commandline'] " ctrlpの拡張

" CtrlPCommandLineの有効化
command! CtrlPCommandLine call ctrlp#init(ctrlp#commandline#id())

" CtrlPFunkyの絞り込み検索設定
let g:ctrlp_funky_matchtype = 'path'

if executable('ag')
  let g:ctrlp_use_caching=0 " CtrlPのキャッシュを使わない
  let g:ctrlp_user_command='ag %s -i --hidden -g ""' " 「ag」の検索設定
endif

nmap<space>t :CtrlPBuffer<CR>

"------------------------------------------------------
" Tagbar
"------------------------------------------------------
nmap <F8> :TagbarToggle<CR>

"------------------------------------------------------
" smalls
"------------------------------------------------------
nmap <c-s> <Plug>(smalls)
omap <c-s> <Plug>(smalls)
xmap <c-s> <Plug>(smalls)
" set ignorecase smartcase

"------------------------------------------------------
" vCoolor
" alt-c で起動
"------------------------------------------------------
nmap ç :VCoolor<CR>

"------------------------------------------------------
" switch.vim
" command: g-s
"------------------------------------------------------
let g:switch_custom_definitions = [
  \ ['absolute', 'relative', 'fixed', 'static'],
  \ ['inline', 'block', 'inline-block', 'table', 'table-cell']
\]
"------------------------------------------------------
"NERDtree(ファイルツリー)の設定
"------------------------------------------------------
source ~/.vim/startup/nerdtree.vim

"------------------------------------
" lightline
"------------------------------------
source ~/.vim/startup/lightline.vim

"------------------------------------
" vim jsdoc
" Speac -> J でjsdocを生成
"------------------------------------
let g:jsdoc_default_mapping = 0
let g:jsdoc_input_description = 1
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_enable_es6 = 1
nnoremap <silent> <Space>J :JsDoc<CR>

"------------------------------------
" indentLine
"------------------------------------
let g:indentLine_color_gui = '#424242'
nmap <silent><Leader>i <Plug>IndentLinesToggle
"let g:indentLine_char = '¦'

"------------------------------------
" by filetype w/snippets
"------------------------------------
source ~/.vim/startup/filetype.vim

"------------------------------------
" vim-easy-align
" ex: vipga<right>:
"------------------------------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"------------------------------------
" vim-quickrun
"
" :QuickRun
"------------------------------------
" markdownをMarkedで開く
let g:quickrun_config = {}
let g:quickrun_config.markdown = {
  \ 'outputter' : 'null',
  \ 'command'   : 'open',
  \ 'cmdopt'    : '-a',
  \ 'args'      : 'Marked\ 2',
  \ 'exec'      : '%c %o %a %s',
  \ }

function! OpenMarkdown()
  if &filetype == "markdown"
    !open -a Marked\ 2 %
  endif
endfunction

nmap <silent> <F9> :call OpenMarkdown()<CR>




function! UnUglyfyfirst()
  normal gg
  1,.d
  normal G
  .,$d
endfunction



" unuglyfy function
function! UnUglyfy()
  %s/!0/true/gc
  %s/!1/false/gc
  %s/\v(\s)(\.\d+)/\10\2/gc
  %s/e3/000/gc
  %s/e4/0000/gc
  %s/e5/00000/gc
  %s/},/};\r\r/gc
  %s/,/;\r/gc
  " %s/,/;\rvar/gc
  %s/void 0/undefined/gc
  /\v(.+)\&\&(.+;)
  %s//if(\1){\r\2\r}/gc
  /\v(.+)\|\|(.+;)
  %s//if(!\1){\r\2\r}/gc
  noh
endfunction

function! Var2class()
  normal f";gevb"zy0W*N
  execute "%s//" . @z . "/gc"
endfunction

" nmap <silent> <C-F9> :call UnUglyfyfirst()<CR>
" nmap <silent> <F9> :call UnUglyfy()<CR>
" nmap <silent> <F10> :call Var2class()<CR>
nmap <silent> <space><space> f,r;a<CR><Esc>
nmap <silent> <space>f Vj]}<space>=
" nmap <silent> <space>g F(lvf)h:s/\v(.+) (.+\=) (.+)/\3 \2 \1/gc<CR>

function! ToEs6()
  %s/\vvar (\a+) \= require\(('(\w|.)+')\);/import \1 from \2;/g
  %s/\vvar ([A-Z]\a+) \= function\(\)/class \1/gc
  %s/\v[A-Z]\a+\.prototype.(\a+) \= f\a+/\1/g
  %s/\vmodule.exports \= /export default /g


endfunction

" nmap <silent> <F6> :call ToEs6()<CR>
