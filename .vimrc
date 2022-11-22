set nocompatible 
set encoding=utf-8

so ~/.vim/plugins.vim

syntax on
filetype plugin indent on

" Leader Key
let mapleader = ","

" Line Numbers
set relativenumber 
set number   

" Keep 5 lines around current position
:set scrolloff=5

" XTerm Title
set title

" jj for esc
"
imap jk <Esc>
nmap <CR> :a<CR><CR>.<CR>

" Ctrl-E for Nerd Tree
"set autochdir
let NERDTreeChDirMode=2
nnoremap <C-n> :NERDTreeToggle .<CR>
nnoremap <C-_> :call NERDComment(0,"toggle")<CR>
vnoremap <C-_> :call NERDComment(0,"toggle")<CR>

let g:NERDTreeDirArrows=0

" Close nerd tree on open
let NERDTreeQuitOnOpen=1

" CtrlP Default Directory
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\v[\/](vendor|storage|node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" This seems to allow multiple buffers at once
set hidden

" Command
set showcmd
set cmdheight=2

" Search ignores case by default
set ignorecase
set smartcase

" Stop that annoying beeping
set visualbell

" Instead of failing command, ask to save
set confirm

" Automatically indent
set autoindent

" Enable Mouse
set mouse=a

" Tab Settings
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" Tabline
let g:airline#extensions#tabline#enabled = 1

" Buffer Switching
nmap <C-l> :bnext<CR>
nmap <C-h> :bprevious<CR>
nmap <C-k> :bd<CR>

" Write as Root Trick
cmap w!! w !sudo tee %

"""" SYNTASTIC 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_checkers=['']

if has('nvim')
    runtime! plugin/python_setup.vim
endif

nnoremap <leader>b :buffers<cr>
nnoremap <leader>t :!phpunit<cr>
nnoremap <leader>m :!mocha<cr>
nnoremap <leader>M :!Make<cr>
nnoremap <leader>g :!gulp<cr>
nnoremap <leader>z :!zsh<cr>
nnoremap <leader>r :redraw!<cr>
nnoremap <leader>R :ChromeReload<cr>
nnoremap <leader>s :source ~/.vimrc<cr>
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>h :split<cr>
" Open Same File Without Git Changes
nnoremap <leader>j :set syntax=js<cr>
nnoremap <leader>p :set syntax=php<cr>

function! GitOpenMasterFile()
    let oldsyntax=&syntax
    vnew 
    read ! git show master:#
    let &syntax=oldsyntax
    call feedkeys("gg")
endfunction

nnoremap <leader>o :call GitOpenMasterFile()<cr>

nnoremap vrc :e ~/.vimrc<cr>

" Disabled this as i think it caused the prob where syntax is unhighted if you
" go straight to bottom
"syntax sync fromstart

let g:acp_enableAtStartup = 0
"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#enable_smart_case = 1
"let g:neocomplete#sources#syntax#min_keyword_length = 3
"let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
"let g:neocomplete#sources#dictionary#dictionaries = {
""    \ 'default' : '',
""    \ 'vimshell' : $HOME.'/.vimshell_hist',
""    \ 'scheme' : $HOME.'/.gosh_completions'
""        \ }

" Define keyword.
"if !exists('g:neocomplete#keyword_patterns')
""    let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" Hide the top preview box when completing
set completeopt-=preview

" Plugin key-mappings.
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>     <Plug>(neosnippet_expand_target)

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" PHP Completion
autocmd FileType php setlocal omnifunc=phpcomplete

" SuperTab like snippets behavior.
"imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Custom Vim Snippets
"let g:neosnippet#snippets_directory='~/.vim/snippets'

" Dont put swap files in project dir
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" Laravel 5
nmap <leader>lr :e app/Http/routes.php<cr>
nmap <leader>le :e .env<cr>
nmap <leader>la :e app/Console/Kernel.php<cr>

set linespace=3
if has('gui_running')
    set guifont=Inconsolata:h16
endif

" Theme
syntax enable
colorscheme meta5 
"colorscheme solarized
set background=dark


" Projects
"let g:project_use_nerdtree = 1
"set rtp+=~/.vim/bundle/vim-project/
"call project#rc("~/Projects")

"so ~/Projects/projects.vim
