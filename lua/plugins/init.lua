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
        "go",
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
    -- This is a commonly used plugin.
    -- Make sure we load this on start so the leader key doesn't needed to be hit twice for the menu,
    -- and `VeryLazy` should be enough for it.
    event = "VeryLazy",
  },

  {
    "nvim-tree/nvim-tree.lua",
    -- This plugin must be loaded before opening directories, in order to display dir contents.
    -- It must be loaded with `lazy = false`.
    lazy = false,
    config = function(_, opts)
      require("nvim-tree").setup(opts)

      -- For autoclose
      vim.api.nvim_create_autocmd("QuitPre", {
        callback = function()
          local tree_wins = {}
          local floating_wins = {}
          local wins = vim.api.nvim_list_wins()
          for _, w in ipairs(wins) do
            local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(w))
            if bufname:match "NvimTree_" ~= nil then
              table.insert(tree_wins, w)
            end
            if vim.api.nvim_win_get_config(w).relative ~= "" then
              table.insert(floating_wins, w)
            end
          end
          if 1 == #wins - #floating_wins - #tree_wins then
            -- Should quit, so we close all invalid windows.
            for _, w in ipairs(tree_wins) do
              vim.api.nvim_win_close(w, true)
            end
          end
        end,
      })
    end,
  },

  {
    "lbrayner/vim-rzip",
    -- For now, the plugin is only used for Yarn PnP support.
    -- For zip files, it must be loaded before opening them (disable lazyload for that).
    ft = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    -- lazy = false,
  },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      require("lazy").load { plugins = { "markdown-preview.nvim" } }
      vim.fn["mkdp#util#install"]()
    end,
  },
}
