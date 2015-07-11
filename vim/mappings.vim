" ---------------- Mapping -----------------
nnoremap ; :| " Save the shift key

nnoremap Q <nop>| " Prevent accidentally enter "Ex Mode"

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <silent> <Leader>/ :let @/ = ""<CR>| " Clear the search highlight

nnoremap <Leader>t :enew<CR>| " Open a new buffer
nnoremap <Leader><Leader>l :bnext<CR>|	" Move to the next buffer
nnoremap <Leader><Leader>h :bprevious<CR>|	" Move to the previous buffer
nnoremap <Leader>bq :bp <BAR> bd #<CR>| " Close the buffer
nnoremap <Leader>bl :ls<CR>| " List all the buffers and their status

nnoremap <C-t> :TagbarToggle<CR>
