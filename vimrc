" Enable pathogen plugin:
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Enable filetype and plugins:
filetype on
filetype plugin on
filetype indent on

" Defaults to '\' but ',' is easier to reach:
let mapleader = ","

" Solarized colorscheme:
syntax enable
colorscheme hybrid

" Converting tabs to spaces:
set expandtab
set tabstop=4
set shiftwidth=4

" Enable cursorline and cursorcolumn:
set cursorline
set cursorcolumn

" Use the same symbols as TextMate:
set listchars=tab:▸\ ,eol:¬

" Press ',d' to toggle NERDTree:
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

" Puppet files:
autocmd FileType puppet set keywordprg=pi
autocmd FileType puppet set shellcmdflag=-ci

" Status bar always on:
set laststatus=2
