local nvim_lsp = require'lspconfig'

--local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

  nvim_lsp.pyright.setup {
    filetypes = {"python"}
  }
