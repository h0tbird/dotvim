"-------------------------
" Enable pathogen plugin:
"-------------------------

call pathogen#infect()

"------------------------------
" Enable filetype and plugins:
"------------------------------

filetype on
filetype plugin on
filetype indent on

"---------------------------------------------
" Defaults to '\' but ',' is easier to reach:
"---------------------------------------------

let mapleader = ","

"---------------------
" Hybrid colorscheme:
"---------------------

syntax enable
let g:hybrid_use_Xresources = 1
colorscheme hybrid

"----------------------------
" Converting tabs to spaces:
"----------------------------

set expandtab
set tabstop=4
set shiftwidth=4

"-------------------------------------
" Highlight tabs and trailing spaces:
"-------------------------------------

highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/
match ExtraWhitespace /\t/

"-------------------------------------
" Enable cursorline and cursorcolumn:
"-------------------------------------

set cursorline
set cursorcolumn

"-----------------------------------
" Use the same symbols as TextMate:
"-----------------------------------

set listchars=tab:▸\ ,eol:¬

"--------------------------------
" Press ',d' to toggle NERDTree:
"--------------------------------

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

"---------------
" Puppet files:
"---------------

autocmd FileType puppet set keywordprg=pi
autocmd FileType puppet set shellcmdflag=-ci

"------------------------------------
" Powerline status bar is always on:
"------------------------------------

set laststatus=2
let g:Powerline_symbols = 'fancy'
