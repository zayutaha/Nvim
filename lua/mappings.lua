require "nvchad.mappings"
local map = vim.keymap.set

-- Trouble
map("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { desc = "Toggle Trouble" })
map(
  "n",
  "<leader>xw",
  "<cmd>TroubleToggle workspace_diagnostics<cr>",
  { desc = "Toggle Trouble with workspace diagnostics" }
)
map(
  "n",
  "<leader>xq",
  "<cmd>TroubleToggle document_diagnostics<cr>",
  { desc = "Toggle Trouble with document diagnostics" }
)
map("n", "<leader>xd", "<cmd>TroubleToggle quickfix<cr>", { desc = "Toggle Trouble with quickfix" })
map("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", { desc = "Toggle Trouble with loclist" })
map("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { desc = "Toggle Trouble with LSP references" })

-- Crates 
map("n", "<leader>rcu", function()
  require("crates").upgrade_all_crates()
end, { desc = "Update crates" })
