" tab completion via LSP
call SuperTabSetDefaultCompletionType("<c-x><c-o>")

" gf command
setlocal suffixesadd+=.hs,.lhs
setlocal includeexpr=substitute(v:fname,'\\.','/','g')

" misc
com! TODO :vimgrep /\C\<TODO\>\|\<undefined\>/ %
