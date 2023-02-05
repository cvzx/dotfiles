call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'AndrewRadev/diffurcate.vim'
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
Plug 'Shougo/pum.vim'
Plug 'Shougo/ddc.vim'
Plug 'Shougo/ddc-ui-native'
Plug 'Shougo/ddc-around'
Plug 'Shougo/ddc-source-rg'
Plug 'LumaKernel/ddc-source-file'
Plug 'matsui54/ddc-ultisnips'
Plug 'matsui54/ddc-buffer'
Plug 'Shougo/ddc-matcher_head'
Plug 'Shougo/ddc-sorter_rank'
Plug 'Shougo/ddc-nvim-lsp'
Plug 'vim-denops/denops.vim'
Plug 'tani/ddc-fuzzy'
Plug 'w0rp/ale'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-dispatch'
Plug 'farmergreg/vim-lastplace'
Plug 'airblade/vim-gitgutter'
Plug 'yggdroot/indentline'
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
Plug 'xolox/vim-colorscheme-switcher'
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
Plug 'puremourning/vimspector'
" Plug 'tmux-plugins/vim-tmux-focus-events'
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
Plug 'nelstrom/vim-textobj-rubyblock'
" Plug 'kchmck/vim-coffee-script'
" Plug 'slim-template/vim-slim'
" Plug 'tpope/vim-rake'
Plug 'jgdavey/vim-blockle'
Plug 'thoughtbot/vim-rspec'
Plug 'ecomba/vim-ruby-refactoring'

" Rust
Plug 'rust-lang/rust.vim'

" coffee
" Plug 'lukaszkorecki/coffeetags'

" LSP
Plug 'neovim/nvim-lspconfig'

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
set colorcolumn=90

" Disable hiding quotes in json files
autocmd Filetype json let g:indentLine_enabled = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" colorschemes
" colorscheme iceberg
" colorscheme nord
" colorscheme gruvbox
" colorscheme archery
" colorscheme onedark
" colorscheme dracula
" colorscheme molokai

" colorscheme monokai
" colorscheme sublimemonokai

" colorscheme monokai-bold
" colorscheme monokai_pro
" colorscheme Tomorrow-Night-Eighties

colorscheme solarized8_high

 " colorscheme solarized8
 " colorscheme solarized
 " colorscheme github
 " colorscheme medic_chalk
 " colorscheme OceanicNext
 " colorscheme sorcerer

 " LIGHT THEME
 set background=light
 let g:airline_theme='solarized'
 highlight ALEWarning ctermbg=lightgray guibg=lightgray
 highlight ALEError ctermbg=lightgray guibg=lightgray

" DARK THEME
" set background=dark
" let g:airline_theme='base16_monokai'
" let g:airline_theme='base16_nord'
" let g:airline_theme='solarized_flood'"

" highlight ALEWarning ctermbg=gray guibg=darkslategray
" highlight ALEError ctermbg=gray guibg=darkslategray
" hi EasyMotionTarget guibg=none guifg=#ff2400
" hi EasyMotionShade guibg=none guifg=none
" hi EasyMotionTarget2First guibg=none guifg=#ff2400
" hi EasyMotionTarget2Second guibg=none guifg=#ff2400"

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

" netrw
let g:netrw_fastbrowse = 0
let g:netrw_liststyle = 3

" slime settings
let g:slime_target = 'tmux'

" test runner settings
let test#strategy = 'tslime'
let test#elixir#runner = 'exunit'
" let test#ruby#rspec#executable = 'bundle exec spring rspec'
" let test#ruby#rspec#executable = 'bundle exec rspec'
" let test#ruby#rspec#executable = 'spring rspec'
let test#ruby#rspec#executable = 'rspec'
" let test#ruby#rspec#executable = 'docker compose run gizmo rspec'

augroup elixir
  nnoremap <leader>r :! elixir %<cr>
  autocmd FileType elixir nnoremap <c-]> :ALEGoToDefinition<cr>
augroup END<Paste>

" ALE settings
let g:ale_linters = {}
let g:ale_linters.elixir = ['elixir-ls']
let g:ale_linters.ruby = ['standardrb', 'rubocop']
let g:ale_linters.rust = ['analyzer']

let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fixers.elixir = ['mix_format']
let g:ale_fixers.ruby = ['standardrb', 'rubocop']
let g:ale_fixers.rust = ['rustfmt']
"let g:ale_elixir_elixir_ls_release = '/home/hzyy/Projects/elixir_projects/elixir-ls/rel'
"let g:ale_elixir_elixir_ls_release = '/Users/aleh.shapo/Projects/elixir-cw/elixir-ls/rel'

