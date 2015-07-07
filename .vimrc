" vim configurations
set timeoutlen=1000
set ttimeoutlen=0

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=","

" -------------------- Vundle Setup --------------------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'

call vundle#end()
filetype plugin indent on
set backspace=2

" -------------------- Powerline Setup --------------------
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

syntax enable
set background=dark
colorscheme solarized

" -------------------- General Configs --------------------
set number
set relativenumber
set showcmd	"Show incomplete commands

" ---------------- Invisible Characters ---------
set list
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
highlight SpecialKey ctermbg=none " make the highlighting of tabs less annoying
set showbreak=↪

" ---------------- Search -----------------
set incsearch	" Find the next match as we type the search
set hlsearch	" Highlight searches by default
set ignorecase	" Ignore case when searching...
set smartcase	" ...unless we type a capital

" ---------------- Mapping -----------------
nnoremap ; :| " Save the shift key

nnoremap Q <nop>| " Prevent accidentally enter "Ex Mode"

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Silent> <Leader>/ :nohlsearch<CR>| " Clear the search highlight

nnoremap <Leader>t :enew<CR>| " Open a new buffer
nnoremap <Leader><Leader>l :bnext<CR>|	" Move to the next buffer
nnoremap <Leader><Leader>h :bprevious<CR>|	" Move to the previous buffer
nnoremap <Leader>bq :bp <BAR> bd #<CR>| " Close the buffer
nnoremap <Leader>bl :ls<CR>| " List all the buffers and their status

nnoremap <C-t> :TagbarToggle<CR>

" -------------------- Persistent Undo -------------------
set undofile
set undodir=~/.vim/undofiles

" -------------------- Plugin configurations --------------------
" CtrlP - Spped up indexing [http://blog.patspam.com/2014/super-fast-ctrlp]
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
			\ --ignore .git
			\ --ignore .svn
			\ --ignore .hg
			\ --ignore .DS_Store
			\ --ignore "**/*.pyc"
			\ -g ""'

" -------------------- Buffer Configs --------------------
set hidden	" Allow modified buffers to be hidden

" -------------------- Auto Commands --------------------
" [auto-reload vimrc]
augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
