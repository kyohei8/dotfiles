"<Leader>キーの設定

" ヘルプを無効化
nmap <F1> <nop>

" spaceからの ----------------------------------------------------------------
".vimrcを開くコマンド<Space+.>
nnoremap <Space>. :<C-u>tabedit $MYVIMRC<CR>
"vimrcを再読み込み <Space+,>
nnoremap <Space>, :<C-u>source $MYVIMRC<Return>
" key mappingを開く
nnoremap <Space>\ :<C-u>tabedit ~/.vim/startup/mapping.vim<Return>

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
" semantic color
nnoremap <Space>s :<C-u>SemanticHighlightToggle<Return>
" -------------------------------------------------------------------------------

"ノーマルモードのIMEを無効化
nnoremap <silent> <C-^> <Nop>

" insertモードから抜ける
inoremap <silent> jj <ESC>
inoremap <silent> kk <ESC>
inoremap <ESC> <ESC>

" カーソルキーを無効化
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

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
map <C-n> :noh<CR>

"eclipseのあの動き
map <silent> <A-Up> dd<Up>P
map <silent> <D-A-Up> yyP
map <silent> <A-Down> ddp
map <silent> <D-A-Down> yyp


"Cmd+Enterでフルスクリーン
map <D-enter> :set fullscreen! <CR>
"tabの動き
nnoremap <D-right> :tabnext<CR>
nnoremap <D-left> :tabprev<CR>

" 'F8'で線を引く
inoremap <F8> <C-R>=repeat('-', 80 - virtcol('.'))<CR>

" その場に改行を挿入
nmap <CR> i<CR><ESC><Right>

" Emmet
imap <C-f> <C-y>,

" tcomment
nmap <C-c> gccj
vmap <C-c> gcj

" Dash.vim
nmap <silent> <C-d> <Plug>DashSearch

" Git (fugitive)
nnoremap <silent> <Space>gb :Gblame<CR>
nnoremap <silent> <Space>gd :Gdiff<CR>
nnoremap <silent> <Space>gs :Gstatus<CR>

" Vimの便利な画面分割＆タブページと、それを更に便利にする方法 " - Qiita http://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca

nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')

