"------------------------------------------------------
"NERDtree(ファイルツリー)の設定
"------------------------------------------------------
let NERDTreeShowHidden=0
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=0
let NERDTreeAutoCenter=1
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
"デフォルトでブックマークを表示
let g:NERDTreeShowBookmarks=1
let g:NERDTreeWinSize=25
