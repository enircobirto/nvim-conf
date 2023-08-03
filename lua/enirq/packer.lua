-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { "catppuccin/nvim", as = "catppuccin" }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {                  -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompaletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' }, -- Required
        }
    }
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function()
            require("nvim-tree").setup {}
        end
    }
    use('nvim-tree/nvim-web-devicons') -- OPTIONAL: for file icons
    use('lewis6991/gitsigns.nvim')    -- OPTIONAL: for git status
    use('romgrk/barbar.nvim')
    use('mhartington/formatter.nvim')
    use('mg979/vim-visual-multi')
    use('folke/which-key.nvim')
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }
    use { 'stevearc/dressing.nvim' }
    use {
        'simrat39/symbols-outline.nvim',
        config = function()
            require('symbols-outline').setup {
                auto_close = true
            }
        end
    }
    -- Lua
    use({
        "gbprod/substitute.nvim",
        config = function()
            require("substitute").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            })
        end
    })
    use('linux-cultist/venv-selector.nvim')
    use {
        'stevearc/oil.nvim',
        config = function() require('oil').setup({default_file_explorer = false}) end
    }
    use('enircobirto/vim-accent-portuguese')
    use('ray-x/starry.nvim')
    use('ThePrimeagen/vim-be-good')
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}
end)
