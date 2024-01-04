local ensure_packer = function()
    local fn = vim.fn
    local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'KabbAmine/yowish.vim'

    use 'NLKNguyen/papercolor-theme'

    use 'nyngwang/nvimgelion'


    use "lunarvim/templeos.nvim"

    use {
        'lervag/vimtex',
        opt = true,
        config = function()
            vim.g.vimtex_view_general_viewer = 'okular'
            vim.g.tex_comment_nospell = 1
        end,
        ft = 'tex'
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- git
    use({
        "kdheepak/lazygit.nvim",
        requires = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("telescope").load_extension("lazygit")
        end,
    })

    -- Pairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use("ggandor/leap.nvim")

    -- Keybindings
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
        end
    }

    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-treesitter/nvim-treesitter" }
        }
    }

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
            }
        end
    })

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- file explorer
    use("nvim-tree/nvim-tree.lua")

    -- game of life
    use 'eandrju/cellular-automaton.nvim'

    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

    use("mbbill/undotree")

    use("nvim-treesitter/nvim-treesitter-context");

    use({
        "hrsh7th/nvim-cmp",
        requires = {
            { "kdheepak/cmp-latex-symbols" },
        },
        sources = {
            {
                name = "latex_symbols",
                option = {
                    strategy = 0,
                },
            },
        },
    })


    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use({
        "Pocco81/true-zen.nvim",
    })

    use 'kylechui/nvim-surround'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'jay-babu/mason-nvim-dap.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip',                 version = "2.*" },
            { 'rafamadriz/friendly-snippets' },
            { 'honza/vim-snippets' },
        }
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end)
