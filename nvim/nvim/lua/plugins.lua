vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'sainnhe/edge'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'neovim/nvim-lspconfig'
    use 'L3MON4D3/LuaSnip'
    use 'SirVer/ultisnips'
    use 'hrsh7th/nvim-compe'
    use 'tpope/vim-rsi'
    use 'tpope/vim-surround'
    use 'honza/vim-snippets'
    use 'junegunn/vim-easy-align'
    use 'skywind3000/vim-dict'
    use 'voldikss/vim-translator'
    use 'preservim/tagbar'
    use 'preservim/nerdcommenter'
    use 'preservim/nerdtree'
    use 'itchyny/lightline.vim'
end)
