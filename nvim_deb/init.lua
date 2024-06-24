local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
"rktjmp/lush.nvim",
"nvim-treesitter/nvim-treesitter-textobjects",
{ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
"danilamihailov/beacon.nvim",
"hrsh7th/nvim-cmp",
"hrsh7th/cmp-nvim-lsp",
"hrsh7th/cmp-buffer",
"hrsh7th/cmp-path",
'saadparwaiz1/cmp_luasnip',
{"L3MON4D3/LuaSnip",version = "v2.*", build = "make install_jsregexp" },
{ "rafamadriz/friendly-snippets" },
"tpope/vim-fugitive",
"AndrewRadev/diffurcate.vim",
"vim-airline/vim-airline",
"vim-airline/vim-airline-themes",
"ryanoasis/vim-devicons",
"junegunn/vim-easy-align",
"scrooloose/nerdcommenter",
"janko/vim-test",
{"junegunn/fzf", dir = "~/.fzf", run = "./install --all"},
{ "ibhagwan/fzf-lua", branch = 'main'},
"nvim-tree/nvim-web-devicons",
"jremmen/vim-ripgrep",
"tpope/vim-endwise",
"terryma/vim-expand-region",
"tmhedberg/matchit",
"tpope/vim-unimpaired",
"ludovicchabant/vim-gutentags",
"tpope/vim-surround",
"jiangmiao/auto-pairs",
"kassio/neoterm",
"tpope/vim-dispatch",
"farmergreg/vim-lastplace",
"airblade/vim-gitgutter",
"yggdroot/indentline",
"tyru/open-browser.vim",
"tyru/open-browser-github.vim",
"airblade/vim-rooter",
"jgdavey/tslime.vim",
"kylef/apiblueprint.vim",
"easymotion/vim-easymotion",
"andrewradev/splitjoin.vim",
"xolox/vim-misc",
"michaeljsmith/vim-indent-object",
"francoiscabrol/ranger.vim",
"rbgrouleff/bclose.vim",
"hashivim/vim-terraform",
"majutsushi/tagbar",
"aserebryakov/vim-todo-lists",
"tpope/vim-repeat",
{ "mg979/vim-visual-multi", branch = 'master'},
"kshenoy/vim-signature",
"tpope/vim-sensible",
"jeetsukumaran/vim-indentwise",
"wellle/targets.vim",
"plasticboy/vim-markdown",
{ "catppuccin/nvim",  as = 'catppuccin' },
"fabius/molokai.nvim",
{ "folke/tokyonight.nvim",  branch = 'main' },
"morhetz/gruvbox",
"joshdick/onedark.vim",
"cocopon/iceberg.vim",
"arcticicestudio/nord-vim",
"badacadabra/vim-archery",
{ "dracula/vim",  as = 'dracula' },
"lifepillar/vim-solarized8",
"flazz/vim-colorschemes",
"cormacrelf/vim-colors-github",
"altercation/vim-colors-solarized",
"paramagicdev/vim-medic_chalk",
"mhartington/oceanic-next",
"sickill/vim-monokai",
"mcmartelle/vim-monokai-bold",
"phanviet/vim-monokai-pro",
"adlawson/vim-sorcerer",
"erichdongubler/vim-sublime-monokai",
"tpope/vim-rails",
"tpope/vim-bundler",
"vim-ruby/vim-ruby",
"vim-scripts/ruby-matchit",
"slim-template/vim-slim",
"tpope/vim-rake",
"jgdavey/vim-blockle",
"thoughtbot/vim-rspec",
"ecomba/vim-ruby-refactoring",
"rust-lang/rust.vim",
"simrat39/rust-tools.nvim",
"neovim/nvim-lspconfig",
"williamboman/mason-lspconfig.nvim",
"williamboman/mason.nvim",
"nvim-lua/plenary.nvim",
"nvim-telescope/telescope.nvim",
"jose-elias-alvarez/null-ls.nvim",
"MunifTanjim/nui.nvim",
"mfussenegger/nvim-lint",
"aklt/plantuml-syntax",
"weirongxu/plantuml-previewer.vim",
"mfussenegger/nvim-dap",
"leoluz/nvim-dap-go",
"suketa/nvim-dap-ruby",
"nvim-neotest/nvim-nio",
"rcarriga/nvim-dap-ui",
})

-- Leader key
vim.g.mapleader = " "
vim.o.hlsearch = false
vim.o.termguicolors = true

-- -- set line length marker
-- -- vim.o.colorcolumn = 100

vim.g.indentLine_char_list = '|'
vim.g.indent_guides_enable_on_im_startup = 1
vim.g.indent_guides_auto_colors = 1

-- colorschemes
-- vim.cmd('colorscheme catppuccin')
-- vim.cmd('colorscheme catppuccin-latte')
-- vim.cmd('colorscheme catppuccin-frappe')
vim.cmd('colorscheme catppuccin-macchiato')
-- vim.cmd("colorscheme catppuccin-mocha")

