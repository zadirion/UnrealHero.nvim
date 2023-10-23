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

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim', commit = "ea0cc3c59f67c440c5ff0bbe4fb9420f4350b9a3"}
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
      requires = {
          { 'nvim-lua/plenary.nvim', commit="50012918b2fc8357b87cff2a7f7f0446e47da174"},
          { 'BurntSushi/ripgrep', commit="7099e174acbcbd940f57e4ab4913fee4040c826e"}
      }
  }
  use({ 'rose-pine/neovim', as = 'rose-pine',
  commit = "e29002cbee4854a9c8c4b148d8a52fae3176070f",
  config = function()
	  vim.cmd('colorscheme rose-pine')
  end})
  use { 'xiyaowong/transparent.nvim', commit="3af6232c8d39d51062702e875ff6407c1eeb0391"}

  use {
	  'nvim-treesitter/nvim-treesitter',
	  tag = 'v0.9.0',
	  run = function()
		  local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
		  ts_update()
	  end,
	  }

  use { 'nvim-treesitter/playground' , commit="ba48c6a62a280eefb7c85725b0915e021a1a0749"}
  use { 'ThePrimeagen/harpoon', commit="c1aebbad9e3d13f20bedb8f2ce8b3a94e39e424a" }
  use { 'ThePrimeagen/refactoring.nvim',
    commit="bebfcfcc4b604d3647fcce2f4aeb02a95d139c49",
    requires = {
        {"nvim-lua/plenary.nvim"},
        {"nvim-treesitter/nvim-treesitter"}
    }
  }
  use { 'mbbill/undotree', commit="0e11ba7325efbbb3f3bebe06213afa3e7ec75131" }
  use { 'kikito/inspect.lua', commit="8686162bce74913c4d3a577e7324642ddc4e21c0"}
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
      commit = "22d2186bee730d68f6fd3bb2d19a389784c37a96",
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  {'williamboman/mason.nvim', commit="cd7835b15f5a4204fc37e0aa739347472121a54c"},
		  {'williamboman/mason-lspconfig.nvim', commit="e7b64c11035aa924f87385b72145e0ccf68a7e0a"},

		  -- LSP Support
		  {'neovim/nvim-lspconfig', commit="2a101fb00e6f6eb29c230736b99f05c3b3192b94"},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp', commit="5dce1b778b85c717f6614e3f4da45e9f19f54435"},
		  {'hrsh7th/cmp-nvim-lsp', commit="44b16d11215dce86f253ce0c30949813c0a90765"},
		  {'L3MON4D3/LuaSnip', commit="0df29db3543837f8b41597f2640397c5ec792b7b"},
		  {'tpope/vim-fugitive', commit="cbe9dfa162c178946afa689dd3f42d4ea8bf89c1"},
          {'tpope/vim-dispatch', commit="6cc2691576f97d43f8751664d1a1a908b99927e5"},
	  }
  }

  use {
      requires = { "nvim-treesitter/nvim-treesitter" },
      "Badhi/nvim-treesitter-cpp-tools",
  }

  use {
      'SirVer/ultisnips'
  }

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- My plugin, always latest commit
  use {'zadirion/Unreal.nvim',
    requires =
    {
        {"tpope/vim-dispatch"}
    }
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

