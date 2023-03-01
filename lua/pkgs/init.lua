---- pkgs.init.lua ----
-----------------------


return require'packer'.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'EdenEast/nightfox.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig'
    use 'rmagatti/auto-session'
    use 'rcarriga/nvim-notify'
    use 'RRethy/nvim-align'
    use 'jbyuki/venn.nvim'
    use 'rmagatti/session-lens'

    use { 'ms-jpq/coq_nvim'      , branch='coq'       }
    use { 'ms-jpq/coq.artifacts' , branch='artifacts' }
    use { 'ms-jpq/coq.thirdparty', branch = '3p'      }

    use { 'nvim-telescope/telescope.nvim',
            tag = '0.1.1',
            requires = {{ 'nvim-lua/plenary.nvim' }} }

    use { 'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

    -- use 'hrsh7th/cmp-nvim-lsp'
    -- use 'hrsh7th/cmp-buffer'
    -- use 'hrsh7th/cmp-path'
    -- use 'hrsh7th/cmp-cmdline'
    -- use 'hrsh7th/nvim-cmp'
    -- use 'SirVer/ultisnips'
    -- use 'quangnguyen30192/cmp-nvim-ultisnips'
end)


