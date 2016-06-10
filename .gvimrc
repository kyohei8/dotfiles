set background=dark
colorscheme onedark

" メニューを英語に
source $VIMRUNTIME/delmenu.vim
set langmenu=none
source $VIMRUNTIME/menu.vim

set cmdheight=1
set guioptions-=T                   " ツールバーを表示しない
set guioptions+=b                   "水平スクロールバーを表示

" 起動時のみ
if has('vim_starting')
  set lines=40                  "縦幅
  set columns=120               "横幅
  " フォント設定
  "set guifontwide=Source\ Han\ Code\ JP\ Normal:h12 こっちを設定すると⌘+で日本語が大きくならない
  set guifont=Source\ Han\ Code\ JP\ Normal:h12
endif

set lsp=1                     "行間
set shiftwidth=2              "タブサイズ

"全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#a66f66
autocmd BufNewFile,BufRead * match ZenkakuSpace /　/

"常にタブを表示
set showtabline=2
"透明度を変更
set transparency=0
" ウインドウの切り替え
map  gw :macaction selectNextWindow:<CR>
map  gW :macaction selectPreviousWindow:<CR>
