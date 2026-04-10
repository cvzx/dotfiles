return {
  { 'embark-theme/vim', lazy = true, name = 'embark' },
  { "nyoom-engineering/oxocarbon.nvim", lazy = true },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require('kanagawa').setup({
        compile = false,
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true},
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false,
        dimInactive = false,
        terminalColors = true,
        colors = {
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors)
          local p = colors.palette
          return {
            ["@lsp.type.interface"] = { fg = p.sakuraPink},
          }
        end,
        theme = "wave",
        background = {
          dark = "wave",
          light = "lotus"
        },
      })
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    config = function()
      require("gruvbox").setup({
        contrast = "hard",
        italic = {
          strings = false,
          comments = true,
          operators = false,
          folds = true,
          emphasis = true,
        },
        bold = true,
        overrides = {
          ["@lsp.type.interface"] = { fg = "#fb4934" },
          ["@keyword"] = { bold = true },
          ["@function"] = { bold = false },
        },
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    config = function()
      require("tokyonight").setup({
        on_highlights = function(hl, c)
          hl["@lsp.type.interface"] = { fg = c.red }
        end,
      })
    end,
  },
  {
    "navarasu/onedark.nvim",
    lazy = true,
    config = function()
      require('onedark').setup {
        style = 'deep',
        code_style = {
          comments = 'italic',
          keywords = 'bold',
          functions = 'none',
          variables = 'none',
        },
        highlights = {
          ["@lsp.type.interface"] = { fg = '$red' },
        },
      }
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    config = function()
      require("catppuccin").setup({
        styles = {
          comments = { "italic" },
          keywords = { "bold" },
          types = { "italic" },
        },
        custom_highlights = function(colors)
          return {
            ["@lsp.type.interface"] = { fg = colors.peach},
            ["@lsp.typemod.method.defaultLibrary"] = { fg = colors.sapphire },
            ["@lsp.typemod.function.defaultLibrary"] = { fg = colors.sapphire },
            ["@lsp.type.namespace"] = { fg = colors.rosewater },
          }
        end,
        integrations = {
          cmp = true,
          beacon = true,
          harpoon = true,
          gitsigns = true,
          nvimtree = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
          lsp_semantic_tokens = true,
        }
      })
    end,
  },
  { "rose-pine/neovim", name = "rose-pine", lazy = true },
  { "EdenEast/nightfox.nvim", lazy = true },
  "rktjmp/lush.nvim",
  "fabius/molokai.nvim",
  "cocopon/iceberg.vim",
  "arcticicestudio/nord-vim",
  "badacadabra/vim-archery",
  "lifepillar/vim-solarized8",
  "cormacrelf/vim-colors-github",
  "altercation/vim-colors-solarized",
  "paramagicdev/vim-medic_chalk",
  "mhartington/oceanic-next",
  "sickill/vim-monokai",
  "mcmartelle/vim-monokai-bold",
  "phanviet/vim-monokai-pro",
  "adlawson/vim-sorcerer",
  "erichdongubler/vim-sublime-monokai",
}
