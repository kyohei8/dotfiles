"------------------------------------------------------
"NERDtree(ファイルツリー)の設定
"------------------------------------------------------
let NERDTreeIgnore =
            \ ['node_modules', 'dist', '\.pyc', '\.git$', '\~$',
            \  '\.swo$', '\.hg', '\.svn', '\.swp',
            \  '\.bzr', '\.DS_Store', '\.sass-cache',
            \  '\.idea']
let NERDTreeShowHidden=0
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeAutoCenter=1
let file_name = expand("%")
"デフォルトでブックマークを表示
let NERDTreeShowBookmarks=1
"自動的にchange directoryする
let NERDTreeChDirMode=2
"let g:NERDTreeDirArrows=0

" Close NERDTree when it's the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

if has('vim_starting') && file_name == ""
  autocmd VimEnter * NERDTree ./
  autocmd VimEnter  <C-w>wi
endif
"F2で開閉
nmap <silent> <F2>      :NERDTreeToggle<CR>
vmap <silent> <F2> <Esc>:NERDTreeToggle<CR>
omap <silent> <F2>      :NERDTreeToggle<CR>
imap <silent> <F2> <Esc>:NERDTreeToggle<CR>
cmap <silent> <F2> <C-u>:NERDTreeToggle<CR>
let g:NERDTreeWinSize=25
