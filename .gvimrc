set background=dark
colorscheme PaperColor

set cmdheight=1
set guioptions-=T                   " ツールバーを表示しない
set guioptions+=b                   "水平スクロールバーを表示

set lines=40                  "縦幅
set columns=120               "横幅
set lsp=1                     "行間
set shiftwidth=2              "タブサイズ


"set guifontwide=Source\ Code\ Pro\ for\ Powerline:h12       " フォント設定
"set guifont=Source\ Code\ Pro\ for\ Powerline:h12
set guifontwide=Source\ Han\ Code\ JP\ Normal:h11       " フォント設定
set guifont=Source\ Han\ Code\ JP\ Normal:h11

"全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#a66f66
autocmd BufNewFile,BufRead * match ZenkakuSpace /　/

"常にタブを表示
set showtabline=1
"透明度を変更
set transparency=3
" ウインドウの切り替え
map  gw :macaction selectNextWindow:<CR>
map  gW :macaction selectPreviousWindow:<CR>
