return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Ruby
      vim.lsp.config("solargraph", {
        init_options = { formatting = true },
        cmd       = { "solargraph", "stdio" },
        filetypes = { "ruby" },
        flags     = { debounce_text_changes = 150 },
        settings =  {
          solargraph = {
            diagnostics = true
          }
        }
      })
      vim.lsp.enable("solargraph")

      -- Go
      vim.lsp.config("gopls", {
        on_attach = function(client, bufnr)
          vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
        end,
        cmd       = { "gopls" },
        filetypes = { "go", "gomod", "gowork", "gotmpl" },
        settings = {
          gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            staticcheck = true,
            hints = {
              assignVariableTypes = true,
              compositeLiteralFields = true,
              compositeLiteralTypes = true,
              functionTypeParameters = true,
              parameterNames = true,
              rangeVariableTypes = true,
            },
            analyses = {
              unusedparams = true,
            },
          },
        },
        single_file_support = true,
      })
      vim.lsp.enable("gopls")

      -- Go format on save
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*.go",
        callback = function()
          vim.lsp.buf.format({ timeout_ms = 1000 })
        end,
      })
    end,
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^6',
    lazy = false,
    init = function()
      vim.g.rustaceanvim = {
        tools = {},
        server = {
          autostart = true,
          on_attach = function(client, bufnr)
            if client.server_capabilities.inlayHintProvider then
              vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
            end
            if client.supports_method("textDocument/codeLens") then
              vim.lsp.codelens.refresh()
              vim.api.nvim_create_autocmd({ "BufEnter", "InsertLeave", "CursorHold" }, {
                buffer = bufnr,
                callback = function() vim.lsp.codelens.refresh({ bufnr = bufnr }) end,
              })
            end
            vim.keymap.set('n', '<C-W>d', function()
              vim.cmd.RustLsp({'renderDiagnostic', 'current'})
            end, { buffer = bufnr, desc = "Show Rust diagnostic" })
          end,
          settings = {
            ['rust-analyzer'] = {
              diagnostics = {
                experimental = true,
                enable = true,
              },
              inlayHints = {
                enable = true,
              },
              checkOnSave = {
                enable = true,
                command = "clippy",
              },
              procMacro = {
                enable = true,
              },
            },
          },
        },
        dap = {},
      }
    end,
  },
  {
    "mfussenegger/nvim-lint",
    config = function()
      require('lint').linters_by_ft = {
        go = {'staticcheck'},
      }

      vim.api.nvim_create_autocmd("BufWritePost", {
        pattern = "*.go",
        callback = function()
          require('lint').try_lint()
        end,
      })
    end,
  },
}
