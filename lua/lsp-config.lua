local wk = require("which-key")
wk.register({
    K = {':lua vim.lsp.buf.hover()<CR>', "Hover"},
    ['<c-k>'] = {':lua vim.lsp.buf.signature_help()<CR>', "Signature Help"}
})

wk.register({
    g = {
        name = "lsp",
        d = {':lua vim.lsp.buf.definition()<CR>', "Go To Definition"},
        D = {':lua vim.lsp.buf.declaration()<CR>', "Go To Declaration"},
        i = {':lua vim.lsp.buf.implementation()<CR>', "Go To Implementation"},
        w = {':lua vim.lsp.buf.document_symbol()<CR>', "Document Symbol"},
        W = {':lua vim.lsp.buf.workspace_symbol()<CR>', "Workspace Symbol"},
        r = {':lua vim.lsp.buf.references()<CR>', "Go To References"},
        t = {':lua vim.lsp.buf.type_definition()<CR>', "Type Definition"}
    },
    ['ca'] = {':lua vim.lsp.buf.code_action()<CR>', "Code Action"},
    ['rn'] = {':lua vim.lsp.buf.rename()<CR>', "Rename"},
    ['fm'] = {':lua vim.lsp.buf.formatting()<CR>', "Formatting"},
    ['of'] = {':lua vim.diagnostic.open_float()<CR>', "Open Float"}
}, {prefix = "<leader>"})
