source $VIMRUNTIME/defaults.vim

" Packages and plugins.
packadd! matchit
packadd! comment
" See <https://github.com/junegunn/vim-plug>
silent! call plug#begin()
Plug 'nordtheme/vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-fugitive'
call plug#end()

" Appearance.
set linebreak
set winwidth=86
set laststatus=2
set statusline=%r%f%m%=%{&ft}\ %{&enc}\ %{&bomb?'BOM\ ':''}%{&ff}\ %{%Position()%}
set fillchars+=vert:\ 
set termguicolors
let g:nord_uniform_status_lines=1
colorscheme nord
set diffopt+=vertical
set display+=uhex

function Position()
  if &binary
    let offset = line2byte(line('.')) + col('.') - 2
    return printf("%d 0x%x", offset, offset)
  else
    return '%l/%c%V'
endfunction

" Searching.
set ignorecase
set smartcase
set grepprg=rg\ --vimgrep\ --smart-case
set grepformat=%f:%l:%c:%m

" File opening and command line completion.
set path+=**
set wildignorecase
set wildoptions+=pum

" Text formatting.
set encoding=utf-8
set fileformat=unix
set textwidth=80
set nojoinspaces

" Tabs and indenting.
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set shiftround

" Key mappings.
inoremap jk <esc>
noremap ö :
noremap Ö q:
noremap - /
noremap ä }
noremap Ä {
noremap ; ,
noremap , ;
noremap Y y$

" User commands.
com -range=% -nargs=? Cnt :<line1>,<line2>s/<args>//gn
com TODO :vimgrep /\C\<TODO\>/ %

" Plugin specific settings.
let g:SuperTabDefaultCompletionType="context"
