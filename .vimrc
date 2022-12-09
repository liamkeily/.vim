" Plugins
call plug#begin()

Plug 'morhetz/gruvbox' " Gruvbox theme
Plug 'tpope/vim-sensible' " Sensible defaults
Plug 'junegunn/fzf' " Fuzzy finder
Plug 'scrooloose/nerdtree' " File explorer (toggle with CTRL+N)
Plug 'bling/vim-airline' " Status line at bottom, tabs at top
Plug 'tpope/vim-fugitive' " Git integration
Plug 'airblade/vim-gitgutter' " Display git diff in gutter
Plug 'voldikss/vim-floaterm' " Create a floating terminal by pressing F12
Plug 'zivyangll/git-blame.vim' " Git blame in status bar
Plug 'tommcdo/vim-lion' " For aligning =
Plug 'tpope/vim-commentary' " For commenting out code
Plug 'bogado/file-line' " File:line support

if has('nvim')
    Plug 'mhinz/vim-startify' " Vim start screen (look into https://github.com/glepnir/dashboard-nvim)
    Plug 'ncm2/ncm2' " Autocomplete
    Plug 'roxma/nvim-yarp' " Required by ncm2
    Plug 'phpactor/phpactor' " PHP autocomplete plugin
    Plug 'phpactor/ncm2-phpactor' " Makes phpactor work with ncm2
    Plug 'bfredl/nvim-miniyank'
    Plug 'nvim-telescope/telescope.nvim'
endif

call plug#end() 

" Theme
syntax enable
autocmd vimenter * ++nested colorscheme gruvbox

" Basic
set nocompatible 
set encoding=utf-8
syntax on
filetype plugin indent on
set mouse=a

" Unsaved changes
set confirm

" Leader Key
let mapleader = ","

" Line Numbers
set relativenumber 
set number   

" Indentation
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent

" Keep lines around current position
:set scrolloff=8

" XTerm Title
set title

" Dont ask to save changes when opening a new buffer
set hidden

" Search ignores case by default
set ignorecase
set smartcase

" Prevent annoying beeping
set visualbell

" Nerd Tree
let NERDTreeQuitOnOpen=1

" Ctrl bindings
nnoremap <silent> <expr> <C-n> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"
nnoremap <C-p> :FZF<CR>
nmap <C-l> :bnext<CR>
nmap <C-h> :bprevious<CR>
nmap <C-k> :bd<CR>


" Buffer tabs at the top
let g:airline#extensions#tabline#enabled = 1

" Write as root Trick
cmap w!! w !sudo tee %

" Mappings
nnoremap <Leader>b :<C-u>call gitblame#echo()<CR>

" Float term
noremap  <leader>t  :FloatermToggle<CR>i
noremap! <leader>t  <Esc>:FloatermToggle<CR>i
tnoremap <leader>t  <C-\><C-n>:FloatermToggle<CR>

" Dont put swap files in project dir
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
