return {
  "GustavEikaas/easy-dotnet.nvim",
  config = function()
    local dotnet = require("easy-dotnet")
    dotnet.setup({
      ---@type TestRunnerOptions
      test_runner = {
        ---@type "split" | "vsplit" | "float" | "buf"
        viewmode = "float",
        ---@type number|nil
        vsplit_width = nil,
        ---@type string|nil "topleft" | "topright"
        vsplit_pos = nil,
        enable_buffer_test_execution = true, --Experimental, run tests directly from buffer
        noBuild = true,
        icons = {
          passed = "",
          skipped = "",
          failed = "",
          success = "",
          reload = "",
          test = "",
          sln = "󰘐",
          project = "󰘐",
          dir = "",
          package = "",
        },
        mappings = {
          run_test_from_buffer = { lhs = "<leader>r", desc = "run test from buffer" },
          debug_test_from_buffer = { lhs = "", desc = "debug test from buffer" },
          filter_failed_tests = { lhs = "<leader>fe", desc = "filter failed tests" },
          debug_test = { lhs = "", desc = "debug test" },
          go_to_file = { lhs = "g", desc = "go to file" },
          run_all = { lhs = "<leader>R", desc = "run all tests" },
          run = { lhs = "<leader>r", desc = "run test" },
          peek_stacktrace = { lhs = "<leader>p", desc = "peek stacktrace of failed test" },
          expand = { lhs = "o", desc = "expand" },
          expand_node = { lhs = "E", desc = "expand node" },
          expand_all = { lhs = "-", desc = "expand all" },
          collapse_all = { lhs = "W", desc = "collapse all" },
          close = { lhs = "q", desc = "close testrunner" },
          refresh_testrunner = { lhs = "<C-r>", desc = "refresh testrunner" },
        },
        --- Optional table of extra args e.g "--blame crash"
        additional_args = {},
      },
      ---@param action "test" | "restore" | "build" | "run"
      terminal = function(path, action, args)
        local commands = {
          run = function()
            return string.format("dotnet run --project %s %s", path, args)
          end,
          test = function()
            return string.format("dotnet test %s %s", path, args)
          end,
          restore = function()
            return string.format("dotnet restore %s %s", path, args)
          end,
          build = function()
            return string.format("dotnet build %s %s", path, args)
          end,
          watch = function()
            return string.format("dotnet watch --project %s %s", path, args)
          end,
        }

        local command = '"' .. commands[action]() .. '"'
        vim.cmd("!tmux new-window -S -c " .. vim.fn.getcwd() .. " -n easydotnet")
        vim.cmd("!tmux send-keys -t easydotnet " .. command .. " C-m")
      end,
      auto_bootstrap_namespace = {
        --block_scoped, file_scoped
        type = "block_scoped",
        enabled = true,
      },
      picker = "snacks",
      background_scanning = true,
      notifications = {
        --Set this to false if you have configured lualine to avoid double logging
        handler = function(start_event)
          local spinner = require("easy-dotnet.ui-modules.spinner").new()
          spinner:start_spinner(start_event.job.name)
          ---@param finished_event JobEvent
          return function(finished_event)
            spinner:stop_spinner(finished_event.result.msg, finished_event.result.level)
          end
        end,
      },
    })
  end,
}
