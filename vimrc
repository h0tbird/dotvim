"-------------------------
" Enable pathogen plugin:
"-------------------------

execute pathogen#infect()

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

"------------------------
" Set this and set that:
"------------------------

set expandtab                " Convert tabs to spaces.
set tabstop=2                " How many columns a tab counts for.
set shiftwidth=2             " How many columns text is indented.
set number                   " Show line numbers.
set hlsearch                 " Search highlighting.
set cursorline               " Highlight current line (performance killer).
set cursorcolumn             " Highlight current column (performance killer).
set listchars=tab:▸\ ,eol:¬  " Way whitespace characters are shown
set laststatus=2             " Always show the status line.
set shell=bash               " Force bash shell even if using zsh.
set backspace=2              " Make backspace work like most other apps.

"-------------------------------------
" Highlight tabs and trailing spaces:
"-------------------------------------

highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\t/
match ExtraWhitespace /\s\+$/

"-------------------
" Normal mode maps:
"-------------------

nmap <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
nmap <leader>l :set cursorcolumn! cursorline!<CR>
nmap <leader>n :set number!<CR>
nmap <leader>s :set list!<CR>

"---------------
" Puppet files:
"---------------

autocmd FileType puppet set keywordprg=pi
autocmd FileType puppet set shellcmdflag=-ci

"------------------------------------
" Powerline status bar is always on:
"------------------------------------

let g:Powerline_symbols = 'fancy'

"--------
" LaTEx:
"--------

let g:tex_flavor = "latex"

"----------------
" Tagbar GoTags:
"----------------

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
