return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "bibtex",
        "c",
        "c_sharp",
        "cmake",
        "comment",
        "cpp",
        "css",
        "csv",
        "cuda",
        "desktop",
        "diff",
        "dockerfile",
        "git_config",
        "git_rebase",
        "gitcommit",
        "gitignore",
        "glsl",
        "gpg",
        "html",
        "http",
        "ini",
        "java",
        "javascript",
        "json",
        "jsonc",
        "latex",
        "lua",
        "make",
        "markdown",
        "nginx",
        "passwd",
        "powershell",
        "printf",
        "python",
        "regex",
        "requirements",
        "rust",
        "slint",
        "sql",
        "ssh_config",
        "toml",
        "typescript",
        "typst",
        "udev",
        "vim",
        "vue",
        "wgsl",
        "wgsl_bevy",
        "xml",
        "yaml",
      },
    },
  },
}
