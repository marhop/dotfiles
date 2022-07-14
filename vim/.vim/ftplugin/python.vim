" formatting
function Autopep8()
    let v = winsaveview()
    execute '%!autopep8 --line-range ' . v:lnum . ' ' . (v:lnum + v:count - 1) . ' -'
    call winrestview(v)
endfunction
setlocal formatexpr=Autopep8()
