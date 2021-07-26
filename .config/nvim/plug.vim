if has("nvim")
    let g:plug_home = stdpath('data') . 'vimplug'
endif

 call plug#begin()
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'mfussenegger/nvim-dap'
    Plug 'mfussenegger/nvim-dap-python'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-dap.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'hrsh7th/nvim-compe'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'

    Plug 'glepnir/galaxyline.nvim', { 'branch': 'main' }
    Plug 'kyazdani42/nvim-web-devicons'  " needed for galaxyline icons
    Plug 'akinsho/nvim-bufferline.lua'
    Plug 'kyazdani42/nvim-tree.lua', { 'branch': 'master' }

    Plug 'NLKNguyen/papercolor-theme'
    Plug 'rafi/awesome-vim-colorschemes'
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'nikvdp/neomux'

    Plug 'tpope/vim-ragtag'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-unimpaired'

    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-fugitive'
    Plug 'lewis6991/gitsigns.nvim'

    Plug 'tomtom/tcomment_vim'

    Plug 'editorconfig/editorconfig-vim'

    Plug 'cappyzawa/starlark.vim'

    Plug 'jiangmiao/auto-pairs'
    Plug 'kristijanhusak/defx-git'
    Plug 'kristijanhusak/defx-icons'
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    Plug 'phaazon/hop.nvim'

call plug#end()
 

