-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- configure treesitter
treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  -- enable indentation
  --indent = { enable = true },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
    "yaml",
    "markdown",
    "bash",
    "lua",
    "vim",
    "dockerfile",
    "gitignore",
    "java",
    "c",
    "cpp",
    "make",
    "sql"
  },
  -- auto install above language parsers
  auto_install = true,
})

