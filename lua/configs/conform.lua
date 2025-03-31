local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    css = { "prettierd" },
    html = { "prettierd" },
    javascript = { "prettierd" },
    javascriptreact = { "prettierd" },
    ["javascript.jsx"] = { "prettierd" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
    ["typescript.tsx"] = { "prettierd" },

    json = { "prettierd" },
    yaml = { "prettierd" },

    python = { "ruff_format", "ruff_organize_imports", "ruff_fix" },

    rust = { "rustfmt" },
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
