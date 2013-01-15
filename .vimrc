call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set encoding=utf-8
set number                      "Line number
set visualbell                  "No sound
set title                       "Change term title
set autoindent 
set expandtab                   "Convert tab -> spaces
set tabstop=2
set background=dark
set mouse=a                     "Enable mouse
set nocursorcolumn
set statusline=%<%w%f\ %=%y[%{&ff}][%6c][%{printf('%'.strlen(line('$')).'s',line('.'))}/%L][%3p%%]%{'['.(&readonly?'RO':'\ \ ').']'}%{'['.(&modified?'+':'-').']'}
set autoread                    "Reload files changed outside vim
set noswapfile
set clipboard=unnamed           "Use alt to paste in osx
set backspace=indent,eol,start  "Delete w/ insert
set whichwrap+=<,>,[,]			"Move line with arrow left/right
let &titleold=getcwd()			"Reset term title when exit vim

" display indentation guides
set list listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×

syntax on

"let &t_Co=256
"let g:solarized_termcolors=256
"let g:solarized_underline=0
"let g:solarized_visibility="low"
color codeschool

nnoremap <silent> <C-MouseDown> <C-W>-
nnoremap <silent> <C-MouseUp> <C-W>+i

autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