-- DARK THEME
vim.o.background = dark
-- vim.g.airline_theme = "solarized_flood"

-- indents
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.smartindent = true

-- line numbers
vim.o.nu = true

-- splits open on rightside
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.cursorline = true

vim.g.NERDSpaceDelims = 1
vim.g.NERDCompactSexyComs = 1

-- Required for operations modifying multiple buffers like rename.
vim.o.hidden = true

-- slime settings
vim.g.slime_target = "tmux"

-- test runner settings
vim.g["test#strategy"] = "tslime"
vim.g["test#ruby#rspec#executable"] = "spring rspec"
--
-- tags
vim.g.gutentags_file_list_command = 'rg --files'
vim.g.gutentags_generate_on_new = 1
vim.g.gutentags_generate_on_missing = 1
vim.g.gutentags_generate_on_write = 1
vim.g.gutentags_generate_on_empty_buffer = 0
vim.g.gutentags_ctags_auto_set_tags = 1
vim.g.gutentags_ctags_extra_args = {'--tag-relative=yes', '--fields=+ailmnS'}
vim.g.gutentags_exclude_filetypes = {'gitcommit', 'gitconfig', 'gitrebase', 'gitsendemail', 'git'}

-- Gitgutter settings
vim.g.gitgutter_override_sign_column_highlight = 0
vim.cmd('highlight clear SignColumn')
vim.cmd('highlight GitGutterAdd guifg=Green ctermfg=2')
vim.cmd('highlight GitGutterChange guifg=Olive ctermfg=3')
vim.cmd('highlight GitGutterDelete guifg=Maroon ctermfg=1')
vim.cmd('highlight GitGutterChangeDelete guifg=Navy ctermfg=4')

-- Rust
vim.g.rustfmt_autosave = 1

-- Ruby
vim.g.ruby_host_prog = '~/.rbenv/versions/3.2.4/bin/neovim-ruby-host'

-- Mappings
vim.keymap.set('n', '<c-P>', function() require('fzf-lua').files() end, {noremap = true, silent = true})
vim.keymap.set('n', '<c-B>', function() require('fzf-lua').buffers() end, {noremap = true, silent = true})
vim.keymap.set('n', '<c-Q>', function() require('fzf-lua').quickfix() end, {noremap = true, silent = true})
vim.keymap.set('n', '<Leader>s', ':TestNearest<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>t', ':TestFile<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>a', ':TestSuite<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>l', ':TestLast<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>v', ':TestVisit<CR>', { noremap = true, silent = true })
vim.keymap.set('x', 'ga', '<Plug>(EasyAlign)')
vim.keymap.set('n', 'ga', '<Plug>(EasyAlign)')
vim.keymap.set('n', '<F1>', ':call SendToTmux("q")<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<F2>', ':Ranger<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<F3>', ':TagbarOpenAutoClose<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Leader><F3>', ':TagbarToggle<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Leader>rg', ':Rg <C-r>=expand("<cword>")<CR><CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Leader>fc', 'vi\'<C-]><CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Leader>deb', 'odebugger<Esc>', {noremap = true, silent = true})
vim.keymap.set('n', '<Leader>gb', ':Git blame<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Leader>gvs', ':Gvsplit master:%<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Leader>cbf', ':%bd!<CR>', {noremap = true, silent = true})
vim.keymap.set('n', ';', ':', {noremap = true})
vim.keymap.set('n', ':', ';', {noremap = true})
vim.keymap.set('v', '<C-c><C-c>', '<Plug>SendSelectionToTmux', {noremap = true})
vim.keymap.set('n', '<C-c><C-c>', '<Plug>NormalModeSendToTmux', {noremap = true})
vim.keymap.set('n', '<C-c>r', '<Plug>SetTmuxVars', {noremap = true})
vim.keymap.set('n', '<Leader>n', ':set invpaste<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<C-x>', '"+d', {noremap = true, silent = true})
vim.keymap.set('v', '<C-c>', '"+y', {noremap = true, silent = true})
vim.keymap.set('i', '<C-v>', '<ESC>"+pa', {noremap = true, silent = true})
vim.keymap.set('n', 'gV', function() return '`['..vim.fn.getregtype(vim.v.register)[1]..'`]`' end, {expr = true, noremap = true})
vim.keymap.set('', '<Up>', '<Nop>', {noremap = true})
vim.keymap.set('', '<Down>', '<Nop>', {noremap = true})
vim.keymap.set('', '<Left>', '<Nop>', {noremap = true})
vim.keymap.set('', '<Right>', '<Nop>', {noremap = true})


local ls = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load()

