local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
    { "ellisonleao/gruvbox.nvim", priority = 1000 },
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    "nvim-treesitter/nvim-treesitter-context",
    "nvim-lua/plenary.nvim",
    "szw/vim-maximizer",
    "tpope/vim-surround",
    "numToStr/Comment.nvim",
    {
      "nvim-tree/nvim-tree.lua",
      version = "*",
      lazy = false,
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      }
    },
    "nvim-lualine/lualine.nvim",
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    { 'nvim-telescope/telescope.nvim', tag = '0.1.2' },
    "hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",

    "windwp/nvim-ts-autotag",
    { 'windwp/nvim-autopairs', event = "InsertEnter" },

    {"L3MON4D3/LuaSnip", version = "2.*",},
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
    "neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
    "williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
    "jose-elias-alvarez/null-ls.nvim",
	"jayp0521/mason-null-ls.nvim",
    "lukas-reineke/indent-blankline.nvim",
    "nanozuki/tabby.nvim",
    "arjunmahishi/flow.nvim", --awesome
    {
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
    },






})
