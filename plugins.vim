call plug#begin()

Plug 'morhetz/gruvbox' " Gruvbox theme
Plug 'tpope/vim-sensible' " Sensible defaults
Plug 'junegunn/fzf' " Fuzzy finder
Plug 'scrooloose/nerdtree' " File explorer (toggle with CTRL+N)
Plug 'bling/vim-airline' " Status line at bottom, tabs at top
Plug 'tpope/vim-fugitive' " Git integration
Plug 'airblade/vim-gitgutter' " Display git diff in gutter
"Plug 'mhinz/vim-startify' " Vim start screen (look into https://github.com/glepnir/dashboard-nvim)
Plug 'voldikss/vim-floaterm' " Create a floating terminal by pressing F12
Plug 'ludovicchabant/vim-gutentags'

if has('nvim')
    Plug 'ncm2/ncm2' " Autocomplete
    Plug 'roxma/vim-hug-neovim-rpc' " Vim 8 compatibility for ncm2
    Plug 'roxma/nvim-yarp' " Required by ncm2
    Plug 'phpactor/phpactor' " PHP autocomplete plugin
    Plug 'phpactor/ncm2-phpactor' " Makes phpactor work with ncm2
    Plug 'bfredl/nvim-miniyank'
    Plug 'nvim-telescope/telescope.nvim'
endif

call plug#end() 
