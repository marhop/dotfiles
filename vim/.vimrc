" General.
set nocompatible
filetype plugin indent on

" Plugins (see <https://github.com/junegunn/vim-plug>).
silent! call plug#begin()
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-fugitive'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-repeat'
Plug 'jayflo/vim-skip'
Plug 'lifepillar/vim-solarized8'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'chrisbra/matchit'
Plug 'junegunn/vim-easy-align'
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
set background=dark
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme solarized8_flat
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
noremap Q gqip
noremap <tab> <c-]>
noremap <F12> :vertical belowright terminal<CR>

" User commands.
com -range=% -nargs=? Cnt :<line1>,<line2>s/<args>//gn
com TODO :vimgrep TODO %

" Plugin specific settings.
let g:SuperTabDefaultCompletionType="context"
let g:ale_completion_enabled=1
nmap gl <Plug>(EasyAlign)
xmap gl <Plug>(EasyAlign)
