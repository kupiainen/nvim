local dap = require("dap")
dap.defaults.fallback.external_terminal = {
    command = '/usr/local/bin/st';
    args = {'-e'};
}
dap.defaults.fallback.force_external_terminal = true
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, {})
vim.keymap.set("n", "<leader>dc", dap.continue, {})
vim.keymap.set("n", "<F5>", dap.continue, {})
vim.keymap.set("n", "<F6>", dap.step_into, {})
vim.keymap.set('n', '<Leader>lp', function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set("n", "<leader>dq", dap.disconnect, {})

require("dap-python").setup(".venv/bin/python")
-- If using the above, then `/path/to/venv/bin/python -m debugpy --version`
-- must work in the shell
--vim.keymap.set("n", "<leader>ds", ":lua require('dap-python').test_method()<CR>")
--vim.keymap.set("n", "<leader>dn", ":lua require('dap-python').test_method()<CR>")
--vim.keymap.set("n", "<leader>df", ":lua require('dap-python').test_class()<CR>")
--vim.keymap.set("v", "<leader>ds", "<ESC>:lua require('dap-python').debug_selection()<CR>")
