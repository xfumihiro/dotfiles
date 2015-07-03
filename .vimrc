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
"set showbreak=↪

" ---------------- Search -----------------
set incsearch	" Find the next match as we type the search
set hlsearch	" Highlight searches by default
set ignorecase	" Ignore case when searching...
set smartcase	" ...unless we type a capital
" nnoremap <esc> :noh<CR><esc> " Shortcut to clear the search highlight

" ---------------- Mapping -----------------

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
