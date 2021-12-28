-- ~/.config/nvim/lua/plugins.lua
return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    -- lspconfig
    use {'neovim/nvim-lspconfig', config = function() require "lsp-config" end}
    use 'williamboman/nvim-lsp-installer'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons' -- optional, for file icon
        },
        config = function() require 'nvim-tree-config' end
    }

    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require('bufferline-config') end
    }

    -- Fuzzy Finder
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        config = function() require "telescope-config" end
    }

    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'folke/tokyonight.nvim'

    use 'simrat39/rust-tools.nvim'

    use {
        'andrejlevkovitch/vim-lua-format',
        config = function()
            vim.api.nvim_command('autocmd BufWrite *.lua call LuaFormat()')
        end
    }

    use {
        'jose-elias-alvarez/nvim-lsp-ts-utils',
        config = function() require('ts-config') end
    }

    use {
        'phaazon/hop.nvim',
        branch = 'v1', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require 'hop-config'
        end
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = function() require 'lualine-config' end
    }
    use {
        'simrat39/symbols-outline.nvim',
        config = function() require 'symbols-outline-config' end
    }
    use "Pocco81/AutoSave.nvim"

    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function() require 'gitsigns-config' end
    }

    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
end)
