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
nmap <leader>t :TagbarToggle<CR>

nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprevious!<CR>

"-------
" LaTEx
"-------

let g:tex_flavor = "latex"

"---------------------------
" Tagbar Go and Puppet tags
"---------------------------

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

let g:tagbar_type_puppet = {
  \ 'ctagstype': 'puppet',
  \ 'kinds': [
    \'c:class',
    \'s:site',
    \'n:node',
    \'d:definition',
    \'r:resource',
    \'f:default'
  \]
\}

"---------
" Airline
"---------

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='hybridline'
