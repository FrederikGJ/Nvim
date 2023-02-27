-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- pleanry: lua functions that many plugins use
  use "nvim-lua/plenary.nvim"


use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
}

 use({
  "neanias/everforest-nvim",
  as = 'everforest',
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
   vim.cmd([[colorscheme everforest]])
   end,
})

use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})


end)
