local dapui = require("dapui")

dapui.setup()

vim.keymap.set("n", "<leader>duo", function() dapui.open() end, { desc="[DAPUI] Open UI" })
vim.keymap.set("n", "<leader>duc", function() dapui.close() end, { desc="[DAPUI] Close UI" })
vim.keymap.set("n", "<leader>dut", function() dapui.toggle() end, { desc="[DAPUI] Toggle UI" })

