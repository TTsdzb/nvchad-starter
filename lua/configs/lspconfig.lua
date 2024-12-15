require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "vtsls", -- JS, TS, JSX, TSX

  "basedpyright", -- Python
  "rust_analyzer",
  "clangd", -- C, C++, CUDA
  "bashls",

  "jsonls",
  "yamlls",
  "taplo", -- TOML
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
