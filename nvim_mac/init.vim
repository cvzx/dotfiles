call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdcommenter'
Plug 'janko/vim-test'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'burntsushi/ripgrep'
Plug 'tpope/vim-endwise'
Plug 'terryma/vim-expand-region'
Plug 'kana/vim-textobj-user'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-unimpaired'
Plug 'bling/vim-bufferline'
Plug 'ludovicchabant/vim-gutentags'
Plug 'w0rp/ale'
Plug 'tpope/vim-surround'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-dispatch'
Plug 'farmergreg/vim-lastplace'
Plug 'airblade/vim-gitgutter'
Plug 'yggdroot/indentline'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'tyru/open-browser.vim'
Plug 'tyru/open-browser-github.vim'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-rooter'
Plug 'jgdavey/tslime.vim'
Plug 'kylef/apiblueprint.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'easymotion/vim-easymotion'
Plug 'andrewradev/splitjoin.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'michaeljsmith/vim-indent-object'
Plug 'vifm/vifm.vim'
Plug 'neoclide/coc-solargraph'
Plug 'pseewald/vim-anyfold'

" colorschemes
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

" elixir
Plug 'mhinz/vim-mix-format'
Plug 'jakebecker/elixir-ls'
Plug 'andyl/vim-textobj-elixir'
Plug 'elixir-editors/vim-elixir'
Plug 'c-brenn/phoenix.vim'
Plug 'tpope/vim-projectionist'
Plug 'mattreduce/vim-mix'

" ruby
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/ruby-matchit'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'kchmck/vim-coffee-script'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-rake'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'jgdavey/vim-blockle'
Plug 'thoughtbot/vim-rspec'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" coffee
Plug 'lukaszkorecki/coffeetags'

call plug#end()

" mouse mode
"set mouse=a

" Leader key
let mapleader = "\<Space>"

set termguicolors
set t_Co=256

" set line length marker
set colorcolumn=90

" Disable hiding quotes in json files
autocmd Filetype json let g:indentLine_enabled = 0
"plugin

syntax on

" colorschemes
"colorscheme iceberg
"colorscheme nord
"colorscheme gruvbox
"colorscheme archery
"colorscheme onedark
"colorscheme dracula
"colorscheme solarized8_high
"colorscheme molokai
"colorscheme Tomorrow-Night-Eighties
colorscheme solarized8
let ruby_operators = 1
"colorscheme github
"set background=dark
set background=light
 
" foldings
"let viewdir=$HOME . '/.config/nvim/views/'
"set foldmethod=syntax
autocmd Filetype * AnyFoldActivate
set foldlevel=99

" indents
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent

" linenumbers
set cursorline
set nu

" splits open on rightside
set splitright
set splitbelow

"sessions
" sessions to not load if you're explicitly loading a file in a workspace directory
"let g:workspace_session_disable_on_args = 1	
"let g:workspace_autosave_always = 1
" save all your session files in a single directory outside of your workspace	
"let g:workspace_session_directory = $HOME . '/.config/nvim/sessions/'

" airline settings
let g:airline#extensions#ale#enabled = 1
let g:airline_theme='solarized'
"let g:airline_theme='github'

" Required for operations modifying multiple buffers like rename.
set hidden

" Coc settings
let g:coc_global_extensions = ['coc-solargraph']

" slime settings
let g:slime_target = 'tmux'

" netrw
let g:netrw_fastbrowse = 0
let g:netrw_liststyle = 3

" test runner settings
let test#strategy = 'tslime'
let test#elixir#runner = 'exunit'
"let test#ruby#rspec#executable = 'bundle exec rspec'
let test#ruby#rspec#executable = "bundle exec spring rspec"
"let test#ruby#rspec#executable = 'docker-compose run gizmo rspec'

"disabledb because of COC solargraph errors
"let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_delay = 200

augroup elixir
  nnoremap <leader>r :! elixir %<cr>
  autocmd FileType elixir nnoremap <c-]> :ALEGoToDefinition<cr>
augroup END<Paste>

" ALE settings
let g:ale_linters = {}
let g:ale_linters.elixir = ['elixir-ls']
let g:ale_linters.ruby = ['standardrb', 'rubocop']

