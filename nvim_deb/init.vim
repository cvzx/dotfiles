call plug#begin('~/.config/nvim/plugged')

Plug 'rktjmp/lush.nvim'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'puremourning/vimspector'
Plug 'danilamihailov/beacon.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

Plug 'tpope/vim-fugitive'
Plug 'AndrewRadev/diffurcate.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdcommenter'
Plug 'janko/vim-test'
Plug '~/.fzf'
" Plug 'junegunn/fzf.vim'
Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
" optional for icon support
Plug 'nvim-tree/nvim-web-devicons'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-endwise'
Plug 'terryma/vim-expand-region'
" Plug 'kana/vim-textobj-user'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-unimpaired'
Plug 'ludovicchabant/vim-gutentags'
" Plug 'Shougo/pum.vim'
" Plug 'Shougo/ddc.vim'
" Plug 'Shougo/ddc-ui-native'
" Plug 'Shougo/ddc-around'
" Plug 'Shougo/ddc-source-rg'
" Plug 'LumaKernel/ddc-source-file'
" Plug 'matsui54/ddc-ultisnips'
" Plug 'matsui54/ddc-buffer'
" Plug 'Shougo/ddc-matcher_head'
" Plug 'Shougo/ddc-sorter_rank'
" Plug 'Shougo/ddc-source-lsp'
" Plug 'Shougo/ddc-converter_remove_overlap'
" Plug 'vim-denops/denops.vim'
" Plug 'tani/ddc-fuzzy'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'kassio/neoterm'
Plug 'tpope/vim-dispatch'
Plug 'farmergreg/vim-lastplace'
Plug 'airblade/vim-gitgutter'
Plug 'yggdroot/indentline'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'tyru/open-browser.vim'
Plug 'tyru/open-browser-github.vim'
Plug 'airblade/vim-rooter'
Plug 'jgdavey/tslime.vim'
Plug 'kylef/apiblueprint.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'easymotion/vim-easymotion'
Plug 'andrewradev/splitjoin.vim'
Plug 'xolox/vim-misc'
" Plug 'xolox/vim-colorscheme-switcher'
Plug 'michaeljsmith/vim-indent-object'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
" Plug 'pseewald/vim-anyfold'
Plug 'hashivim/vim-terraform'
Plug 'majutsushi/tagbar'
Plug 'aserebryakov/vim-todo-lists'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-repeat'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'kshenoy/vim-signature'
Plug 'tpope/vim-sensible'
Plug 'jeetsukumaran/vim-indentwise'
Plug 'wellle/targets.vim'
Plug 'plasticboy/vim-markdown'
Plug 'vifm/vifm.vim'
Plug 'jackmort/chatgpt.nvim'
" Plug 'tmux-plugins/vim-tmux-focus-events'
" Plug 'blueyed/vim-diminactive'
" Plug 'codota/tabnine-vim'
" Plug 'RRethy/vim-illuminate'

" colorschemes
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'fabius/molokai.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'badacadabra/vim-archery'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'lifepillar/vim-solarized8'
Plug 'flazz/vim-colorschemes'
Plug 'cormacrelf/vim-colors-github'
Plug 'altercation/vim-colors-solarized'
Plug 'paramagicdev/vim-medic_chalk'
Plug 'mhartington/oceanic-next'
Plug 'sickill/vim-monokai'
Plug 'mcmartelle/vim-monokai-bold'
Plug 'phanviet/vim-monokai-pro'
Plug 'adlawson/vim-sorcerer'
Plug 'erichdongubler/vim-sublime-monokai'

" elixir
" Plug 'mhinz/vim-mix-format'
" Plug 'jakebecker/elixir-ls'
" Plug 'andyl/vim-textobj-elixir'
" Plug 'elixir-editors/vim-elixir'
" Plug 'c-brenn/phoenix.vim'
" Plug 'tpope/vim-projectionist'
" Plug 'mattreduce/vim-mix'

