-- 対象言語
local filetypes = {
return {
  "nvim-treesitter/nvim-treesitter",
  cond = not vim.g.vscode,
  branch = "master",
