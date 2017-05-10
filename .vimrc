" vim configurations
set timeoutlen=1000
set ttimeoutlen=0
set shiftwidth=2
set tabstop=2
set expandtab

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=","

source ~/.dotfiles/vim/plugin.vim
source ~/.dotfiles/vim/powerline.vim
source ~/.dotfiles/vim/mappings.vim
source ~/.dotfiles/vim/autocmds.vim
source ~/.dotfiles/vim/functions.vim

" -------------------- General Configs --------------------
set number
set relativenumber
set showcmd	"Show incomplete commands

" ---------------- Invisible Characters ---------
set list
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
highlight SpecialKey ctermbg=none " make the highlighting of tabs less annoying
highlight NonText ctermfg=237 " make the highlighting of eol less annoying
highlight VertSplit ctermbg=none " make the vertsplit slim
set showbreak=↪
set fillchars=vert:│,fold:─

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

