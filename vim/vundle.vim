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
"Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'tmux-plugins/vim-tmux'
"Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-bundler'
"Plugin 'tpope/vim-rails'
Plugin 'skalnik/vim-vroom'
Plugin 'nvie/vim-flake8'
Plugin 'klen/python-mode'
"Plugin 'tfnico/vim-gradle'
Plugin 'douglascrockford/jslint'
Plugin 'moll/vim-node'
Plugin 'pangloss/vim-javascript'
"Plugin 'lambdatoast/elm.vim'
Plugin 'ElmCast/elm-vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'janko-m/vim-test'
Plugin 'vim-erlang/vim-erlang-compiler'
Plugin 'vim-erlang/vim-erlang-tags'
Plugin 'edkolev/erlang-motions'
Plugin 'vimwiki/vimwiki'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'mbbill/undotree'


call vundle#end()
filetype plugin indent on
set backspace=2
