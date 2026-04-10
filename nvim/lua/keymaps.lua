-- fzf-lua
vim.keymap.set('n', '<c-P>', function() require('fzf-lua').files() end, {noremap = true, silent = true})
vim.keymap.set('n', '<c-B>', function() require('fzf-lua').buffers() end, {noremap = true, silent = true})
vim.keymap.set('n', '<c-Q>', function() require('fzf-lua').quickfix() end, {noremap = true, silent = true})

-- Terminal
vim.keymap.set('t', '<C-w>', '<C-\\><C-n><C-w>', { desc = "Window commands from terminal" })

-- LSP
-- Neovim 0.12 provides these global LSP mappings by default:
--    gra → code actions
--    gri → implementations
--    grn → rename
--    grr → references
--    grt → type definition
--    grx → run codelens
--    gO → document symbols
--    Ctrl-S in Insert mode → signature help
--    K → hover
--    gx also handles textDocument/documentLink when the server supports it.

-- LSP (not defaults in 0.12)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "Go to declaration" })

-- Telescope
vim.keymap.set('n', '<leader>so', ':Telescope lsp_document_symbols<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sg', ':Telescope live_grep<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sw', ':Telescope lsp_workspace_symbols<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sr', ':Telescope lsp_references<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sd', ':Telescope diagnostics<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>si', ':Telescope lsp_implementations<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sgt', ':Telescope git_status<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sgc', ':Telescope git_commits<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sgs', ':Telescope git_stash<CR>', { noremap = true, silent = true })

-- Neotest
vim.keymap.set('n', '<Leader>tt', function() require("neotest").run.run() end, { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>tf', function() require("neotest").run.run(vim.fn.expand("%")) end, { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>ta', function() require("neotest").run.run(vim.uv.cwd()) end, { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>tl', function() require("neotest").run.run_last() end, { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>ts', function() require("neotest").summary.toggle() end, { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>to', function() require("neotest").output.open({ enter = true }) end, { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>tx', function() require("neotest").run.stop() end, { noremap = true, silent = true })

-- EasyAlign
vim.keymap.set('x', 'ga', '<Plug>(EasyAlign)')
vim.keymap.set('n', 'ga', '<Plug>(EasyAlign)')

-- tslime
vim.keymap.set('n', '<F1>', ':call SendToTmux("q")<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<C-c><C-c>', '<Plug>SendSelectionToTmux', {noremap = true})
vim.keymap.set('n', '<C-c><C-c>', '<Plug>NormalModeSendToTmux', {noremap = true})
vim.keymap.set('n', '<C-c>r', '<Plug>SetTmuxVars', {noremap = true})

-- General
vim.keymap.set('n', '<Leader>rg', ':Rg <C-r>=expand("<cword>")<CR><CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Leader>fc', 'vi\'<C-]><CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Leader>deb', 'odebugger<Esc>', {noremap = true, silent = true})
vim.keymap.set('n', '<Leader>gb', ':Git blame<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Leader>gvs', ':Gvsplit master:%<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Leader>cbf', ':%bd!<CR>', {noremap = true, silent = true})
vim.keymap.set('n', ';', ':', {noremap = true})
vim.keymap.set('n', ':', ';', {noremap = true})
vim.keymap.set('n', '<Leader>n', ':set invpaste<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<C-x>', '"+d', {noremap = true, silent = true})
vim.keymap.set('v', '<C-c>', '"+y', {noremap = true, silent = true})
vim.keymap.set('i', '<C-v>', '<ESC>"+pa', {noremap = true, silent = true})
vim.keymap.set('', '<Up>', '<Nop>', {noremap = true})
vim.keymap.set('', '<Down>', '<Nop>', {noremap = true})
vim.keymap.set('', '<Left>', '<Nop>', {noremap = true})
vim.keymap.set('', '<Right>', '<Nop>', {noremap = true})

vim.cmd('nnoremap <expr> gV    "`[".getregtype(v:register)[0]."`]"')

-- Inlay hints toggle
vim.keymap.set({"n"}, "<leader>h", function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end, {silent = true})

-- Format
vim.keymap.set('n', '<Leader>af', ':!rubocop -a -f quiet --stderr %<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>pf', ':lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })
