local wk = require 'which-key'

vim.g.symbols_outline = {relative_width = true, width = 60}

wk.register({
    ['<leader>v'] = {'<cmd>SymbolsOutline<cr>', 'Toggle symbols outline'}
})
