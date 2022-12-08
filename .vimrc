" Theme
syntax enable
colorscheme meta5 
set background=dark

" Plugins
so ~/.vim/plugins.vim

" Basic
set nocompatible 
set encoding=utf-8
syntax on
filetype plugin indent on

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

" Keep 5 lines around current position
:set scrolloff=5

" XTerm Title
set title

" Nerd Tree (Toggle with CTRL+N)
nnoremap <C-n> :NERDTreeToggle .<CR>

" CtrlP
"let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\v[\/](storage|node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" Dont ask to save changes when opening a new buffer
set hidden

" Search ignores case by default
set ignorecase
set smartcase

" Prevent annoying beeping
set visualbell

" Automatically indent
set autoindent

" Enable Mouse
set mouse=a

" Buffer management using CTRL + H, L, K
nmap <C-l> :bnext<CR>
nmap <C-h> :bprevious<CR>
nmap <C-k> :bd<CR>

" Buffer tabs at the top
let g:airline#extensions#tabline#enabled = 1

" Write as root Trick
cmap w!! w !sudo tee %

nnoremap <leader>b :buffers<cr>
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>h :split<cr>

" Dont put swap files in project dir
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

