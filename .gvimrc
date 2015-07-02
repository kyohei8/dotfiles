colorscheme molokai

set cmdheight=1
set guioptions-=T
set guioptions+=b                   "水平スクロールバーを表示

set lines=40                  "縦幅
set columns=120               "横幅
set lsp=1                     "行間
set shiftwidth=2              "タブサイズ

" auto-pairsでIMEが効かなくなるのを修正
" http://qiita.com/amagawawaw/items/4a46d08f6c3e456e18d0
set imdisable

"
"set guifontwide=Source\ Code\ Pro\ for\ Powerline:h12       " フォント設定
"set guifont=Source\ Code\ Pro\ for\ Powerline:h12
set guifontwide=Source\ Han\ Code\ JP\ Normal:h12       " フォント設定
set guifont=Source\ Han\ Code\ JP\ Normal:h12

"全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#a66f66
autocmd BufNewFile,BufRead * match ZenkakuSpace /　/

"常にタブを表示
set showtabline=2
"透明度を変更
set transparency=0
map  gw :macaction selectNextWindow:
map  gW :macaction selectPreviousWindow:i


"------------------------------------
" indentLine
"------------------------------------
let g:indentLine_color_gui = '#292929'
nmap <silent><Leader>i <Plug>IndentLinesToggle
"let g:indentLine_char = '¦'
