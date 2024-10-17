local options = {
  formatters_by_ft = {
    lua = { "stylua" },
  },

  -- Change the default values when calling conform.format()
  -- This will also affect the default values for format_on_save/format_after_save
  default_format_opts = {
    lsp_format = "fallback",
  },
}

return options
