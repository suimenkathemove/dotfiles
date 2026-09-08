-- 対象言語
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
  "python",
  "rust",
  "toml",
  "tsx",
  "typescript",
  "vim",
local filetypes = {
return {
  "nvim-treesitter/nvim-treesitter",
  cond = not vim.g.vscode,
  branch = "master",
