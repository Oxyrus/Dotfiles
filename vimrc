execute pathogen#infect()

filetype on
filetype plugin on
syntax on
colorscheme Tomorrow-Night

set guifont=Menlo\ Regular:h18
set lines=35 columns=165
set colorcolumn=90
set number

let mapleader=" "
map <leader>s :source ~/.vimrc<CR>

filetype indent on
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
