" -------------------- CtrlP configurations --------------------
" Spped up indexing [http://blog.patspam.com/2014/super-fast-ctrlp]
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
			\ --ignore .git
			\ --ignore .svn
			\ --ignore .hg
			\ --ignore .DS_Store
			\ --ignore "**/*.pyc"
			\ -g ""'
