local wk = require 'which-key'
require'nvim-tree'.setup {}

wk.register({
    name = "nvim-tree",
    ['<C-n>'] = {'<cmd>NvimTreeToggle<CR>', 'NvimTreeToggle'}
})
