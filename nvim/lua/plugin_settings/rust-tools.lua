local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.skip_server_setup({'rust_analyzer'})

lsp.setup()

local rust_tools = require('rust-tools')

rust_tools.setup({
  server = {
    on_attach = function()
      vim.keymap.set('n', '<leader>ca', rust_tools.hover_actions.hover_actions, {buffer = bufnr})
    end
  }
})
