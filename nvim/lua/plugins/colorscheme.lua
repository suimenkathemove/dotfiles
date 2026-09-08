return {
  "Mofiqul/dracula.nvim",
  cond = not vim.g.vscode,
  -- lazy = false のプラグイン間で先に読み込む
  priority = 1000,
  -- 他のプラグインの描画前に色を確定させるため遅延読み込みしない
  lazy = false,
  config = function()
    vim.cmd("colorscheme dracula")
  end,
}
