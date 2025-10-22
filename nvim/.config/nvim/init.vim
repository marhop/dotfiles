" Plugins (see <https://github.com/junegunn/vim-plug>)
call plug#begin()
Plug 'gbprod/nord.nvim'
Plug 'jayflo/vim-skip'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'ervandew/supertab'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-characterize'
call plug#end()

" Appearance
colorscheme nord
set statusline=%r%f%m%=%{&ft}\ %{&enc}\ %{&bomb?'BOM\ ':''}%{&ff}\ %{%Position()%}
set winborder=rounded
set display+=uhex

" Text formatting
set textwidth=80
set tabstop=2
set shiftwidth=2
set expandtab
set shiftround

" LSP
lua vim.lsp.enable('hls')
lua vim.lsp.enable('pylsp')

" Searching
set nohlsearch
set ignorecase
set smartcase
set grepprg=rg\ --vimgrep\ --smart-case

" File opening
set wildignorecase

" Key mappings
inoremap jk <esc>
noremap ö :
noremap Ö q:
noremap <space> /
noremap ä }
noremap Ä {
noremap ; ,
noremap , ;
noremap - '

" User commands
com -range=% -nargs=? Cnt :<line1>,<line2>s/<args>//gn
com TODO :vimgrep /\C\<TODO\>/ %

function Position()
  if &binary
    let offset = line2byte(line('.')) + col('.') - 2
    return printf("%d 0x%x", offset, offset)
  else
    return '%l/%L|%c%V'
endfunction