let g:ale_sign_error = '✘'
highlight ALEErrorSign ctermfg=red guifg=red
let g:ale_sign_warning = '⚠'
highlight ALEWarningSign ctermfg=blue guifg=blue

let g:ale_sign_column_always = 0
let g:ale_lint_on_text_changed = 0
let g:ale_lint_delay = 300
let g:ale_set_highlights = 0
let g:ale_lint_on_save = 0
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 0

" let g:ale_sign_column_always = 1
" let g:ale_lint_on_text_changed = 1
" let g:ale_lint_delay = 300
" let g:ale_set_highlights = 1
" let g:ale_lint_on_save = 1
" let g:ale_lint_on_enter = 1
" let g:ale_fix_on_save = 0

" close fzf finder via <esc>
autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>

" search highlighting
set nohlsearch

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

  " deoplete tab-complete
  " inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

  call ddc#custom#patch_global('ui', 'native')
  " file lsp
  call ddc#custom#patch_global('sources', ['around', 'buffer', 'rg', 'file', 'nvim-lsp', 'ultisnips'])

  " Use matcher_head and sorter_rank.
  call ddc#custom#patch_global('sourceOptions', {
      \ '_': {
      \   'matchers': ['matcher_head'],
      \   'sorters': ['sorter_rank']},
      \ })

  " Change source options
  call ddc#custom#patch_global('sourceOptions', {
        \ 'around': {'mark': 'A'},
        \ 'buffer': {'mark': 'B'},
        \ 'file': {'mark': 'F', 'isVolatile': v:true, 'forceCompletionPattern': '\S/\S*'},
        \ 'ultisnips': {'mark': 'US'},
        \ 'rg': {'mark': 'rg', 'minAutoCompleteLength': 4},
        \ 'nvim-lsp': {'mark': 'lsp', 'forceCompletionPattern': '\.\w*|:\w*|->\w*'},
        \ })
  call ddc#custom#patch_global('sourceParams', {
        \ 'around': {'maxSize': 10},
        \ 'ultisnips': {'maxSize': 10},
        \ 'rg': {'maxSize': 10},
        \ 'nvim-lsp': {'maxSize': 10},
        \ 'buffer': {
        \   'maxSize': 10,
        \   'requireSameFiletype': v:false,
        \   'limitBytes': 5000000,
        \   'fromAltBuf': v:true,
        \   'forceCollect': v:true,
        \ },
        \ })

  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

  " <S-TAB>: completion back.
  inoremap <expr><S-TAB> pumvisible() ? '<C-p>' : '<C-h>'

  " Use ddc.
  call ddc#enable()

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

  " for wsl only
	let g:clipboard = {
	\   'name': 'win32yank-wsl',
	\   'copy': {
	\      '+': 'clip.exe',
	\      '*': 'clip.exe',
	\    },
	\   'paste': {
	\      '+': 'powershell.exe Get-Clipboard',
	\      '*': 'powershell.exe Get-Clipboard',
	\   },
	\   'cache_enabled': 0,
	\ }

  noremap <Up> <Nop>
  noremap <Down> <Nop>
  noremap <Left> <Nop>
  noremap <Right> <Nop>

 " Custom functions
 " function! DockerComposeTransform(cmd) abort
   " call system("pwd | grep 'freddy'")
   " if match(a:cmd, 'freddy') == -1 && v:shell_error == 0
     " return substitute(a:cmd, 'bundle exec', 'docker compose exec freddy', '')
   " else
     " return a:cmd
   " endif
 " endfunction

" let g:test#custom_transformations = {'docker_compose': function('DockerComposeTransform')}
" let g:test#transformation = 'docker_compose'

"LSP Settings

lua << EOF

-- resolve host of 'solar' docker container to ip address
local handle = io.popen("getent hosts solar | awk '{ print $1 }'")
local solagraph_container_ip = handle:read("*all"):sub(1, -2)
handle:close()

local config = {
  name = 'solargraph',
  cmd = vim.lsp.rpc.connect(solagraph_container_ip, 7658),
  --cmd = { 'solargraph', 'stdio' },
  --cmd = vim.lsp.rpc.connect('0.0.0.0', 7658),
  root_dir = vim.fs.dirname(vim.fs.find({'Gemfile', '.git'}, { upward = true })[1])
}

--vim.lsp.start(config)

 vim.api.nvim_create_autocmd('FileType', {
   pattern = 'ruby',
   callback = function()
     vim.lsp.start(config)
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

EOF
