require('dap-python').setup(vim.fn.exepath('python'))
require('dapui').setup({
    floating = {
      border = "shadow",
      mappings = {
        close = { "q", "<Esc>" }
      },
    },
    layouts = { {
        elements = {
          {
            id = "breakpoints",
            size = 0.1
          },
          {
              id = "scopes",
              size = 0.4
          },
          {
              id = "watches",
              size = 0.5
          },
        },
        position = "left",
        size = 30
      }, {
        elements = {},
        position = "bottom",
        size = 0
      } },
  })

