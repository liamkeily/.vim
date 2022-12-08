" Plugins
so ~/.vim/plugins.vim

" Theme
syntax enable
"colorscheme gruvbox
"set background=dark
autocmd vimenter * ++nested colorscheme gruvbox

" Basic
set nocompatible 
set encoding=utf-8
syntax on
filetype plugin indent on

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

" Automatically indent
set autoindent

" Enable Mouse
set mouse=a

" Ctrl bindings
nnoremap <C-n> :NERDTreeToggle .<CR>
nnoremap <C-p> :FZF<CR>
nmap <C-l> :bnext<CR>
nmap <C-h> :bprevious<CR>
nmap <C-k> :bd<CR>

" Buffer tabs at the top
let g:airline#extensions#tabline#enabled = 1

" Write as root Trick
cmap w!! w !sudo tee %

" Mappings
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>h :split<cr>
nnoremap <Leader>b :<C-u>call gitblame#echo()<CR>

" Float term
noremap  <leader>t  :FloatermToggle<CR>i
noremap! <leader>t  <Esc>:FloatermToggle<CR>i
tnoremap <leader>t  <C-\><C-n>:FloatermToggle<CR>

" Dont put swap files in project dir
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
