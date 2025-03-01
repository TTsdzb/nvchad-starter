local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    html = { "prettier" },
    css = { "biome" },
    javascript = { "biome" },
    javascriptreact = { "biome" },
    ["javascript.jsx"] = { "biome" },
    typescript = { "biome" },
    typescriptreact = { "biome" },
    ["typescript.tsx"] = { "biome" },

    json = { "biome" },
    jsonc = { "biome" },
    yaml = { "prettier" },
  },

  -- Change the default values when calling conform.format()
  -- This will also affect the default values for format_on_save/format_after_save
  default_format_opts = {
    lsp_format = "fallback",
  },

  -- Conform will run the formatter on save
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
  },

  -- Conform will notify you when no formatters are available for the buffer
  notify_no_formatters = true,
}

return options
