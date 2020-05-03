call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'janko/vim-test'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'burntsushi/ripgrep'
Plug 'tpope/vim-endwise'
Plug 'jpalardy/vim-slime'
Plug 'terryma/vim-expand-region'
Plug 'kana/vim-textobj-user'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-unimpaired'
Plug 'bling/vim-bufferline'
Plug 'ludovicchabant/vim-gutentags'
Plug 'w0rp/ale'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-dispatch'
Plug 'farmergreg/vim-lastplace'
Plug 'thaerkh/vim-workspace'
Plug 'airblade/vim-gitgutter'
Plug 'yggdroot/indentline'
Plug 'tyru/open-browser.vim'
Plug 'tyru/open-browser-github.vim'
Plug 'majutsushi/tagbar'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'airblade/vim-rooter'
Plug 'jgdavey/tslime.vim'
Plug 'kylef/apiblueprint.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'easymotion/vim-easymotion'

" colorschemes
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'zefei/cake16'

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
set mouse=a

" set line length marker
set colorcolumn=90

" Disable hiding quotes in json files
autocmd Filetype json let g:indentLine_enabled = 0

syntax on

" colorschemes
colorscheme iceberg
"colorscheme nord
"colorscheme gruvbox
"set background=light

" folding
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=2

" indents
set expandtab
set tabstop=2
set shiftwidth=2
let g:indentLine_char = '│'
set smartindent

" linenumbers
set cursorline
set nu

" splits open on rightside
set splitright
set splitbelow

" airline settings
let g:airline#extensions#ale#enabled = 1

" Required for operations modifying multiple buffers like rename.
set hidden

let g:coc_global_extensions = ['coc-solargraph']

" slime settings
let g:slime_target = 'tmux'

" test runner settings
let test#strategy = 'tslime'
let test#elixir#runner = 'exunit'
let test#ruby#rspec#executable = 'spring rspec'
"let test#ruby#rspec#executable = 'docker-compose run web rspec'

"set completeopt=menu,menuone,noselect,noinsert
"set omnifunc=ale#completion#OmniFunc
"
"disabledb because of COC solargraph errors
"let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_delay = 200

augroup elixir
  nnoremap <leader>r :! elixir %<cr>
  autocmd FileType elixir nnoremap <c-]> :ALEGoToDefinition<cr>
augroup END<Paste>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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
highlight ALEErrorSign ctermbg=NONE ctermfg=red
let g:ale_sign_warning = '⚠'
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 1
let g:ale_lint_delay = 300
let g:ale_set_highlights = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 1
let g:ale_fix_on_save = 0

" Fix linter errors
nmap <silent> af :ALEFix<cr>

" workspaces
" sessions to not load if you're explicitly loading a file in a workspace directory
let g:workspace_session_disable_on_args = 1
let g:workspace_autosave_always = 0
" save all your session files in a single directory outside of your workspace
let g:workspace_session_directory = $HOME . '/.config/nvim/sessions/'

" close fzf finder via <esc>
autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>

" search highlighting
set nohlsearch

" NERDTree
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

" guten tags will use ripgrep -> ripgrep would respect our .gitignore
let g:gutentags_file_list_command = 'rg --files'
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_ctags_auto_set_tags = 1

" snippets bindings
let g:UltiSnipsExpandTrigger="<C-k>"
let g:UltiSnipsJumpForwardTrigger="<C-x>"
let g:UltiSnipsJumpBackwardTrigger="<C-d>"
let g:UltiSnipsListSnippets="<C-l>"
"let g:UltiSnipsSnippetsDir="/Users/aleh.shapo/.config/nvim/plugged/vim-snippets/snippets"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" rooter
let g:rooter_patterns = ['Rakefile', '.git/']
let g:vim_json_conceal=0
" maps
  " fuzzy find maps
  " fzf file fuzzy search that respects .gitignore
  " If in git directory, show only files that are committed, staged, or unstaged
  " else use regular :Files
  nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

  " Toggle relative line number
  nmap <C-l><C-l> :set invrelativenumber<CR>

  " vim-test maps
  " In a test file runs the test nearest to the cursor, otherwise runs the last nearest test
  nmap     <Leader>s :TestNearest<CR>
  " In a test file runs all tests in the current file, otherwise runs the last file tests.
  nmap     <Leader>t :TestFile<CR>
  " Runs the whole test suite (if the current file is a test file, runs that framework's test suite,
  " otherwise determines the test framework from the last run test).
  nmap     <Leader>a :TestSuite<CR>
  " Runs the last test.
  nmap     <Leader>l :TestLast<CR>
  " Visits the test file from which you last run your tests
  " (useful when you're trying to make a test pass, and you dive deep into application
  " code and close your test buffer to make more space, and once you've made
  " it pass you want to go back to the test file to write more tests).
  nmap     <Leader>v :TestVisit<CR>

  " go to normal node in terminal
  tnoremap <Esc> <C-\><C-n>

  " vim easy align maps
  xmap ga <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)

  "Move between linting errors
  nnoremap ]r :ALENextWrap<CR>
  nnoremap [r :ALEPreviousWrap<CR>

  " NERDTree
  map <silent> <F2> :NERDTreeToggle<CR>
  map <silent> <F3> :NERDTreeFind<CR>

  " Tagbar
  nmap <F1> :TagbarToggle<CR>

  "workspace maps
  nnoremap <leader>wt :ToggleWorkspace<CR>

  " deoplete tab-complete
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

  nnoremap <Leader>rg :Rg <C-r>=expand("<cword>")<CR><CR>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
