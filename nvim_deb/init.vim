call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'janko/vim-test'
Plug '~/.fzf'
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
Plug 'hkupty/iron.nvim'
Plug 'scrooloose/syntastic'
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
"Plug 'eapache/starscope'
"Plug 'chazy/cscope_maps'
"Plug 'vim-utils/vim-ruby-fold'
"Plug 'rlue/vim-fold-rspec'
Plug 'thoughtbot/vim-rspec'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" coffee
Plug 'lukaszkorecki/coffeetags'

call plug#end()

" mouse mode
set mouse=a

" set line length marker
set colorcolumn=80

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

let g:LanguageClient_serverCommands = {
    \ 'ruby': ['~/.rvm/gems/ruby-2.7.0/bin/solargraph', 'stdio'],
    \ }
nnoremap <F5> :call LanguageClient_contextMenu()<CR>


" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" slime settings
let g:slime_target = 'tmux'

" test runner settings
let test#strategy = 'tslime'
let test#elixir#runner = 'exunit'
let test#ruby#rspec#executable = 'docker-compose run web rspec'

set completeopt=menu,menuone,noselect,noinsert
"set omnifunc=ale#completion#OmniFunc
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
"let g:deoplete#auto_complete_delay = 500

augroup elixir
  nnoremap <leader>r :! elixir %<cr>
  autocmd FileType elixir nnoremap <c-]> :ALEGoToDefinition<cr>
augroup END<Paste>

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" ALE settings
let g:ale_linters = {}
let g:ale_linters.elixir = ['elixir-ls']
let g:ale_linters.ruby = ['ruby', 'rubucop']

let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fixers.elixir = ['mix_format']
"let g:ale_elixir_elixir_ls_release = '/home/hzyy/Projects/elixir_projects/elixir-ls/rel'
let g:ale_elixir_elixir_ls_release = '/Users/aleh.shapo/Projects/elixir-cw/elixir-ls/rel'

let g:ale_sign_error = '✘'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
let g:ale_sign_warning = '⚠'
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_delay = 250
let g:ale_set_highlights = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1

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
  nmap     t<C-n> :TestNearest<CR>
  nmap     t<C-f> :TestFile<CR>
  nmap     t<C-s> :TestSuite<CR>
  nmap     t<C-l> :TestLast<CR>
  nmap     t<C-g> :TestVisit<CR>

  " go to normal node in terminal
  tnoremap <Esc> <C-\><C-n>

  " vim easy align maps
  xmap ga <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)

  " ale maps
  noremap <Leader>ad :ALEGoToDefinition<CR>
  noremap <Leader>at :ALEGoToDefinitionInTab<CR>
  nnoremap <Leader>af :ALEFix<cr>
  noremap <Leader>ar :ALEFindReferences<CR>

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

  " omni completion
  "imap <Tab> <C-O>y

  " deoplete tab-complete
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

nnoremap <Leader>rg :Rg <C-r>=expand("<cword>")<CR><CR>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
