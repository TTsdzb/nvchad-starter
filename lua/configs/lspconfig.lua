-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
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
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
