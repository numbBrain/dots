vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_refresh_wait = 100
vim.g.nvim_tree_add_trailing = 1
vim.g.nvim_tree_quit_on_open = 1
nvim_tree_quit_on_open = 1

return require('packer').startup(function()

    use 'wbthomason/packer.nvim'

    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',

        config = function() require'nvim-tree'.setup {
            auto_close = true,
            open_on_tab = true,
            open_on_setup = true,
			update_cwd = true

            } end
    }

    use {
        'navarasu/onedark.nvim',
         config = function() require'onedark'.setup {
        }end
    }

    use {
        'nvim-lualine/lualine.nvim',

        config = function() require'lualine'.setup {
            options = {theme = 'onedark'}

        }end
    }

use 'neovim/nvim-lspconfig'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'

use 'hrsh7th/cmp-vsnip'
use 'hrsh7th/vim-vsnip'
use 'windwp/nvim-autopairs'

end)
