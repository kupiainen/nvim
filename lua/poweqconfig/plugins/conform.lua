return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform will run multiple formatters sequentially
			python = { "isort", "black" },
			json = { "biome" },
			javascript = { "biome", "biome-organize-imports" },
			javascriptreact = { "biome", "biome-organize-imports" },
			typescript = { "biome", "biome-organize-imports" },
			typescriptreact = { "biome", "biome-organize-imports" },
			-- You can customize some of the format options for the filetype (:help conform.format)
			-- rust = { "rustfmt", lsp_format = "fallback" },
			-- Conform will run the first available formatter
			-- javascript = { "prettierd", "prettier", stop_after_first = true },
		},
		-- format_on_save = {
		--     -- These options will be passed to conform.format()
		--     -- timeout_ms = 500,
		--     -- lsp_format = "fallback",
		-- },
	},
	vim.keymap.set({ "n", "v" }, "<leader>gw", function()
		require("conform").format({
			lsp_fallback = false,
			async = false,
			timeout_ms = 500,
		})
	end, { desc = "Format file or range (in visual mode)" }),
}
