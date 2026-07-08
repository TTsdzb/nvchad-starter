# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

This is a personal Neovim configuration built on **NvChad v2.5**, which is consumed as a *plugin* rather than forked. The user's own config lives in `lua/` and layers on top of NvChad's modules (`require "nvchad.options"`, `require "nvchad.mappings"`, etc.). Do not try to modify NvChad itself — override its behavior from the files here.

## Formatting

All Lua is formatted with **stylua** (config in `.stylua.toml`): 2-space indent, 120 column width, double quotes preferred, and **no parentheses on function calls that take a single string/table literal** (e.g. `require "options"`, `map("n", ...)`). Match this style — the codebase relies on it heavily.

```sh
stylua .          # format all Lua files
stylua --check .  # verify formatting without writing
```

There is no build or test step; this is runtime-interpreted Neovim config. "Testing" a change means launching `nvim` and exercising it.

## Dependencies / setup

External tools (LSP servers, formatters, tree-sitter parsers) are managed by mason inside Neovim, not by a package file here:

- `:MasonInstallAll` — install everything the config references
- `:MasonInstall tree-sitter-cli` — required for tree-sitter parser compilation
- `:Lazy sync` — sync plugins to `lazy-lock.json` (the lockfile is committed)

## Architecture

`init.lua` is the entry point. Order matters and is deliberate:
1. Bootstraps `lazy.nvim`, then loads NvChad (`branch = "v2.5"`, importing `nvchad.plugins`) followed by the local `plugins` module.
2. Loads compiled base46 theme cache (`defaults`, `statusline`) via `dofile` — these are generated files, not editable source.
3. Requires `options` and `autocmds`, then schedules `mappings` on the event loop.

The `lua/` layout maps to distinct concerns:

- **`lua/chadrc.lua`** — the NvChad config table (`ChadrcConfig`). Theme selection and UI overrides go here. Must mirror the structure of NvChad's `nvconfig.lua`.
- **`lua/options.lua`**, **`lua/mappings.lua`**, **`lua/autocmds.lua`** — each first calls the corresponding `nvchad.*` module, then appends user additions. Keep this "extend, don't replace" pattern.
- **`lua/plugins/init.lua`** — lazy.nvim plugin specs. This is where new plugins and the tree-sitter `ensure_installed` list live. Several plugins carry non-obvious load constraints (e.g. `nvim-tree` and `vim-rzip` must load eagerly / on specific filetypes — comments explain why; preserve them).
- **`lua/configs/`** — per-plugin setup pulled in by the specs:
  - `lazy.lua` — lazy.nvim's own options (disabled builtin rtp plugins, UI icons).
  - `lspconfig.lua` — calls `require("nvchad.configs.lspconfig").defaults()` then enables servers via `vim.lsp.enable(servers)`. Add LSP servers to the `servers` table here.
  - `conform.lua` — formatter config (`formatters_by_ft`), format-on-save with LSP fallback.

**Where to make common changes:** new plugin → `lua/plugins/init.lua`; new LSP server → `servers` in `lua/configs/lspconfig.lua`; new formatter → `formatters_by_ft` in `lua/configs/conform.lua`; new language parser → `ensure_installed` in `lua/plugins/init.lua`; theme/UI → `lua/chadrc.lua`.
