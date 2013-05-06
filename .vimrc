call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()

set nocompatible                "Non compatiblity with vi
set encoding=utf-8              "Default encoding
set number                      "Line number
set ttyfast                     "More move while redraw
set visualbell                  "No sound
set title                       "Change term title
set background=dark
set mouse=a                     "Enable mouse
if has('mouse_sgr')
  set ttymouse=sgr
endif
set statusline=%<%w%f\ %=%y[%{&ff}]
set statusline+=[%6c]
set statusline+=[%{printf('%'.strlen(line('$')).'s',line('.'))}/%L]
set statusline+=[%3p%%]
set statusline+=%{'['.(&readonly?'RO':'\ \ ').']'}
set statusline+=%{'['.(&modified?'+':'-').']'}
set laststatus=2                "Always show status bar
set autoread                    "Reload files changed outside vim
set noswapfile
set clipboard=unnamed           "Use alt to paste in osx
set backspace=indent,eol,start  "Delete w/ insert
set whichwrap+=<,>,[,]          "Move line with arrow left/right
let &titleold=getcwd()          "Reset term title when exit vim
set wildmenu                    "Autocomplete filenames
set wildmode=longest,list       "Sort longest filename

" Search
set hlsearch                    "Hihlight matches
set incsearch                   "Incremental searching
set ignorecase                  "Searches are case insisensitive
set smartcase                   " ... unless they contain one capital letter

" Tabs
set autoindent
set expandtab                   "Convert tab -> spacei
set tabstop=2                   "A tab = 2 spaces
set shiftwidth=2
set softtabstop=2
set copyindent
set smarttab

" display indentation guides
" set list listchars=tab:\❘\,trail:·,extends:»,precedes:«,nbsp:×
" set lcs=tab:\|\,trail:-,extends:»,precedes:«,nbsp:×
" set lcs=tab:\|\ ,trail:-,precedes:<,extends:>

" 80 chars limit
if exists("&colorcolumn")
  set colorcolumn=80
endif

" Syntastic
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

" Indent line
let g:indentLine_minimumIndentLevel = 0
let g:indentLine_char = '¦'
let g:indentLine_color_term = 239

" Neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_max_list = 10

syntax on

autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.vue.php set ft=html

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

autocmd BufWritePre *.php %s/\s\+$//ge
autocmd BufWritePre *.php %s/if ( /if (/ge
autocmd BufWritePre *.php %s/if(/if (/ge
autocmd BufWritePre *.php %s/foreach(/foreach (/ge


let &t_Co=256
color badwolf

filetype on
filetype plugin on
runtime macros/matchit.vim      " Enable jump betwen tags

vmap <Tab> >gv
vmap <S-Tab> <gv
" Keep selection after indent
vnoremap < <gv
vnoremap > >gv

nnoremap <silent> <C-MouseDown> <C-W>-
nnoremap <silent> <C-MouseUp> <C-W>+i
" clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<cr>

" Learning remap
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop> 
