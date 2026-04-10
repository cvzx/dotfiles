return {
  "nvim-neotest/nvim-nio",
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "mrcjkb/rustaceanvim",
    },
    config = function()
      require('neotest').setup {
        adapters = {
          require('rustaceanvim.neotest')
        },
      }
    end,
  },
}
