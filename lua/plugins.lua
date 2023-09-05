local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use { 'wbthomason/packer.nvim' }

  -- telescope, treesiter
  use { 'nvim-lua/plenary.nvim' }
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.2' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- lsp
  use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim' }
  use { 'neovim/nvim-lspconfig' }
  use { "hrsh7th/nvim-cmp" }
  use { "hrsh7th/cmp-nvim-lua" }
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-path" }
  use { 'L3MON4D3/LuaSnip' }
  use { "saadparwaiz1/cmp_luasnip" }

  -- git
  use { 'lewis6991/gitsigns.nvim' }

  -- lualine
  use { 'nvim-lualine/lualine.nvim' }

  -- colorscheme
  use { "ellisonleao/gruvbox.nvim" }

  -- etc
  use { 'nvim-tree/nvim-web-devicons' }
  use { "windwp/nvim-autopairs" }
  use { 'numToStr/Comment.nvim' }
  use { 'Wansmer/treesj' }
  use { 'lukas-reineke/indent-blankline.nvim' }
  use { 'mg979/vim-visual-multi', branch = 'master' }
  use { 'tpope/vim-surround' }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
