setlocal formatprg=ormolu
setlocal suffixesadd+=.hs,.lhs
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
com! TODO :vimgrep TODO\|undefined %