let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fixers.elixir = ['mix_format']
let g:ale_fixers.ruby = ['standardrb', 'rubocop']
"let g:ale_elixir_elixir_ls_release = '/home/hzyy/Projects/elixir_projects/elixir-ls/rel'
"let g:ale_elixir_elixir_ls_release = '/Users/aleh.shapo/Projects/elixir-cw/elixir-ls/rel'

let g:ale_sign_error = '✘'
highlight ALEErrorSign ctermfg=red guifg=red
let g:ale_sign_warning = '⚠'
highlight ALEWarningSign ctermfg=yellow guifg=yellow cterm=bold gui=bold
highlight ALEWarning ctermbg=239 guibg=Grey30
highlight ALEError ctermbg=239 guibg=Grey30

let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 1
let g:ale_lint_delay = 300
let g:ale_set_highlights = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 1
let g:ale_fix_on_save = 0

" close fzf finder via <esc>
autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>

" search highlighting
set nohlsearch

" guten tags will use ripgrep -> ripgrep would respect our .gitignore
let g:gutentags_file_list_command = 'rg --files'
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_ctags_auto_set_tags = 1
let g:gutentags_ctags_extra_args = ['--tag-relative=yes', '--fields=+ailmnS']
let g:gutentags_exclude_filetypes = ['gitcommit', 'gitconfig', 'gitrebase', 'gitsendemail', 'git']

" snippets bindings
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:UltiSnipsListSnippets="<C-;>"
"let g:UltiSnipsSnippetsDir="/Users/aleh.shapo/.config/nvim/plugged/vim-snippets/snippets"
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
"let g:tslime_always_current_session = 1
"let g:tslime_always_current_window = 1

let g:vim_json_conceal=0

" vim-rails settings
" projections
"let g:rails_projections = {}

" maps
  " fuzzy find maps
  " fzf file fuzzy search that respects .gitignore
  " If in git directory, show only files that are committed, staged, or unstaged
  " else use regular :Files
  nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

  " Fix linter errors
  nnoremap <silent> af :ALEFix<cr>

  " Toggle relative line number
  nmap <C-l><C-l> :set invrelativenumber<CR>

  " vim-test maps
  " In a test file runs the test nearest to the cursor, otherwise runs the last nearest test
  nnoremap <Leader>s :TestNearest<CR>
  " In a test file runs all tests in the current file, otherwise runs the last file tests.
  nnoremap <Leader>t :TestFile<CR>
  " Runs the whole test suite (if the current file is a test file, runs that framework's test suite,
  " otherwise determines the test framework from the last run test).
  nnoremap <Leader>a :TestSuite<CR>
  " Runs the last test.
  nnoremap <Leader>l :TestLast<CR>
  " Visits the test file from which you last run your tests
  " (useful when you're trying to make a test pass, and you dive deep into application
  " code and close your test buffer to make more space, and once you've made
  " it pass you want to go back to the test file to write more tests).
  nnoremap <Leader>v :TestVisit<CR>

  " go to normal node in terminal
  tnoremap <Esc> <C-\><C-n>

  " vim easy align maps
  xmap ga <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)

  " Move between linting errors
  nnoremap ]r :ALENextWrap<CR>
  nnoremap [r :ALEPreviousWrap<CR>

  " Move between files on GReview
  
  " Tagbar
  nnoremap <F1> :TagbarToggle<CR>

  " deoplete tab-complete
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

  " Find word through the project via RipGrep
  nnoremap <Leader>rg :Rg <C-r>=expand("<cword>")<CR><CR>

  " Find tag by the name in single quotes
  nnoremap <Leader>fc  vi'<C-]><CR>

  " Resize window width to 96
  nnoremap <Leader>ww :vertical resize 96<CR>

  " Add byebug line
  nnoremap <Leader>bye obyebug<Esc>

  nnoremap ; :
  nnoremap : ;

  " COC bindings
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  "tslime bindings
  vmap <C-c><C-c> <Plug>SendSelectionToTmux
  nmap <C-c><C-c> <Plug>NormalModeSendToTmux
  nmap <C-c>r <Plug>SetTmuxVars

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
