return {
  cmd = { 'haskell-language-server-wrapper', '--lsp'},
  filetypes = { 'haskell', 'cabal' },
  settings = {
    haskell = {
      formattingProvider = 'ormolu',
      cabalFormattingProvider = 'cabal-fmt',
    }
  }
}
