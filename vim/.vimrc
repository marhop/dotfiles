" General.
set nocompatible
filetype plugin indent on

" Plugins (see <https://github.com/junegunn/vim-plug>).
silent! call plug#begin()
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-fugitive'
Plug 'jamessan/vim-gnupg'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-repeat'
Plug 'jayflo/vim-skip'
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'sukima/xmledit'
Plug 'tpope/vim-characterize'
Plug 'neovimhaskell/haskell-vim'
Plug 'w0rp/ale'
call plug#end()

" Appearance.
syntax on
set number
set linebreak
set winwidth=86
set foldmethod=syntax
set laststatus=2
set statusline=%r%f%m%=%y[%{&enc}][%{&ff}]\ row:%l/%L\ col:%c%V
set background=dark
colorscheme solarized
set diffopt+=vertical

" Movement and searching.
set incsearch
set ignorecase
set smartcase

" File opening.
set path+=**
set wildignorecase

" Text formatting.
set encoding=utf-8
set fileformat=unix
set backspace=indent,eol,start
set textwidth=80
set nojoinspaces

" Tabs and indenting.
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set shiftround
set nocindent

" Key mappings.
inoremap jk <esc>
noremap ö :
noremap Ö q:
noremap <space> /
noremap ä }
noremap Ä {
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>
noremap ; ,
noremap , ;
noremap Y y$
noremap Q gqip
noremap <tab> <c-]>

" User commands.
com -range=% -nargs=? Cnt :<line1>,<line2>s/<args>//gn
