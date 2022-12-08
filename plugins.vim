set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'morhetz/gruvbox' " Gruvbox theme
Plugin 'tpope/vim-sensible' " Sensible defaults
Plugin 'junegunn/fzf' " Fuzzy finder
Plugin 'scrooloose/nerdtree' " File explorer (toggle with CTRL+N)
Plugin 'bling/vim-airline' " Status line at bottom, tabs at top
Plugin 'tpope/vim-fugitive' " Git integration
Plugin 'airblade/vim-gitgutter' " Display git diff in gutter
"Plugin 'mhinz/vim-startify' " Vim start screen (look into https://github.com/glepnir/dashboard-nvim)
Plugin 'voldikss/vim-floaterm' " Create a floating terminal by pressing F12

"Plugin 'ncm2/ncm2' " Autocomplete
"Plugin 'roxma/vim-hug-neovim-rpc' " Vim 8 compatibility for ncm2
"Plugin 'roxma/nvim-yarp' " Required by ncm2
"Plugin 'phpactor/phpactor' " PHP autocomplete plugin
"Plugin 'phpactor/ncm2-phpactor' " Makes phpactor work with ncm2

"Look into nvim-miniyank

call vundle#end() 
