local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    --- Animals
    {
        "giusgad/pets.nvim",
        dependencies = { "MunifTanjim/nui.nvim", "giusgad/hologram.nvim" },
    },


    -- LSP Zero
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },

    -- Auto completion
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },

    -- Snippets
    { 'L3MON4D3/LuaSnip' },

    -- Lualine
    'nvim-lualine/lualine.nvim',

    -- AI
    'github/copilot.vim',

    -- Telescope
    'nvim-treesitter/nvim-treesitter',
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },


    -- Tools
    'mbbill/undotree',

    -- Git
    'tpope/vim-fugitive',

    --- Rust
    'simrat39/rust-tools.nvim',
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',

    -- Color
    { "folke/tokyonight.nvim", lazy = false, priority = 0, opts = {} },
}

local opts = {
    autoformat = true,
}

require("lazy").setup(plugins, opts)
