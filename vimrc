" Enable pathogen plugin:
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Enable ftplugin and indenting:
filetype plugin indent on
syntax enable

" Solarized colorscheme:
set background=light
colorscheme solarized

" Converting tabs to spaces:
set expandtab
set tabstop=4
set shiftwidth=4

" Use the same symbols as TextMate:
set list
set listchars=tab:▸\ ,eol:¬
