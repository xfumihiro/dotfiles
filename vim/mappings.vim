" Save the shift key
nnoremap ; :
" Prevent accidentally enter Ex Mode
nnoremap Q <nop>

" Navigations
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Leader>n :bprevious<CR>
nnoremap <Leader>m :bnext<CR>

" Resizing window splits
nnoremap j <C-w>-
nnoremap k <C-w>+
nnoremap h <C-w><
nnoremap l <C-w>>

" Clear the search highlight
nnoremap <silent> <Leader>/ :let @/ = ""<CR>

" Buffer
" Open a new buffer
nnoremap <Leader>t :enew<CR>
" Close the buffer
nnoremap <Leader>bq :bp <BAR> bd #<CR>
" List all the buffers and their status
nnoremap <Leader>bl :ls<CR>

" Functions
vnoremap <Leader>s :sort<CR>

nnoremap <silent> <C-z> :ZoomToggle<CR>

" Plugins
nnoremap <C-t> :TagbarToggle<CR>