vim.keymap.set({"i"}, "<C-L>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-K>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-E>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end, {silent = true})

require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require('lspconfig')

-- vim.diagnostic.config({
--   virtual_text     = true,
--   signs            = true,
--   update_in_insert = true,
--   underline        = false,
--   severity_sort    = false,
-- })
--
-- vim.cmd([[
--   set signcolumn=yes
--   autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
-- ]])

lspconfig.solargraph.setup({
  init_options = { formatting = true },
  cmd       = { "solargraph", "stdio" },
  filetypes = { "ruby" },
  flags     = { debounce_text_changes = 150 },
  root_dir  = lspconfig.util.root_pattern("Gemfile", ".git"),
  on_attach = function(_, bufnr)
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', 'ga', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, bufopts)
  end,
  settings =  {
    solargraph = {
      diagnostics = true
    }
  }
})

-- Define a keybinding for triggering rubocop autofix if the current file
vim.api.nvim_set_keymap('n', '<Leader>af', ':!rubocop -a -f quiet --stderr %<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>pf', ':lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })


lspconfig.rust_analyzer.setup({
    on_attach = function(_, bufnr)
      local bufopts = { noremap=true, silent=true, buffer=bufnr }
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
      vim.keymap.set('n', 'ga', vim.lsp.buf.code_action, bufopts)
      vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, bufopts)
    end,
})

lspconfig.gopls.setup({
    on_attach = function(_, bufnr)
      local bufopts = { noremap=true, silent=true, buffer=bufnr }
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
      vim.keymap.set('n', 'ga', vim.lsp.buf.code_action, bufopts)
      vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, bufopts)
    end,
    cmd       = { "gopls" },
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    root_dir  = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
    single_file_support = true,
})

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "rust", "ruby", "go", "lua", "vim", "vimdoc", "query" },
  highlight = { enable = true },
  endwise = { enable = true },
  indent = { enable = false },

  textobjects = {
    select = {
      enable = true,
      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        -- You can optionally set descriptions to the mappings (used in the desc parameter of
        -- nvim_buf_set_keymap) which plugins like which-key display
        ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
        -- You can also use captures from other query groups like `locals.scm`
        ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
      },
      -- You can choose the select mode (default is charwise 'v')
      --
      -- Can also be a function which gets passed a table with the keys
      -- * query_string: eg '@function.inner'
      -- * method: eg 'v' or 'o'
      -- and should return the mode ('v', 'V', or '<c-v>') or a table
      -- mapping query_strings to modes.
      selection_modes = {
        ['@parameter.outer'] = 'v', -- charwise
        ['@function.outer'] = 'V', -- linewise
        ['@class.outer'] = '<c-v>', -- blockwise
      },
      -- If you set this to `true` (default is `false`) then any textobject is
      -- extended to include preceding or succeeding whitespace. Succeeding
      -- whitespace has priority in order to act similarly to eg the built-in
      -- `ap`.
      --
      -- Can also be a function which gets passed a table with the keys
      -- * query_string: eg '@function.inner'
      -- * selection_mode: eg 'v'
      -- and should return true of false
      include_surrounding_whitespace = true,
    },
  },
}

local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      require'luasnip'.lsp_expand(args.body)
    end
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    -- Add tab support
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<C-S-f>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    -- ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    })
  },
  sources = {
    { name = 'luasnip' },
    { name = 'path', keyword_length = 2 },                              -- file paths
    { name = 'nvim_lsp', keyword_length = 3, max_item_count = 10 },      -- from language server
    { name = 'nvim_lsp_signature_help'},            -- display function signatures with current parameter emphasized
    { name = 'nvim_lua', keyword_length = 2},       -- complete neovim's Lua runtime API such vim.lsp.*
    { name = 'buffer', keyword_length = 2 },        -- source current buffer
    { name = 'calc'},                               -- source for math calculation
  },
  window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
  },
  formatting = {
      fields = {'menu', 'abbr', 'kind'},
      format = function(entry, item)
          local menu_icon ={
              nvim_lsp = 'λ',
              luasnip = '⋗',
              buffer = 'Ω',
              path = '🖫',
          }
          item.menu = menu_icon[entry.source.name]
          return item
      end,
  },
})

-- Golang
local dap, dapui = require('dap'), require('dapui')
local dapgo = require('dap-go')
local dapruby =  require('dap-ruby')


dapui.setup({
  layouts = {
    {
      elements = {
        'scopes'
      },
      size = 0.25,
      position = 'bottom'
    }
  }
})

dapgo.setup()
dapruby.setup()

dap.listeners.before.attach.dapui_config = function()
 dapui.open()
end

dap.listeners.before.launch.dapui_config = function()
 dapui.open()
end

dap.listeners.before.event_terminated.dapui_config = function()
 dapui.close()
end

dap.listeners.before.event_exited.dapui_config = function()
 dapui.close()
end

vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<F3>', function() require('dap').terminate() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>q', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>Q', function() require('dap').set_breakpoint() end)
vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
vim.keymap.set('n', '<Leader>w', function() dapui.open() end)
vim.keymap.set('n', '<Leader>W', function() dapui.close() end)

require('lint').linters_by_ft = {
  go = {'staticcheck'},
}

-- Automatically format Go files before saving
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.format({ timeout_ms = 1000 })
  end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.go",
  callback = function()
    require('lint').try_lint()
  end,
})

-- Rust
local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<Leader>d", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})
