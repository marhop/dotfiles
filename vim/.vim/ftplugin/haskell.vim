" formatting
function Ormolu()
    let v = winsaveview()
    execute '%!ormolu --stdin-input-file ' . bufname('%')
          . ' --start-line ' . v:lnum
          . ' --end-line ' . (v:lnum + v:count - 1)
    call winrestview(v)
endfunction
setlocal formatexpr=Ormolu()

" gf command
setlocal suffixesadd+=.hs,.lhs
setlocal includeexpr=substitute(v:fname,'\\.','/','g')

" ALE + Haskell Language Server, HLint
let b:ale_linters = {'haskell': ['hls', 'hlint']}
noremap gd :ALEGoToDefinition<CR>
noremap K :ALEHover<CR>

" misc
com! TODO :vimgrep TODO\|undefined %
