require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "vtsls", -- JS, TS, JSX, TSX

  "pylsp", -- Python
  "rust_analyzer",

  "jsonls",
  "yamlls",
  "taplo", -- TOML
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
