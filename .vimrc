call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

let &t_Co=256
let g:solarized_termcolors=256
let g:solarized_underline=0
let g:solarized_visibility="low"

colorscheme solarized

set encoding=utf-8
set number                      "Line number
set visualbell                  "No sound
set title                       "Change term title
set autoindent 
set expandtab
set tabstop=4
set background=dark
set mouse=a                     "Enable mouse
set autoread                    "Reload files changed outside vim
set noswapfile
set clipboard=unnamed           "Use alt to paste in osx

syntax on

nnoremap <silent> <C-MouseDown> <C-W>-
nnoremap <silent> <C-MouseUp> <C-W>+
