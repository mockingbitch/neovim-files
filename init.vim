source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/keymaps.vim
set number
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent
set list
set listchars=tab:▸\ ,trail:·
set clipboard=unnamedplus
set encoding=UTF-8

colorscheme onedark
"let g:lightline = {
 "   \ 'colorscheme': 'one'
  "  \ }

let g:coc_node_path = '/usr/local/bin/node'

syntax on
filetype plugin on

