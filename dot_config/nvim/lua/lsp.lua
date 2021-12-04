local servers = { 'pyright', 'bashls' }
local nvim_lsp = require'lspconfig'
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local on_attach = function(client, bufnr)
	local buf_mapper = function(type, key, value)
		vim.fn.nvim_buf_set_keymap(0,type,key,value,{noremap = true, silent = true});
	end

	map('n','gD','<cmd>lua vim.lsp.buf.declaration()<CR>')
	map('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>')
end

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup{
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

nvim_lsp.pyright.setup{

	filetypes = {"python"}
}

nvim_lsp.bashls.setup{
	filetypes = {"sh"}
}