" ruby
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/ruby-matchit'
" Plug 'nelstrom/vim-textobj-rubyblock'
" Plug 'kchmck/vim-coffee-script'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-rake'
Plug 'jgdavey/vim-blockle'
Plug 'thoughtbot/vim-rspec'
Plug 'ecomba/vim-ruby-refactoring'

" Rust
Plug 'rust-lang/rust.vim'
Plug 'simrat39/rust-tools.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'MunifTanjim/nui.nvim'

"PlantUML
Plug 'aklt/plantuml-syntax'
Plug 'weirongxu/plantuml-previewer.vim'

call plug#end()

" mouse mode
" "set mouse=a
"
"" set _ as a word separator
"set iskeyword-=_

" Leader key
let mapleader = "\<Space>"

set termguicolors
set t_Co=256
let g:solarized_termcolors=256

" set line length marker
set colorcolumn=100
" set colorcolumn=80

" Disable hiding quotes in json files
autocmd Filetype json let g:indentLine_enabled = 0
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_char_list = ['¦']
" let g:indentLine_setColors = 0
" let g:indentLine_defaultGroup = 'SpecialKey'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme gruvbox :hi IndentGuidesOdd  guibg=none guifg=#32302f
" autocmd VimEnter,Colorscheme gruvbox :hi IndentGuidesEven guibg=#363230 guifg=#363230
" autocmd VimEnter,Colorscheme gruvbox :hi IndentGuidesOdd  guibg=none guifg=none
" autocmd VimEnter,Colorscheme gruvbox :hi IndentGuidesEven guibg=#2d2b2a guifg=#2d2b2a
" light
" autocmd VimEnter,Colorscheme gruvbox :hi IndentGuidesOdd  guibg=none guifg=#f2e5bc
" autocmd VimEnter,Colorscheme gruvbox :hi IndentGuidesEven guibg=#e7d9b0 guifg=#e7d9b0
" hi IndentGuidesOdd guifg=#32302f ctermbg=black


" colorschemes
" colorscheme tokyonight
" colorscheme tokyonight-night
" colorscheme tokyonight-storm
" colorscheme tokyonight-day
" colorscheme tokyonight-moon
" colorscheme iceberg
" colorscheme nord
" colorscheme archery
" colorscheme onedark
" colorscheme dracula
"
" colorscheme catppuccin
" colorscheme catppuccin-latte
" colorscheme catppuccin-frappe
colorscheme catppuccin-macchiato
" colorscheme catppuccin-mocha

" colorscheme molokai-light
" colorscheme molokai

" colorscheme monokai
" colorscheme sublimemonokai
" colorscheme monokai-bold
" colorscheme monokai_pro
" colorscheme Tomorrow-Night-Eighties

" colorscheme gruvbox
" let g:gruvbox_contrast_dark = 'soft'
" let g:gruvbox_contrast_light = 'soft'

" colorscheme solarized8_high

" colorscheme solarized8
" colorscheme solarized
" colorscheme github
" colorscheme medic_chalk
" colorscheme OceanicNext
" colorscheme sorcerer

 " LIGHT THEME
 " set background=light
 " let g:airline_theme='solarized'

" DARK THEME
set background=dark
let g:airline_theme='solarized_flood'

" hi EasyMotionTarget guibg=none guifg=#ff2400
" hi EasyMotionShade guibg=none guifg=none
" hi EasyMotionTarget2First guibg=none guifg=#ff2400
" hi EasyMotionTarget2Second guibg=none guifg=#ff2400"

" airline settings
"let g:airline#extensions#branch = '0'
"let g:airline#extensions#fugitiveline = '0'
"let g:airline_theme='github'
 
" foldings
" let viewdir=$HOME . '/.config/nvim/views/'
" set foldmethod=syntax
" autocmd Filetype * AnyFoldActivate
" set foldlevel=99

" indents
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent

" line numbers
set nu

" splits open on rightside
set splitright
set splitbelow

" comments
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" experimental options to speed up the scrolling with ruby syntax on
set ttyfast
set regexpengine=1
set synmaxcol=100
syntax sync minlines=100
" set lazyredraw
"let ruby_operators = 1
set cursorline
"syntax off

