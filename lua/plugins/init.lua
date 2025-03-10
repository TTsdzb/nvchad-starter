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

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
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

  {
    "folke/which-key.nvim",
    -- This is a commonly used plugin
    -- Make sure we load this on start so keys don't needed to be hit twice for the menu
    lazy = false,
    opts = function()
      dofile(vim.g.base46_cache .. "whichkey")
      return {}
    end,
  },

  {
    "lbrayner/vim-rzip",
    -- I don't know how to lazyload this
    -- It must be loaded before opening a zip file
    lazy = false,
  },
}
