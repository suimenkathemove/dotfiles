-- 対象言語
-- パーサ名と filetype が異なるものは filetype 側を別に指定する
local parsers = {
  "bash",
  "css",
  "dockerfile",
  "go",
  "html",
  "javascript",
  "json",
  "lua",
  "markdown",
  "markdown_inline",
  "python",
  "rust",
  "toml",
  "tsx",
  "typescript",
  "vim",
  "vimdoc",
  "yaml",
}

-- vim.treesitter.start() を呼ぶ filetype
-- インジェクションで呼ばれるだけのパーサ（markdown_inline など）は
-- filetype を持たないので、ここには並ばない
local filetypes = {
  "bash",
  "sh",
  "zsh",
  "css",
  "dockerfile",
  "go",
  "html",
  "javascript",
  "json",
  "lua",
  "markdown",
  "python",
  "rust",
  "toml",
  "typescriptreact",
  "typescript",
  "vim",
  "help",
  "yaml",
}

return {
  "nvim-treesitter/nvim-treesitter",
  cond = not vim.g.vscode,
  branch = "main",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    require("nvim-treesitter").install(parsers)

    vim.api.nvim_create_autocmd("FileType", {
      pattern = filetypes,
      callback = function()
        pcall(vim.treesitter.start)
  end,
}
