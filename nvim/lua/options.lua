vim.cmd('set wrap')
vim.o.hlsearch = false
vim.cmd('set colorcolumn=120')
vim.o.background = "dark"

-- treesitter
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})

-- colorscheme
-- vim.cmd('colorscheme catppuccin-latte')
-- vim.cmd('colorscheme catppuccin-frappe')
-- vim.cmd('colorscheme catppuccin-macchiato')
-- vim.cmd("colorscheme catppuccin-mocha")

-- vim.cmd("colorscheme tokyonight-night")
-- vim.cmd("colorscheme tokyonight-storm")
-- vim.cmd("colorscheme tokyonight-day")
vim.cmd("colorscheme tokyonight-moon")

-- vim.cmd("colorscheme nightfox")
-- vim.cmd("colorscheme duskfox")
-- vim.cmd("colorscheme nordfox")
-- vim.cmd("colorscheme terafox")
-- vim.cmd("colorscheme carbonfox")

-- require('onedark').load()
-- vim.cmd("colorscheme onedark")

-- vim.cmd("colorscheme kanagawa-wave")
-- vim.cmd("colorscheme kanagawa-dragon")
-- vim.cmd("colorscheme kanagawa-lotus")

-- vim.cmd("colorscheme gruvbox")
-- vim.g.gruvbox_contrast_dark = "soft"
-- vim.g.gruvbox_contrast_dark = "medium"
-- vim.g.gruvbox_contrast_dark = "hard"
-- vim.cmd("colorscheme gruvbox-material")

-- vim.cmd("colorscheme rose-pine")
-- vim.cmd("colorscheme rose-pine-moon")

-- vim.cmd("colorscheme nord")

-- vim.cmd("colorscheme oxocarbon")
-- vim.cmd("colorscheme embark")

-- indents
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.smartindent = true

-- line numbers
vim.o.nu = true

-- splits
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.cursorline = true

vim.g.NERDSpaceDelims = 1
vim.g.NERDCompactSexyComs = 1

-- slime
vim.g.slime_target = "tmux"

-- tags
vim.g.gutentags_file_list_command = 'rg --files'
vim.g.gutentags_generate_on_new = 1
vim.g.gutentags_generate_on_missing = 1
vim.g.gutentags_generate_on_write = 1
vim.g.gutentags_generate_on_empty_buffer = 0
vim.g.gutentags_ctags_auto_set_tags = 1
vim.g.gutentags_ctags_extra_args = {'--tag-relative=yes', '--fields=+ailmnS'}
vim.g.gutentags_exclude_filetypes = {'gitcommit', 'gitconfig', 'gitrebase', 'gitsendemail', 'git'}

-- Rust
vim.g.rustfmt_autosave = 1

-- Ruby
vim.g.ruby_host_prog = '~/.rbenv/versions/3.2.4/bin/neovim-ruby-host'
