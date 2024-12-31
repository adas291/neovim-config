-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  --use "olimorris/onedarkpro.nvim"
  use({
    "olimorris/onedarkpro.nvim",
    config = function()
      require('onedarkpro').setup({
        options = {
          transparency = true
        },
      })
      vim.cmd('colorscheme onedark')
    end

  })

  use({ 'nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'} })

  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'

  use { "williamboman/mason.nvim" }
  use "williamboman/mason-lspconfig.nvim"
  use({'neovim/nvim-lspconfig'})

  --completion
  use {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/vim-vsnip',  -- For snippet support
  }
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()

  end}


  -- tailwind-tools.lua
  use {
    "luckasRanarison/tailwind-tools.nvim",
    name = "tailwind-tools",
    build = ":UpdateRemotePlugins",
    requires = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim", -- optional
      "neovim/nvim-lspconfig", -- optional
    },
    opts = {} -- your configuration
  }

  use 'prettier/vim-prettier'

end)
