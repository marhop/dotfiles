" formatting
setlocal formatprg=ormolu

" gf command
setlocal suffixesadd+=.hs,.lhs
setlocal includeexpr=substitute(v:fname,'\\.','/','g')

" ALE + Haskell Language Server, HLint
let b:ale_linters = {'haskell': ['hls', 'hlint']}
noremap gd :ALEGoToDefinition<CR>
noremap K :ALEHover<CR>

" misc
com! TODO :vimgrep TODO\|undefined %
