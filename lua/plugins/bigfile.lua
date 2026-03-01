return {
  "LunarVim/bigfile.nvim",
  event = { "FileReadPre", "BufReadPre" },
  opts = {
    filesize = 2, -- MiB (files larger than 2MB will trigger "bigfile" mode)
    pattern = { "*" }, -- apply to all filetypes
    features = { -- features to disable
      "indent_blankline",
      "illuminate",
      "lsp",
      "treesitter",
      "syntax",
      "matchparen",
      "vimopts",
      "filetype",
    },
  },
}
