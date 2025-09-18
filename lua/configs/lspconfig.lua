require("nvchad.configs.lspconfig").defaults()

local servers = {
  "biome", -- HTML, CSS, JSON, JS, TS, JSX, TSX, Vue, Svelte, Astro

  "ty", -- Python
  "rust_analyzer",
  "gopls",
  "clangd", -- C, C++, CUDA
  "jdtls",
  "bashls",
  "wgsl_analyzer",

  "yamlls",
  "taplo", -- TOML

  "marksman", -- Markdown
  "texlab", -- LaTeX

  "slint_lsp",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