"sessions
" sessions to not load if you're explicitly loading a file in a workspace directory
"let g:workspace_session_disable_on_args = 1	
"let g:workspace_autosave_always = 1
" save all your session files in a single directory outside of your workspace	
"let g:workspace_session_directory = $HOME . '/.config/nvim/sessions/'

" Required for operations modifying multiple buffers like rename.
set hidden

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

" netrw
let g:netrw_fastbrowse = 0
let g:netrw_liststyle = 3

" slime settings
let g:slime_target = 'tmux'

" neoterm
" let g:neoterm_default_mod='belowright' " open terminal in bottom split
let g:neoterm_default_mod='vertical' " open terminal in bottom split
" let g:neoterm_size=16 " terminal split size
let g:neoterm_autoscroll=1 " scroll to the bottom when running a command
nnoremap <leader>ll :<c-u>exec v:count.'Tclear'<cr>
nnoremap <leader>z :Ttoggle<cr>
nnoremap <leader><cr> :TREPLSendLine<cr> " send current line and move down
vnoremap <leader><cr> :TREPLSendSelection<cr> " send current selection

" test runner settings
let test#strategy = 'tslime'
" let test#ruby#rspec#executable = 'bundle exec spring rspec'
" let test#ruby#rspec#executable = 'bundle exec rspec'
" let test#ruby#rspec#executable = 'spring rspec'
let test#ruby#rspec#executable = 'rspec'
" let test#ruby#rspec#executable = 'docker compose exec app rspec'

augroup elixir
  nnoremap <leader>r :! elixir %<cr>
  autocmd FileType elixir nnoremap <c-]> :ALEGoToDefinition<cr>
augroup END<Paste>

" search highlighting
set nohlsearch

" plantuml
let g:preview_uml_url='http://localhost:8080'

" tagbar ruby settings
" let g:tagbar_type_ruby = { 'ctagstype': 'rspec', 'kinds': ['d:describes'], }
  if executable('ripper-tags')
    let g:tagbar_type_ruby = {
        \ 'kinds'      : ['m:modules',
                        \ 'c:classes',
                        \ 'C:constants',
                        \ 'F:singleton methods',
                        \ 'f:methods',
                        \ 'a:aliases'],
        \ 'kind2scope' : { 'c' : 'class',
                         \ 'm' : 'class' },
        \ 'scope2kind' : { 'class' : 'c' },
        \ 'ctagsbin'   : 'ripper-tags',
        \ 'ctagsargs'  : ['-f', '-']
        \ }
  endif

" guten tags will use ripgrep -> ripgrep would respect our .gitignore
let g:gutentags_file_list_command = 'rg --files'
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_ctags_auto_set_tags = 1
let g:gutentags_ctags_extra_args = ['--tag-relative=yes', '--fields=+ailmnS']
let g:gutentags_exclude_filetypes = ['gitcommit', 'gitconfig', 'gitrebase', 'gitsendemail', 'git']
" let g:gutentags_trace = 1

" snippets bindings
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:UltiSnipsListSnippets="<C-;>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Gitgutter settings
" Colors
let g:gitgutter_override_sign_column_highlight = 0
highlight clear SignColumn
highlight GitGutterAdd guifg=Green ctermfg=2
highlight GitGutterChange guifg=Olive ctermfg=3
highlight GitGutterDelete guifg=Maroon ctermfg=1
highlight GitGutterChangeDelete guifg=Navy ctermfg=4

" rooter
let g:rooter_patterns = ['efile', '.git/']

" tell tslime.vim to use the current session and current window,
" this let's you avoid specifying this on every upstart of vim.
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

let g:vim_json_conceal=0

" vim-rails settings
" projections
"let g:rails_projections = {}

