local map = vim.keymap.set

-- 表示行単位で移動する
map({ "n", "v" }, "j", "gj")
map({ "n", "v" }, "k", "gk")

-- 検索を very nomagic で始める
map({ "n", "v" }, "/", "/\\V")
map({ "n", "v" }, "?", "?\\V")

map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "検索ハイライトを消す" })

-- VSCode の Neovim 拡張ではウィンドウ分割を Neovim 側が管理しないので、素の Neovim のときだけ有効にする
if not vim.g.vscode then
  -- ウィンドウ移動
  map("n", "<C-h>", "<C-w>h")
  map("n", "<C-j>", "<C-w>j")
  map("n", "<C-k>", "<C-w>k")
  map("n", "<C-l>", "<C-w>l")
end
