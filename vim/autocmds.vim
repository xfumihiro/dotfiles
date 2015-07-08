" -------------------- Auto Commands --------------------
" [auto-reload vimrc]
augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
