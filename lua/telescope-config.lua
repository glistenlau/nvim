local wk = require('which-key')

wk.register({
    f = {
        s = {'<cmd>lua require"telescope.builtin".live_grep()<CR>', "Live Grep"},
        h = {'<cmd>lua require"telescope.builtin".help_tags()<CR>', "Help Tags"},
        b = {'<cmd>lua require"telescope.builtin".buffers()<CR>', "Buffers"}
    }
}, {prefix = "<leader>"})

wk.register({
    ["<C-p>"] = {
        '<cmd>lua require"telescope.builtin".find_files()<CR>', 'Find Files'
    }
})
