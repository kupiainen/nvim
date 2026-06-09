vim.api.nvim_create_autocmd("FileType", {
    pattern = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
    callback = function(args)
        vim.bo[args.buf].tabstop = 2
        vim.bo[args.buf].shiftwidth = 2
        vim.bo[args.buf].expandtab = true
    end,
})

