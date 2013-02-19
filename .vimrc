call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()

set encoding=utf-8
set number                      "Line number
set visualbell                  "No sound
set title                       "Change term title
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
set wildmenu                    "Autocomplete filenames
set wildmode=longest,list       "Sort longest filename

" Tabs
set autoindent
set expandtab                   "Convert tab -> spacei
set tabstop=4                   "A tab = 4 spaces (most used in py/php...)
set shiftwidth=4
set softtabstop=4
set copyindent
set smarttab

" display indentation guides
" set list listchars=tab:\❘\,trail:·,extends:»,precedes:«,nbsp:×
" set lcs=tab:\|\,trail:-,extends:»,precedes:«,nbsp:×
" set lcs=tab:\|\ ,trail:-,precedes:<,extends:>

" 80 chars limit
highlight OverLength ctermbg=darkred ctermfg=white guibg=darkred
match OverLength /\%81v.\+/
set colorcolumn=80

" Syntastic
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

" Neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_max_list = 10

syntax on
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.vue.php set ft=html

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
