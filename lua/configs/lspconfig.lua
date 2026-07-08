require("nvchad.configs.lspconfig").defaults()

-- Language servers to enable, following Zed's documented language setups
-- (https://zed.dev/docs/languages). Trailing comments name the target
-- language, since many server names are not self-explanatory. Install these
-- with :MasonInstallAll. A few (roslyn_ls, jdtls, elp) may need extra setup
-- beyond a plain mason install — see the notes below.
local servers = {
  "ansiblels", -- Ansible
  "astro", -- Astro
  "bashls", -- Bash
  "basedpyright", -- Python (types)
  "clangd", -- C / C++
  "clojure_lsp", -- Clojure
  "cssls", -- CSS
  "dartls", -- Dart
  "docker_compose_language_service", -- Docker Compose
  "dockerls", -- Dockerfile
  "elixirls", -- Elixir
  "elmls", -- Elm
  "elp", -- Erlang (Zed's erlang_ls is no longer in nvim-lspconfig; elp is its documented alternative)
  "emmet_language_server", -- Emmet
  "esbonio", -- reStructuredText
  "gdscript", -- GDScript (needs a running Godot editor instance)
  "gleam", -- Gleam
  "glsl_analyzer", -- GLSL
  "gopls", -- Go
  "groovyls", -- Groovy
  "helm_ls", -- Helm
  "hls", -- Haskell
  "html", -- HTML
  "jdtls", -- Java (nvim-jdtls recommended for full features)
  "jsonls", -- JSON
  "jsonnet_ls", -- Jsonnet
  "julials", -- Julia
  "kotlin_language_server", -- Kotlin
  "lua_ls", -- Lua
  "luau_lsp", -- Luau
  "metals", -- Scala
  "millet", -- Standard ML
  "nim_langserver", -- Nim
  "ocamllsp", -- OCaml
  "phpactor", -- PHP (Zed's default; swap for "intelephense" if preferred)
  "prismals", -- Prisma
  "protols", -- Proto (nvim-lspconfig ships coder3101/protols; Zed uses a different server)
  "purescriptls", -- PureScript
  "r_language_server", -- R
  "regal", -- Rego
  "roc_ls", -- Roc
  "roslyn_ls", -- C# (Zed's default; needs manual/plugin setup, not a plain mason install)
  "ruff", -- Python (lint + format as a language server, matching Zed)
  "rust_analyzer", -- Rust
  "solargraph", -- Ruby (Zed's default; swap for "ruby_lsp" if preferred)
  "sourcekit", -- Swift
  "svelte", -- Svelte
  "tailwindcss", -- Tailwind CSS
  "terraformls", -- Terraform
  "tombi", -- TOML
  "uiua", -- Uiua
  "vtsls", -- JavaScript / TypeScript
  "vue_ls", -- Vue
  "yamlls", -- YAML
  "yls", -- Yara
  "zls", -- Zig
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
