return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.enable('clangd')
        vim.lsp.enable('pyright')
        vim.lsp.enable('rust_analyzer')
        vim.lsp.enable('lua_ls')
        vim.lsp.enable('ts_ls')
        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(args)
                -- Unset 'formatexpr'
                vim.bo[args.buf].formatexpr = nil
                vim.keymap.set('n', 'gd', function ()
                    vim.lsp.buf.definition()
                end, { buffer = args.buf })
                vim.keymap.set('n', '<leader>gq', function ()
                    vim.lsp.buf.format()
                end, { buffer = args.buf })
                -- Defaults:
                -- grr gra grn gri grt i_CTRL-S an in These GLOBAL keymaps are created unconditionally when Nvim starts:
                -- "grn" is mapped in Normal mode to vim.lsp.buf.rename()
                -- "gra" is mapped in Normal and Visual mode to vim.lsp.buf.code_action()
                -- "grr" is mapped in Normal mode to vim.lsp.buf.references()
                -- "gri" is mapped in Normal mode to vim.lsp.buf.implementation()
                -- "grt" is mapped in Normal mode to vim.lsp.buf.type_definition()
                -- "gO" is mapped in Normal mode to vim.lsp.buf.document_symbol()
                -- CTRL-S is mapped in Insert mode to vim.lsp.buf.signature_help()
                -- ]d jumps to the next diagnostic in the buffer. ]d-default
                -- [d jumps to the previous diagnostic in the buffer. [d-default
                -- ]D jumps to the last diagnostic in the buffer. ]D-default
                -- [D jumps to the first diagnostic in the buffer. [D-default
                -- <C-w>d shows diagnostic at cursor in a floating window. CTRL-W_d-default
            end,
        })
    end
}

