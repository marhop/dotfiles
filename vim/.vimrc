" General.
set nocompatible
filetype plugin indent on

" Plugins (see <https://github.com/junegunn/vim-plug>).
silent! call plug#begin()
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-fugitive'
Plug 'preservim/vim-markdown'
Plug 'tpope/vim-repeat'
Plug 'jayflo/vim-skip'
Plug 'nordtheme/vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'chrisbra/matchit'
Plug 'sukima/xmledit'
Plug 'tpope/vim-characterize'
Plug 'neovimhaskell/haskell-vim'
Plug 'dense-analysis/ale'
Plug 'marhop/vim-warc'
Plug 'MTDL9/vim-log-highlighting'
call plug#end()

" Appearance.
syntax on
set number
set linebreak
set winwidth=86
set foldmethod=syntax
set laststatus=2
set statusline=%r%f%m%=%{&ft}\ %{&enc}\ %{&bomb?'BOM\ ':''}%{&ff}\ %l/%L\ %c%V
set fillchars+=vert:\ 
set termguicolors
let g:nord_uniform_status_lines=1
colorscheme nord
set conceallevel=2
set diffopt+=vertical
set display+=uhex

" Movement and searching.
set incsearch
set ignorecase
set smartcase
set grepprg=ag\ --vimgrep

" File opening and command line completion.
set path+=**
set wildignorecase
set wildmenu
set wildoptions+=pum

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
noremap ; ,
noremap , ;
noremap Y y$
noremap <tab> <c-]>
noremap <F12> :vertical belowright terminal<CR>

" User commands.
com -range=% -nargs=? Cnt :<line1>,<line2>s/<args>//gn
com TODO :vimgrep TODO %

" Plugin specific settings.
let g:SuperTabDefaultCompletionType="context"
let g:ale_completion_enabled=1
