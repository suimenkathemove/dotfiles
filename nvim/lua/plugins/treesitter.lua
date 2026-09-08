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

local filetypes = {
return {
  "nvim-treesitter/nvim-treesitter",
  cond = not vim.g.vscode,
  branch = "master",
