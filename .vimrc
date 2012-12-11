call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

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

syntax on

nnoremap <silent> <C-MouseDown> <C-W>-
nnoremap <silent> <C-MouseUp> <C-W>+
