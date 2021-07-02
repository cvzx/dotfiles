call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdcommenter'
Plug 'janko/vim-test'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'burntsushi/ripgrep'
Plug 'tpope/vim-endwise'
Plug 'terryma/vim-expand-region'
Plug 'kana/vim-textobj-user'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-unimpaired'
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
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'neoclide/coc-solargraph'
" Plug 'pseewald/vim-anyfold'
Plug 'hashivim/vim-terraform'
Plug 'majutsushi/tagbar'
Plug 'aserebryakov/vim-todo-lists'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-repeat'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'kshenoy/vim-signature'
Plug 'tpope/vim-sensible'
Plug 'tmux-plugins/vim-tmux-focus-events'
" Plug 'blueyed/vim-diminactive'
" Plug 'codota/tabnine-vim'

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
Plug 'paramagicdev/vim-medic_chalk'
Plug 'mhartington/oceanic-next'
Plug 'sickill/vim-monokai'
Plug 'mcmartelle/vim-monokai-bold'
Plug 'phanviet/vim-monokai-pro'
Plug 'adlawson/vim-sorcerer'

" elixir
" Plug 'mhinz/vim-mix-format'
" Plug 'jakebecker/elixir-ls'
" Plug 'andyl/vim-textobj-elixir'
" Plug 'elixir-editors/vim-elixir'
" Plug 'c-brenn/phoenix.vim'
" Plug 'tpope/vim-projectionist'
" Plug 'mattreduce/vim-mix'

" ruby
Plug 'ecomba/vim-ruby-refactoring'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/ruby-matchit'
Plug 'nelstrom/vim-textobj-rubyblock'
" Plug 'kchmck/vim-coffee-script'
" Plug 'slim-template/vim-slim'
" Plug 'tpope/vim-rake'
Plug 'jgdavey/vim-blockle'
Plug 'thoughtbot/vim-rspec'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Rust
Plug 'rust-lang/rust.vim'
Plug 'puremourning/vimspector'

" coffee
" Plug 'lukaszkorecki/coffeetags'

call plug#end()

" mouse mode
"set mouse=a

" set _ as a word separator
"set iskeyword-=_

" Leader key
let mapleader = "\<Space>"

set termguicolors
set t_Co=256
let g:solarized_termcolors=256

" set line length marker
set colorcolumn=90

" Disable hiding quotes in json files
autocmd Filetype json let g:indentLine_enabled = 0

" colorschemes
" colorscheme iceberg
" colorscheme nord
" colorscheme gruvbox
" colorscheme archery
" colorscheme onedark
" colorscheme dracula
" colorscheme molokai
colorscheme monokai
" colorscheme monokai-bold
" colorscheme monokai_pro
"colorscheme Tomorrow-Night-Eighties
" colorscheme solarized8_high
" colorscheme solarized8
"colorscheme solarized
" colorscheme github
" colorscheme medic_chalk
"colorscheme OceanicNext
" colorscheme sorcerer

" LIGHT THEME
" set background=light
" let g:airline_theme='solarized'
" highlight ALEWarning ctermbg=lightgray guibg=lightgray
" highlight ALEError ctermbg=lightgray guibg=lightgray

" DARK THEME
" set background=dark
" let g:airline_theme='solarized_flood'
" let g:airline_theme='base16_monokai'
" highlight ALEWarning ctermbg=gray guibg=darkslategray
" highlight ALEError ctermbg=gray guibg=darkslategray
" hi EasyMotionTarget guibg=none guifg=#ff2400
" hi EasyMotionShade guibg=none guifg=none
" hi EasyMotionTarget2First guibg=none guifg=#ff2400
" hi EasyMotionTarget2Second guibg=none guifg=#ff2400

" airline settings
"let g:airline#extensions#ale#enabled = 1
"let g:airline#extensions#branch = '0'
"let g:airline#extensions#fugitiveline = '0'
"let g:airline_theme='github'
 
" foldings
" let viewdir=$HOME . '/.config/nvim/views/'
" set foldmethod=syntax
" autocmd Filetype * AnyFoldActivate
" set foldlevel=99

" Rust syntax experimental options
syntax enable
filetype plugin indent on

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
set lazyredraw
"let ruby_operators = 1
"set cursorline
"syntax off

"sessions
" sessions to not load if you're explicitly loading a file in a workspace directory
"let g:workspace_session_disable_on_args = 1	
"let g:workspace_autosave_always = 1
" save all your session files in a single directory outside of your workspace	
"let g:workspace_session_directory = $HOME . '/.config/nvim/sessions/'

" Required for operations modifying multiple buffers like rename.
set hidden

" Vimspector
let g:vimspector_enable_mappings = 'HUMAN'

nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimspectorEval
nmap <leader>dw :VimspectorWatch
nmap <leader>do :VimspectorShowOutput

let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-go', 'CodeLLDB' ]

" Coc settings
let g:coc_global_extensions = ['coc-solargraph']

" netrw
let g:netrw_fastbrowse = 0
let g:netrw_liststyle = 3

" slime settings
let g:slime_target = 'tmux'

" test runner settings
let test#strategy = 'tslime'
let test#elixir#runner = 'exunit'
" let test#ruby#rspec#executable = 'bundle exec rspec'
let test#ruby#rspec#executable = "bundle exec spring rspec"
"let test#ruby#rspec#executable = 'docker-compose run gizmo rspec'

"disabledb because of COC solargraph errors
" let g:deoplete#enable_at_startup = 1
call deoplete#custom#option({'enable_smart_case': 5, 'auto_complete_delay': 100})

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
highlight ALEWarningSign ctermfg=blue guifg=blue

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

" tagbar
let g:tagbar_type_ruby = { 'ctagstype': 'rspec', 'kinds': ['d:describes'], }

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
  nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

  " Fzf search among buffers
  nnoremap <C-b> :Buffers<CR>

  " Fzf search among marks
  nnoremap <C-m> :Marks<CR>

  " Fzf search among marks
  nnoremap <C-s> :Snippets<CR>

  " Fix linter errors
  nnoremap <silent> af :ALEFix<CR>

  " vim-test maps
  " nnoremap <Leader>s :call SendToTmux('q; ')<CR> :TestNearest<CR>
  " nnoremap <Leader>t :call SendToTmux('q; ')<CR> :TestFile<CR>
  " nnoremap <Leader>a :call SendToTmux('q; ')<CR> :TestSuite<CR>
  " nnoremap <Leader>l :call SendToTmux('q; ')<CR> :TestLast<CR>
  " nnoremap <Leader>v :TestVisit<CR>
  nnoremap <Leader>s :TestNearest<CR>
  nnoremap <Leader>t :TestFile<CR>
  nnoremap <Leader>a :TestSuite<CR>
  nnoremap <Leader>l :TestLast<CR>
  nnoremap <Leader>v :TestVisit<CR>
  nnoremap <F1> :call SendToTmux('q')<CR>

  " go to normal node in terminal
  tnoremap <Esc> <C-\><C-n>

  " vim easy align maps
  xmap ga <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)

  " Move between linting errors
  nnoremap ]r :ALENextWrap<CR>
  nnoremap [r :ALEPreviousWrap<CR>
  
  " Tagbar
  "nnoremap <F1> :TagbarToggle<CR>
  
  " Ranger browser
  nnoremap <F2> :Ranger<CR>
  nnoremap <F3> :GutentagsUpdate!<CR>

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

  " Add pry line
  nnoremap <Leader>pry obinding.pry<Esc>

  " Remove all the opened buffers
  nnoremap <Leader>cbf :%bd!<CR>

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
