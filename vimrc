execute pathogen#infect()

filetype on
syntax on
colorscheme Tomorrow-Night

set guifont=Menlo\ Regular:h18
set lines=35 columns=169
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

" cancel a search with ESC
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" re open previous file
nnoremap <Leader><Leader> :e#<CR>

" show matching parenthesis
set showmatch
