" vim configurations
set timeoutlen=1000
set ttimeoutlen=0

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=","

source vim/plugin.vim
source vim/powerline.vim
source vim/mappings.vim
source vim/autocmds.vim
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

" -------------------- Persistent Undo -------------------
set undofile
set undodir=~/.vim/undofiles

" -------------------- Buffer Configs --------------------
set hidden	" Allow modified buffers to be hidden

