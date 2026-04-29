return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
  },
  "junegunn/vim-easy-align",
  "scrooloose/nerdcommenter",
  "tpope/vim-surround",
  "tpope/vim-repeat",
  "tpope/vim-endwise",
  "tpope/vim-unimpaired",
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },
  "terryma/vim-expand-region",
  "tmhedberg/matchit",
  "easymotion/vim-easymotion",
  "andrewradev/splitjoin.vim",
  "michaeljsmith/vim-indent-object",
  "jeetsukumaran/vim-indentwise",
  "wellle/targets.vim",
  { "mg979/vim-visual-multi", branch = 'master' },
  "kshenoy/vim-signature",
  "farmergreg/vim-lastplace",
  "rbgrouleff/bclose.vim",
  "plasticboy/vim-markdown",
  "aserebryakov/vim-todo-lists",
  "danilamihailov/beacon.nvim",
  "airblade/vim-rooter",
  "ludovicchabant/vim-gutentags",
  "xolox/vim-misc",
  "jremmen/vim-ripgrep",
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }
}
