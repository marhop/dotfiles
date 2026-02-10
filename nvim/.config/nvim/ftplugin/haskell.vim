" tab completion via LSP
call SuperTabSetDefaultCompletionType("<c-x><c-o>")

" go to definition with gd
noremap gd :lua vim.lsp.buf.definition()<CR>

" gf command
setlocal suffixesadd+=.hs,.lhs
setlocal includeexpr=substitute(v:fname,'\\.','/','g')

" misc
com! TODO :vimgrep /\C\<TODO\>\|\<undefined\>/ %
