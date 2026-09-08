-- 対象言語
local parsers = {
local filetypes = {
return {
  "nvim-treesitter/nvim-treesitter",
  cond = not vim.g.vscode,
  branch = "master",
