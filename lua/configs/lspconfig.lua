require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "ts_ls", -- JS, TS, JSX, TSX
  "eslint", -- Linter for JS, TS, JSX, TSX, Vue, Svelte, Astro

  "ruff", -- Python
  "rust_analyzer",
  "clangd", -- C, C++, CUDA
  "jdtls",
  "bashls",
  "wgsl_analyzer",

  "jsonls",
  "yamlls",
  "taplo", -- TOML

  "texlab", -- LaTeX
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
