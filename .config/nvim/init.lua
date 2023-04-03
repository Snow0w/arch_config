-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require("plugins_setup")
require("core.options")
require("core.keymaps")
require("core.colorscheme")
require("plugins.comment")
require("plugins.nvim_tree")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.nvim-cmp")
require("plugins.lsp.mason")
require("plugins.lsp.lspsaga")
require("plugins.lsp.lspconfig")
require("plugins.lsp.null-ls")
require("plugins.treesitter")
require("plugins.autopairs")
require("plugins.indent-blankline")
vim.cmd([[
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
]])
