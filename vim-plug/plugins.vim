" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    Plug 'https://github.com/itchyny/lightline.vim'

    Plug 'https://github.com/navarasu/onedark.nvim'

    Plug 'voldikss/vim-floaterm'

    Plug 'preservim/nerdcommenter'

    Plug 'ryanoasis/vim-devicons'

 

    "source ~/.config/nvim/plugins/ctrlp.vim
    
    source ~/.config/nvim/plugins/nvim-tree.vim
    source ~/.config/nvim/plugins/bufferline.vim 
    source ~/.config/nvim/plugins/telescope.vim "search files 
    source ~/.config/nvim/plugins/coc.vim
    source ~/.config/nvim/plugins/intel.vim
    source ~/.config/nvim/plugins/themes.vim
    source ~/.config/nvim/plugins/nerdtree.vim
    source ~/.config/nvim/plugins/treesitter.vim
    source ~/.config/nvim/plugins/multiple-cursors.vim
    source ~/.config/nvim/plugins/wordmotion.vim
    source ~/.config/nvim/plugins/prettier.vim
    source ~/.config/nvim/plugins/nerd-commenter.vim
    source ~/.config/nvim/plugins/matchup.vim
    source ~/.config/nvim/plugins/copilot.vim
    source ~/.config/nvim/plugins/sayonara.vim
    source ~/.config/nvim/plugins/scroll.vim "smoothy scroll 
    source ~/.config/nvim/plugins/dashboard.vim
    source ~/.config/nvim/plugins/git.vim "git history (maybe)
    source ~/.config/nvim/plugins/easymotion.vim
    source ~/.config/nvim/plugins/float-terminal.vim "open terminal 
    source ~/.config/nvim/plugins/inden-blankline.vim "indent blankline
    source ~/.config/nvim/plugins/fzf.vim "powerful search engine
    source ~/.config/nvim/plugins/transparent.vim
call plug#end()

source ~/.config/nvim/plugins/init.lua


