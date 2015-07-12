" -------------------- Auto Commands --------------------
" [auto-reload vimrc]
augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" [Restore cursor to file position in previous editing session]
" note: need permission to edit the viminfo file
function! ResCur()
	if line("'\"") <= line("$")
		normal! g`"
		return 1
	endif
endfunction

augroup resCur
	autocmd!
	autocmd BufWinEnter * call ResCur()
augroup END
