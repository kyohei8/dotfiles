"カラー
colorscheme molokai
set cmdheight=1
set guioptions-=T
"縦幅
set lines=40
"横幅
set columns=120
set lsp=1
" タブサイズ
set shiftwidth=2
" フォント設定
set guifontwide=Rickty:h12
set guifont =Ricty:h14
"全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/
"常にタブを表示
set showtabline=2
"透明度を変更
set transparency=0
map  gw :macaction selectNextWindow:
map  gW :macaction selectPreviousWindow:i

"------------------------------------
" indent_guides
" colorlist : http://choorucode.wordpress.com/2011/07/29/vim-chart-of-color-names/
"------------------------------------
" インデントの深さに色を付ける
let g:indent_guides_start_level=1
let g:indent_guides_auto_colors=0
let g:indent_guides_enable_on_vim_startup=0
let g:indent_guides_color_change_percent=20
let g:indent_guides_guide_size=2
let g:indent_guides_space_guides=1

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=gray10
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=gray20
