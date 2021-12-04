vim.g.completeopt="menu,menuone,noselect,noinsert"

local cmp = require 'cmp'

cmp.setup {

	snippet = {
		expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
	end
	},

	mapping = {
		['<Tab>'] = function(fallback)
		  if cmp.visible() then
			cmp.select_next_item()
		  else
			fallback()
		  end
		end,

		['<S-Tab>'] = function(fallback)
		  if cmp.visible() then
			cmp.select_prev_item()
		  else
			fallback()
		  end
		end,

		['<C-e>'] = cmp.mapping.close(),
		['<C-Space>'] = cmp.mapping.complete(),
		['<CR>'] = cmp.mapping.confirm {
		  behavior = cmp.ConfirmBehavior.Replace,
		  select = true,
		},
		['<C-d>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),

	  },

	  sources = {
		{ name = 'nvim_lsp' },
		{ name = 'buffer' },
		{ name = 'path' },
		{ name = 'vsnip' },

	  },

	}

	require('nvim-autopairs').setup{}
	local cmp_autopairs = require('nvim-autopairs.completion.cmp')
	cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))

