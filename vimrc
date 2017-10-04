execute pathogen#infect()

filetype on
filetype plugin on
filetype indent on
syntax on
colorscheme Tomorrow-Night

set encoding=utf8
set ffs=unix,dos,mac
set guifont=Menlo\ Regular:h18
set lines=35 columns=168
set colorcolumn=90
set number

let mapleader=" "
map <leader>s :source ~/.vimrc<CR>

set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" hightlight words on search
set hlsearch

set incsearch

" DISABLED causes weird behaviour when running Vim
" cancel a search with ESC
" nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" re open previous file
nnoremap <Leader><Leader> :e#<CR>

" show matching parenthesis
set showmatch

" ignore files on search using t command
set wildignore+=*.log,*.sql,*.cache

" when a new file is created it's not indexed
" use SPC r to re index
noremap <Leader>r :CommandTFlush<CR>

set laststatus=2

let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeMapActivateNode='<L>'
let NERDTreeIgnore=['\.DS_STORE','\~$','\.swp']
" close vim if only nerdtree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" better movement between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" close all buffers
map <leader>ba :bufdo bd<CR>

map <leader>l :bnext<CR>
map <leader>h :bprevious<CR>

" tab management
map <leader>tn :tabnew<CR>
map <leader>to :tabonly<CR>
map <leader>tc :tabclose<CR>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" toggle between current and previous tab
let g:lasttab=1
nmap <leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()
