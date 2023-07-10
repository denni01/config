local dap = require("dap")

dap.adapters["pwa-node"] = {
  type = "server",
  host = "localhost",
  port = "${port}",
  executable = {
    command = "node",
    -- 💀 Make sure to update this path to point to your installation
    args = {"/home/bakso/Developer/source/js-debug/src/dapDebugServer.js", "${port}"},
  }
}

require("dap").configurations.javascript = {
    {
        type = "pwa-node",
        request = "launch",
        name = "Launch file",
        program = "${file}",
        cwd = "${workspaceFolder}",
    },
}

require("dap").configurations.typescript = {
    {
        type = "pwa-node",
        request = "launch",
        name = "Launch file",
        program = "${file}",
        cwd = "${workspaceFolder}",
    },
}

vim.keymap.set("n", "<leader>db", function() dap.toggle_breakpoint() end, { desc="[DAP] Toggle Breakpoint" })
vim.keymap.set("n", "<leader>dc", function() dap.continue() end, { desc="[DAP] Continue" })

