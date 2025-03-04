require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "biome", -- CSS, JS, JSX, TS, TSX, Vue, JSON, JSONC, Astro, GraphQL, Svelte

  "ruff", -- Python
  "rust_analyzer",
  "clangd", -- C, C++, CUDA
  "jdtls",
  "bashls",
  "wgsl_analyzer",

  "yamlls",
  "taplo", -- TOML

  "texlab", -- LaTeX
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
