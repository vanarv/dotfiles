" >> load plugins
runtime ./plug.vim
if has("unix")
     let s:uname = system("uname -s")
     " Load Mac specific things
     if s:uname == "Darwin\n"
         runtime ./macos.vim
     endif 
endif

colorscheme palenight

" basic settings
syntax on
set number
set title
set relativenumber
set ignorecase      " ignore case
set smartcase       " but don't ignore it, when search string contains uppercase letters
set nocompatible
set incsearch       " do incremental searching
set visualbell
set expandtab
set tabstop=4
set ruler
set smartindent
set shiftwidth=4
set hlsearch
set virtualedit=all
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent
set mouse=a  " mouse support
set termguicolors
set shell=zsh
set lazyredraw
set smarttab
set background=dark

filetype plugin indent on
filetype plugin on
set path+=**

" Add asterisks when commenting blocks
set formatoptions+=r

" Highlights "{{{
"
set cursorline
" set cursorcolumn

runtime ./maps.vim
runtime ./tree.vim
" runtime ./airline.vim

lua <<EOF
require("lsp")
require("lsp_conf.python-lsp")
require("treesitter")
require("statusbar")
require("completion")
require("git_signs")
require("bufferline_conf")
EOF

autocmd BufWritePost *.go silent execute "!goimports-reviser -local lab.co.clearstreet.io/clearstreet/fleet -file-path <afile>" | edit
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
