local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- theme
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' },
  }
  use 'morhetz/gruvbox'
  vim.cmd [[colorscheme gruvbox]]

  -- status line
  use 'nvim-lualine/lualine.nvim'

  -- lsp
  use 'neovim/nvim-lspconfig'

  -- lsp ui
  use {
    'glepnir/lspsaga.nvim',
    branch = 'main'
  }

  -- auto completion
  use 'onsails/lspkind.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'

  use 'L3MON4D3/LuaSnip'

  -- tree-sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- auto pairs / auto tags
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- utils
  use 'nvim-lua/plenary.nvim'

  -- telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- icons
  use 'kyazdani42/nvim-web-devicons'

  -- buffer line
  use 'akinsho/bufferline.nvim'

  -- colorizer
  use 'norcalli/nvim-colorizer.lua'

  -- formatting linting
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'

end)
