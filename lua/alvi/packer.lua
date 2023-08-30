vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer cna manage itself
  use 'wbthomason/packer.nvim'
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use {
    'akinsho/flutter-tools.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  -- Rose Pine Colorscheme
  use {
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  }
  -- Treesitter
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  -- Harpoon
  use 'theprimeagen/harpoon'
  -- Undotree
  use 'mbbill/undotree'
  -- Vim fugitive
  use 'tpope/vim-fugitive'
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'dev-v3',
    requires = {
      --- Uncomment these if you want to manage LSP servers from neovim
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    }
  }
end)
