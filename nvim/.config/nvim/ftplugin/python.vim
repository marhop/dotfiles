" tab completion via LSP
call SuperTabSetDefaultCompletionType("<c-x><c-o>")

" go to definition with gd
noremap gd :lua vim.lsp.buf.definition()<CR>
