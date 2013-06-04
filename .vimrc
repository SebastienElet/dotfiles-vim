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
" Status line
set statusline=[%n]\ %<         "Buffer Number
set statusline+=%<%w%f\ %=%y[%{&ff}] "FileName
set statusline+=[%6c]           "Filetype
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

" 80 chars limit
if exists("&colorcolumn")
  set colorcolumn=80
endif

" Syntastic
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

" display indentation guides
set lcs=tab:\|\ ,trail:-,precedes:<,extends:>

" Indent line
let g:indentLine_minimumIndentLevel = 0
let g:indentLine_char = '¦'
let g:indentLine_color_term = 239

" Neocomplcache
let g:neocomplcache_enable_at_startup = 0
let g:neocomplcache_max_list = 10

syntax on

autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.vue.php set ft=html

" Php-cs-fixer
let g:php_cs_fixer_path = "/usr/local/bin/php-cs-fixer"
let g:php_cs_fixer_level = "all"
let g:php_cs_fixer_config = "default"
nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

autocmd BufWritePre *.php %s/\s\+$//ge
autocmd BufWritePre *.php %s/if ( /if (/ge
autocmd BufWritePre *.php %s/if(/if (/ge
autocmd BufWritePre *.php %s/foreach(/foreach (/ge
" %s/\s*,\s*/, /g

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
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap n nzz
nnoremap N Nzz

hi StatusLine ctermbg=234 ctermfg=39
