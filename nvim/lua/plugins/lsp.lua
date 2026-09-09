return {
  {
    "williamboman/mason.nvim",
    cond = not vim.g.vscode,
    cmd = "Mason",
    opts = {},
  },
