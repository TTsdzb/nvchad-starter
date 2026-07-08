local options = {
  -- Formatters follow Zed's documented setups (https://zed.dev/docs/languages).
  -- Only languages where Zed uses a *dedicated* formatter are listed here;
  -- languages Zed formats through the language server itself (C/C++, Go, Rust,
  -- Dart, OCaml, Zig, Terraform, Ruby, etc.) are intentionally omitted and
  -- handled by the `lsp_format = "fallback"` below.
  formatters_by_ft = {
    -- Prettier: the web filetypes Zed formats with its bundled Prettier
    astro = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    jsonc = { "prettier" }, -- plain `json` is formatted by the json language server
    less = { "prettier" },
    markdown = { "prettier" },
    scss = { "prettier" },
    svelte = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    vue = { "prettier" },
    yaml = { "prettier" },

    -- Dedicated formatters Zed uses in place of (or alongside) the LSP
    bash = { "shfmt" },
    eelixir = { "mix" },
    elixir = { "mix" },
    elm = { "elm_format" },
    fish = { "fish_indent" },
    heex = { "mix" },
    lua = { "stylua" },
    luau = { "stylua" },
    nim = { "nph" },
    nims = { "nph" },
    python = { "ruff_format" },
    r = { "air" },
    rmd = { "air" },
    sbt = { "scalafmt" },
    scala = { "scalafmt" },
    sh = { "shfmt" },
    surface = { "mix" },
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
