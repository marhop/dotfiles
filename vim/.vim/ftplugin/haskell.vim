# formatting
setlocal formatprg=ormolu

# gf command
setlocal suffixesadd+=.hs,.lhs
setlocal includeexpr=substitute(v:fname,'\\.','/','g')

# Haskell Language Server
let b:ale_linters = {'haskell': ['hls']}
noremap gd :ALEGoToDefinition<CR>
noremap K :ALEHover<CR>

# misc
com! TODO :vimgrep TODO\|undefined %
