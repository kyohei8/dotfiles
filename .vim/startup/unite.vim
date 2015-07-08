let g:unite_enable_start_insert = 1
" F1 - F4
nnoremap <silent> <F1> :<C-u>Unite buffer file_mru<CR>
nnoremap <silent> <F2> :<C-u>Unite file<CR>
nnoremap <silent> <F3> :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> <F4> :<C-u>Unite grep:. -buffer-name=search-buffer<CR>

" unite.vim上でのキーマッピング
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " 単語単位からパス単位で削除するように変更
  imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
  " ESCキーを2回押すと終了する
  nmap <silent><buffer> <ESC><ESC> q
  imap <silent><buffer> <ESC><ESC> <ESC>q
endfunction
