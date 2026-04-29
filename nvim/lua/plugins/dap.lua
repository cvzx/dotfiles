return {
  "mfussenegger/nvim-dap",
  "leoluz/nvim-dap-go",
  "suketa/nvim-dap-ruby",
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
      "leoluz/nvim-dap-go",
      "suketa/nvim-dap-ruby",
    },
    config = function()
      local dap, dapui = require('dap'), require('dapui')
      local dapgo = require('dap-go')
      local dapruby = require('dap-ruby')

      -- When you want dap spawn codelldb as a server
      dap.adapters.codelldb = {
        type = "server",
        port = "${port}",
        executable = {
          command = "/usr/bin/codelldb",
          args = { "--port", "${port}" }
        },
      }

      -- When you already have running codelldb server on 13000 port
      -- dap.adapters.codelldb = {
      --   type = "server",
      --   host = "127.0.0.1",
      --   port = 13000,
      -- }

      dap.configurations.rust = {
        {
          name = "Launch epg_pipeline with Defaults",
          type = "codelldb",
          request = "launch",
          program = function()
            local default_path = default_executable
            local input = vim.fn.input('Path to executable: ', default_path, 'file')
            return input ~= '' and input or default_path
          end,
          args = function()
            local input = vim.fn.input('Arguments (space-separated): ')
            if input ~= '' then
              return vim.split(input, ' ')
            else
              return default_args
            end
          end,
          cwd = '${workspaceFolder}',
          sourceLanguages = { "rust" },
          stopOnEntry = false,
          initCommands = { "breakpoint set --name rust_panic" },
          -- - showDisassembly = "never" — don't open the disasm view when sources are unavailable (e.g. inside std).
          -- - expressions = "native" — Watches/REPL expressions are parsed as Rust instead of Python (default is "simple").
          --   Useful when you want to write things like self.field.len() in Watches.
          -- - env = { RUST_LOG = "debug", ... } — environment variables for the debugged process.
          -- - terminal = "integrated" or "console" — where to route the app's stdout/stdin. Servers that read stdin need "integrated".
          -- - runInTerminal = true — same idea, alternative way to do it.
          --
          -- Rust devs also commonly enable a panic breakpoint so the debugger catches panic! automatically. Via initCommands:
          -- initCommands = {
            --   "breakpoint set --name rust_panic",
            -- },

        },
      }

      dapui.setup({
        layouts = {
          {
            elements = { 'scopes' },
            size = 0.5,
            position = 'bottom'
          }
        }
      })

      dapgo.setup()
      dapruby.setup()

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      vim.keymap.set('n', '<F5>', function() dap.continue() end, { noremap=true, silent=true, desc = "Start Debugging with Prompts" })
      vim.keymap.set('n', '<F3>', function() dap.terminate() end)
      vim.keymap.set('n', '<F10>', function() dap.step_over() end)
      vim.keymap.set('n', '<F11>', function() dap.step_into() end)
      vim.keymap.set('n', '<F12>', function() dap.step_out() end)
      vim.keymap.set('n', '<Leader>q', function() dap.toggle_breakpoint() end)
      vim.keymap.set('n', '<Leader>Q', function() dap.set_breakpoint() end)
      vim.keymap.set('n', '<Leader>lp', function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
      vim.keymap.set('n', '<Leader>dr', function() dap.repl.open() end)
      vim.keymap.set('n', '<Leader>dl', function() dap.run_last() end)
      vim.keymap.set('n', '<Leader>w', function() dapui.open() end)
      vim.keymap.set('n', '<Leader>W', function() dapui.close() end)
    end,
  },
}
