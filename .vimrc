call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()

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
set laststatus=2                "Always show status bar
set autoread                    "Reload files changed outside vim
set noswapfile
set clipboard=unnamed           "Use alt to paste in osx
set backspace=indent,eol,start  "Delete w/ insert
set whichwrap+=<,>,[,]          "Move line with arrow left/right
let &titleold=getcwd()          "Reset term title when exit vim
let g:neocomplcache_enable_at_startup = 1 "Enable autocomplete
set wildmenu                    "Autocomplete filenames
set wildmode=longest,list       "Sort longest filename

" display indentation guides
set list listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×

" 80 chars limit
highlight OverLength ctermbg=darkred ctermfg=white guibg=darkred
match OverLength /\%81v.\+/
set colorcolumn=80

" Syntastic
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

syntax on
autocmd BufNewFile,BufRead *.json set ft=javascript

let &t_Co=256
color badwolf

filetype on
filetype plugin on

vmap <Tab> >gv
vmap <S-Tab> <gv
" Keep selection after indent
vnoremap < <gv
vnoremap > >gv

nnoremap <silent> <C-MouseDown> <C-W>-
nnoremap <silent> <C-MouseUp> <C-W>+i
