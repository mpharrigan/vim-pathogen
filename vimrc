"Load plugins with pathogen
execute pathogen#infect()

set foldmethod=indent
set foldlevel=99

"Move around buffers
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"Escape with j's
inoremap jj <Esc>

"Syntax highlighting
syntax on
filetype on
filetype plugin indent on

"Tabs
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"Add line at 80 characters
if exists('+colorcolumn')
    set colorcolumn=80
endif

"Set some filetypes
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.bash_aliases call SetFileTypeSH("bash")

"Natural linebreak, natural movement with split lines
set wrap lbr
vmap <silent> k gk
vmap <silent> j gj
nmap <silent> k gk
nmap <silent> j gj
imap <silent> <Up> <C-o>gk
imap <silent> <Down> <C-o>gj
