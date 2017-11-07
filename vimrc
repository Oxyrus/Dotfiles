set nocompatible
syntax on
set nowrap
set encoding=utf8
set ffs=unix,dos,mac
set guifont=Hack\ Regular:h18

" VUNDLE STUFF
" Disable file type for Vundle
filetype off " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Utilities
Plugin 'scrooloose/nerdtree' " file tree
Plugin 'majutsushi/tagbar' " browse tags of current file
Plugin 'ervandew/supertab' " autocomplete with <TAB>
Plugin 'BufOnly.vim' " Delete all buffers but the current one
Plugin 'wesQ3/vim-windowswap' " Vim window movement
Plugin 'godlygeek/tabular' " align text using regex
Plugin 'benmills/vimux' " Vim + Tmux
Plugin 'jeetsukumaran/vim-buffergator' " Movement between buffers
Plugin 'Shougo/neocomplete.vim' " Autocompletion

" Generic programming support
Plugin 'jiangmiao/auto-pairs' " Close brackets, parenthesis and what not
Plugin 'maksimr/vim-jsbeautify' " Format the code using the .editorconfig
Plugin 'vim-syntastic/syntastic' " Syntax checking

" Markdown and writing
Plugin 'plasticboy/vim-markdown'

" Git
Plugin 'tpope/vim-fugitive'

Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on
" END OF VUNDLE STUFF

colorscheme gruvbox

" Neocomplete settings
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1 " Enable neocomplete at startup
let g:neocomplete#enable_smart_case = 1

" Settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let mapleader = " "
map <leader>s :source ~/.vimrc<CR>

set number
set relativenumber
set ruler

set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent
set autoindent
set showmatch " shows matching parenthesis

set laststatus=2

let g:elite_mode = 1

set cursorline

" remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Highlight words on search
set hlsearch

set incsearch

" when a new file is created it's not indexed
" use SPC r to re index
noremap <leader>r :CommandTFlush<CR>

let NERDTreeShowHidden = 1
nmap <leader>n :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeMapActivateNode = '<L>'
let NERDTreeIgnore = ['\.DS_STORE', '\~$', '\.swp']

" close vim if only nerdtree is opened
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" better movement between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
