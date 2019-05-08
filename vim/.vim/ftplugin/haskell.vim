setlocal formatprg=hindent
setlocal suffixesadd+=.hs,.lhs
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
