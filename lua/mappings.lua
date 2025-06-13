require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>rn", function()
  local current = vim.wo.relativenumber
  vim.wo.relativenumber = not current
end, { desc = "Toggle relative number" })
map("n", "<leader>f", function()
  require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Format with conform" })



-- Toggle floating terminal with Ctrl + h
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
