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
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-h> <Left>
"inoremap <C-l> <Right>
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

" qqで閉じる
nmap qq :q<CR>

" ;も:
nmap ; :

"検索語が画面の真ん中に来るようにする
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

"highlighting を無効
map <C-n> :noh<CR>

"eclipseのあの動き
map <silent> <A-Up> dd<Up>P
map <silent> <D-A-Up> yyP
map <silent> <A-Down> ddp
map <silent> <D-A-Down> yyp

" カーソルの移動を変える
noremap <Space>h  ^
noremap <Space>l  $
nnoremap <Space>/  *

"tabの動き
nnoremap <D-right> :tabnext<CR>
nnoremap <D-left> :tabprev<CR>
"バッファ移動
nnoremap <Space>n :bn<CR>
nnoremap <Space>p :bp<CR>

"バッファ画面移動
nnoremap <D-h> <C-w>h
nnoremap <D-j> <C-w>j
nnoremap <D-k> <C-w>k
nnoremap <D-l> <C-w>l

"Cmd+Enterでフルスクリーン
map <D-enter> :set fullscreen! <CR>

" コンマの後に自動的にスペースを挿入
inoremap , ,<Space>

" 'F8'で線を引く
inoremap <F8> <C-R>=repeat('-', 80 - virtcol('.'))<CR>

"行を次の行の末尾につける(コメントなどに使う)
map ff ddpkJ
" その場に改行を挿入
nmap <CR> i<CR><ESC><Right>


