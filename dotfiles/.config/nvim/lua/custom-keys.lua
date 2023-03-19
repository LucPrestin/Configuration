local map = vim.api.nvim_set_keymap
local dap = require('dap')
local dap_ui = require('dapui')

map('n', 'n', [[:NvimTreeToggle<CR>]], {})

map('n', '<F5>', [[:lua dap.continue()<CR>]], {})
map('n', '<C-b>', [[:lua dap.toggle_breakpoint()<CR>]], {})
map('n', '<F5>', [[:lua dap.continue()<CR>]], {})
map('n', '<C-b>', [[:lua dap.toggle_breakpoint()<CR>]], {})
map('n', '<C-c>', [[:lua dap.set_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR>]], {})
map('n', '<C-l>', [[:lua dap.set_breakpoint(nil, nil, vim.fn.input('Log Point Msg: '))<CR>]], {})
map('n', '<F10>', [[:lua dap.step_over()<CR>]], {})
map('n', '<F11>', [[:lua dap.step_into()<CR>]], {})
map('n', '<F12>', [[:lua dap.step_out()<CR>]], {})
map('n', '<F6>', [[:lua dap.repl.open()<CR>]], {})
map('n', 'dl', [[:lua dap.run_last()<CR>]], {})

map('n', '<C-d>', [[:NvimTreeToggle<CR> :lua dap_up.toggle()<CR>]], {})

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

vim.g.mapleader = ","
