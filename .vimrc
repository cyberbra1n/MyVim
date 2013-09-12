set nocompatible

" Pathogen
call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles() 

"set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
set statusline=%t[%{&ff}]%h%m%r%y%=[%l]/%L\ %P
filetype plugin indent on
 
" Nerdtree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0
 

set background=dark
colorscheme desert
set nu

" map buffer change
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
nmap <silent> <F1> :NERDTreeToggle <CR>

" 4 space ident
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
