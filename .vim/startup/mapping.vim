"       コマンド                    モード
"  連鎖する  連鎖しない  無効化
"  ----------------------------------------------------------------------------
"  :map      :noremap    :unmap     ノーマル、ビジュアル、選択、演算待ち状態
"  :nmap     :nnoremap   :nunmap    ノーマル
"  :vmap     :vnoremap   :vunmap    ビジュアル、選択
"  :smap     :snoremap   :sunmap    選択
"  :xmap     :xnoremap   :xunmap    ビジュアル
"  :omap     :onoremap   :ounmap    演算待ち状態
"  :map!     :noremap!   :unmap!    挿入、コマンドライン
"  :imap     :inoremap   :iunmap    挿入
"  :lmap     :lnoremap   :lunmap    挿入、コマンドライン、Lang-Arg
"  :cmap     :cnoremap   :cunmap    コマンドライン
"  ----------------------------------------------------------------------------

"<Leader>キーの設定
let mapleader='\'
let g:mapleader='\'
" ヘルプを無効化(Escにする）
nmap <F1> <Nop>
map <F1> <Esc>
imap <F1> <Esc>

" spaceからの〜 ----------------------------------------------------------------
".vimrcを開くコマンド<Space+,>
nnoremap <Space>, :<C-u>tabedit $MYVIMRC<CR>
"vimrcを再読み込み <Space+,>
nnoremap <Space>. :<C-u>source $MYVIMRC<Return>:so ~/.gvimrc<Return>
" key mappingを開く
nnoremap <Space>\ :<C-u>tabedit ~/.vim/startup/mapping.vim<Return>
" snippetを開く
nnoremap <Space>] :<C-u>tabedit ~/.vim/UltiSnips/javascript.snippets<Return>

" カーソルの移動を変える
noremap <Space>h  ^
noremap <Space>l  $
nnoremap <Space>/  *

"バッファ移動
nnoremap <Space>n :bn<CR>
nnoremap <Space>p :bp<CR>
" ウィンドウごとバッファを閉じる
nnoremap <Space>Q :bd<CR>
" ウィンドウは閉じずバッファを閉じる
nnoremap <Space>q :Bdelete<CR>

" 整形
nnoremap <Space>= gg=G''zz
" インデント変更時選択を消さない
xnoremap <  <gv
xnoremap >  >gv
" -------------------------------------------------------------------------------

"ノーマルモードのIMEを無効化
nnoremap <silent> <C-^> <Nop>

" insertモードから抜ける
inoremap <silent> jj <ESC>
inoremap <silent> kk <ESC>
inoremap <ESC> <ESC>

" カーソルキーを無効化(Hard mode)
vnoremap  <Up>     <nop>
vnoremap  <Down>   <nop>
vnoremap  <Left>   <nop>
vnoremap  <Right>  <nop>
noremap   <Up>     <nop>
noremap   <Down>   <nop>
noremap   <Left>   <nop>
noremap   <Right>  <nop>
inoremap  <Up>     <nop>
inoremap  <Down>   <nop>
" inoremap  <Left>   <nop>
inoremap  <Right>  <nop>

" helpを表示
nnoremap <C-h>      :<C-u>help<Space>
nnoremap <C-h><C-h> :<C-u>help<Space><C-r><C-w><CR>

" Ctrl-qで閉じる
nmap <C-q> :q<CR>

"検索語が画面の真ん中に来るようにする
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz
" 行コピー
nmap yy Y

map <F7> :call JsBeautify()<CR>

"highlighting を無効
map <C-y> :noh<CR>

"Cmd+Enterでフルスクリーン
map <D-enter> :set fullscreen! <CR>
"tabの動き
nnoremap <D-right> :tabnext<CR>
nnoremap <D-left> :tabprev<CR>

" 置換 ⌘ +r
"nnoremap <D-r> <S-*>:%s///gc<left><left><left>

" 'F8'で線を引く
inoremap <F8> <C-R>=repeat('-', 80 - virtcol('.'))<CR>

" その場に改行を挿入
nmap <CR> a<CR><ESC><Right>

" tcomment コメントアウト
nmap <C-c> gccj
vmap <C-c> gcj

" Dash.vim
nmap <silent> <C-d> <Plug>DashSearch

" Git (fugitive)
nnoremap <silent> <Space>gb :Gblame<CR>
nnoremap <silent> <Space>gd :Gdiff<CR>
nnoremap <silent> <Space>gs :Gstatus<CR>

" Vimの便利な画面分割＆タブページと、それを更に便利にする方法
" - Qiita http://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sN gt
nnoremap sP gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sn :<C-u>bn<CR>
nnoremap sp :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>

call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')