" maps
  " Fzf search among files
  " fzf file fuzzy search that respects .gitignore
  " If in git directory, show only files that are committed, staged, or unstaged
  " else use regular :Files
  " nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"
  " Fzf search among buffers
  " nnoremap <C-b> :Buffers<CR>
  " Fzf search among marks
  " nnoremap <C-m> :Marks<CR>
  " Fzf search among marks
  " nnoremap <C-s> :Snippets<CR>
" close fzf finder via <esc>
  " autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>

  nnoremap <c-P> <cmd>lua require('fzf-lua').files()<CR>
  nnoremap <c-B> <cmd>lua require('fzf-lua').buffers()<CR>
  nnoremap <c-Q> <cmd>lua require('fzf-lua').quickfix()<CR>

  nnoremap <Leader>s :TestNearest<CR>
  nnoremap <Leader>t :TestFile<CR>
  nnoremap <Leader>a :TestSuite<CR>
  nnoremap <Leader>l :TestLast<CR>
  nnoremap <Leader>v :TestVisit<CR>

  " go to normal node in terminal
  tnoremap <Esc> <C-\><C-n>

  " vim easy align maps
  xmap ga <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)

  
  " Ranger browser
  nnoremap <F1> :call SendToTmux('q')<CR>
  nnoremap <F2> :Ranger<CR>
  nnoremap <F3> :TagbarOpenAutoClose<CR>
  nnoremap <Leader><F3> :TagbarToggle<CR>

  " call ddc#custom#patch_global('ui', 'native')
  " " file lsp
  " call ddc#custom#patch_global('sources', ['around', 'buffer', 'rg', 'file', 'lsp'])

  " " Use matcher_head and sorter_rank.
  " call ddc#custom#patch_global('sourceOptions', {
      " \ '_': {
      " \   'matchers': ['matcher_head'],
      " \   'sorters': ['sorter_rank']},
      " \ })

  " " Change source options
  " call ddc#custom#patch_global('sourceOptions', {
        " \ 'around': { 'mark': 'A'},
        " \ 'buffer': { 'mark': 'B'},
        " \ 'file':   { 'mark': 'F', 'isVolatile': v:true, 'forceCompletionPattern': '\S/\S*'},
        " \ 'rg':     { 'mark': 'rg', 'minAutoCompleteLength': 4},
        " \ 'lsp':    { 'mark': 'LSP', 'forceCompletionPattern': '\.\w*|:\w*|->\w*' },
        " \ })

  " call ddc#custom#patch_global('sourceParams', {
        " \ 'around': {'maxSize': 10},
        " \ 'rg':     {'maxSize': 10},
        " \ 'lsp':    {
        " \     'enableResolveItem': v:true,
        " \     'enableAdditionalTextEdit': v:true,
        " \  },
        " \ 'buffer': {
        " \   'maxSize': 10,
        " \   'requireSameFiletype': v:false,
        " \   'limitBytes': 5000000,
        " \   'fromAltBuf': v:true,
        " \   'forceCollect': v:true,
        " \ },
        " \ })

  " inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

  " " <S-TAB>: completion back.
  " inoremap <expr><S-TAB> pumvisible() ? '<C-p>' : '<C-h>'

  " Use ddc.
  " call ddc#enable()

  " Find word through the project via RipGrep
  nnoremap <Leader>rg :Rg <C-r>=expand("<cword>")<CR><CR>

  " Find tag by the name in single quotes
  nnoremap <Leader>fc  vi'<C-]><CR>

  " Resize window width to 96
  nnoremap <Leader>ww :vertical resize 96<CR>

  " Add debugger line
  nnoremap <Leader>deb odebugger<Esc>

  " Add byebug line
  nnoremap <Leader>bye obyebug<Esc>

  " Add pry line
  nnoremap <Leader>pry obinding.pry<Esc>

  " Git blame
  nnoremap <Leader>gb :Git blame<CR>
  " Git vertical split with master for the same file
  nnoremap <Leader>gvs :Gvsplit master:%<CR>

  " Compare current file with its version on master
  nnoremap <Leader>cmpm :Gvsplit master:%<CR>

  " Remove all the opened buffers
  nnoremap <Leader>cbf :%bd!<CR>

  nnoremap ; :
  nnoremap : ;

  "tslime bindings
  vmap <C-c><C-c> <Plug>SendSelectionToTmux
  nmap <C-c><C-c> <Plug>NormalModeSendToTmux
  nmap <C-c>r <Plug>SetTmuxVars

	" clipboard settings
  " toggle paste in cmd only
  nnoremap <Leader>n :set invpaste<CR>
  " cut to clipboard
  vnoremap <silent> <C-x> "+d
  " copy to clipboard
  vnoremap <silent> <C-c> "+y
  " paste from clipboard
  inoremap <silent> <C-v> <ESC>"+pa
  " select pasted text
  nnoremap <expr> gV    "`[".getregtype(v:register)[0]."`]"

  noremap <Up> <Nop>
  noremap <Down> <Nop>
  noremap <Left> <Nop>
  noremap <Right> <Nop>

