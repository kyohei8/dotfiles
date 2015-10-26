"------------------------------------------------------
"NERDtree(ファイルツリー)の設定
"------------------------------------------------------
let NERDTreeIgnore =
            \ ['\.pyc', '\.git$', '\~$', 
            \  '\.swo$', '\.hg', '\.svn', '\.swp',
            \  '\.bzr', '\.DS_Store', '\.sass-cache',
            \  '\.idea']
let NERDTreeShowHidden=0
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeAutoCenter=1
let file_name = expand("%")
"let g:NERDTreeDirArrows=0
if has('vim_starting') &&  file_name == ""
  autocmd VimEnter * NERDTree ./
  autocmd VimEnter  <C-w>wi
endif
"Ctrl+eで開閉
nmap <silent> <F2>      :NERDTreeToggle<CR>
vmap <silent> <F2> <Esc>:NERDTreeToggle<CR>
omap <silent> <F2>      :NERDTreeToggle<CR>
imap <silent> <F2> <Esc>:NERDTreeToggle<CR>
cmap <silent> <F2> <C-u>:NERDTreeToggle<CR>
"デフォルトでブックマークを表示
let g:NERDTreeShowBookmarks=0
let g:NERDTreeWinSize=25
