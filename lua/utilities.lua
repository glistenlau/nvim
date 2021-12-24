local utilities = {}

function utilities.key_mapper(mode, key, result)
    vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

return utilities