" Vimspector
let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_sidebar_width = 85
let g:vimspector_bottombar_height = 15
let g:vimspector_terminal_maxwidth = 70

" Rust
let g:rustfmt_autosave = 1

lua << EOF

vim.diagnostic.config({
    virtual_text     = true,
    signs            = false,
    update_in_insert = true,
    underline        = true,
    severity_sort    = false,
})

vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

local config_ruby = {
  name = 'solargraph',
  cmd = { 'solargraph', 'stdio' },
  root_dir = vim.fs.dirname(vim.fs.find({'Gemfile', '.git'}, { upward = true })[1]),
  autostart = true
}

local config_python = {
    name = 'pyright',
    cmd = { 'pyright-langserver', '--stdio' },
    root_dir = vim.fs.dirname(vim.fs.find({'app.py', '.git'}, { upward = true })[1]),
    autostart = true
}

--vim.lsp.start(config)

 vim.api.nvim_create_autocmd('FileType', {
   pattern = 'ruby',
   callback = function()
     vim.lsp.start(config_ruby)
   end,
 })

 vim.api.nvim_create_autocmd('FileType', {
   pattern = 'python',
   callback = function()
     vim.lsp.start(config_python)
   end,
 })

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)

    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  end
})

--local null_ls = require("null-ls")
--
--null_ls.setup({
--    sources = {
--      null_ls.builtins.diagnostics.rubocop,
--      null_ls.builtins.diagnostics.flake8,
--      null_ls.builtins.formatting.black,
--      null_ls.builtins.formatting.isort, 
--    },
--})

-- Define a keybinding for triggering rubocop autofix if the current file
vim.api.nvim_set_keymap('n', '<Leader>af', ':!rubocop -a -f quiet --stderr %<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>pf', ':lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })


-- terminal

local api = vim.api
api.nvim_command("autocmd TermOpen * startinsert")             -- starts in insert mode
api.nvim_command("autocmd TermOpen * setlocal nonumber")       -- no numbers
api.nvim_command("autocmd TermEnter * setlocal signcolumn=no") -- no sign column


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

-- cmp
local cmp = require("cmp")
cmp.setup({
  -- Enable LSP snippets
  snippet = {
    expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
    end,
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
  -- Installed sources:
  sources = {
    { name = 'path', keyword_length = 2 },                              -- file paths
    { name = 'nvim_lsp', keyword_length = 3, max_item_count = 10 },      -- from language server
    { name = 'nvim_lsp_signature_help'},            -- display function signatures with current parameter emphasized
    { name = 'nvim_lua', keyword_length = 2},       -- complete neovim's Lua runtime API such vim.lsp.*
    { name = 'buffer', keyword_length = 2 },        -- source current buffer
    { name = 'vsnip', keyword_length = 2 },         -- nvim-cmp source for vim-vsnip 
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
              vsnip = '⋗',
              buffer = 'Ω',
              path = '🖫',
          }
          item.menu = menu_icon[entry.source.name]
          return item
      end,
  },
})

EOF

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "rust", "ruby", "lua", "vim", "vimdoc", "query" },
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
EOF
