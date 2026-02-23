return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "mfussenegger/nvim-dap-python",
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      local dap = require("dap")

      -- 1. Setup Python Adapter (Global)
      local mason_path = vim.fn.stdpath("data") .. "/mason/"
      local debugpy_path = mason_path .. "packages/debugpy/venv/bin/python"
      require("dap-python").setup(debugpy_path)

      -- 2. Load VS Code launch.json (Project Level)
      -- This looks for .vscode/launch.json in your project root
      require("dap.ext.vscode").load_launchjs(nil, {
        ["debugpy"] = { "python" }, -- Maps VS Code's "type": "debugpy" to DAP's "python"
      })
    end,
  },
}
