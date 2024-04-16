local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
    lazy = false,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
    lazy = false,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- {
  --   "normen/vim-pio",
  --   config = function()
  --     require("vim-pio").setup()
  --   end,
  -- },

  {
    'tyru/open-browser.vim',
     event = 'VimEnter',
  },

  {
    'weirongxu/plantuml-previewer.vim',
     event = 'VimEnter',
  },

  {'akinsho/git-conflict.nvim', version = "*", config = true},
  -- {
  --   "normen/vim-pio",
  --   lazy = false,
  --   config = function()
  --     require("vim-pio").setup()
  --   end,
  -- },

  {
     "normen/vim-pio",
     lazy=false,
  },

  -- {
  --    "github/copilot.vim",
  --    lazy=false,
  -- },

  {
    'Asheq/close-buffers.vim',
    lazy=false,
  },
  {
    'sindrets/diffview.nvim'
  },
  {
      "iamcco/markdown-preview.nvim",
      cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
      ft = { "markdown" },
      build = function() vim.fn["mkdp#util#install"]() end,
  },

  {
    "karb94/neoscroll.nvim",
    lazy = false,
    config = function ()
      require('neoscroll').setup {}
    end
  }
  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
