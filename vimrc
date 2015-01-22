set nocompatible


" PATHOGEN LOAD
" -----------------------------------------------------------------------------------
call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles() 
" -----------------------------------------------------------------------------------



" STATUS LINE FORMAT
" -----------------------------------------------------------------------------------
"set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
set statusline=%t[%{&ff}]%h%m%r%y%=[%l]/%L\ %P
filetype plugin indent on
" -----------------------------------------------------------------------------------



" NERDTREE
" -----------------------------------------------------------------------------------
"autocmd VimEnter * NERDTree "uncomment to enable NERDTree autostart
nmap <silent> <F1> :NERDTreeToggle<CR>
autocmd VimEnter * wincmd p
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0
" ----------------------------------------------------------------------------------



" THEME SETUP
" ----------------------------------------------------------------------------------
set background=dark
colorscheme desert
set nu
" ----------------------------------------------------------------------------------



" FOLDS SETUP
" ----------------------------------------------------------------------------------
"save folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
" ----------------------------------------------------------------------------------



" EXECUTE SCRIPT SETUP
" ----------------------------------------------------------------------------------
"if python file map F2 and F3
autocmd BufNewFile,BufRead *.py map <f2> :w\|!python %<cr>
autocmd BufNewFile,BufRead *.py map <f3> :w\|!python3 %<cr>
autocmd BufNewFile,BufRead *.php map <f2> :w\|!/usr/bin/php5 -l %<cr>
" ----------------------------------------------------------------------------------



" SHORTCUTS
" ----------------------------------------------------------------------------------
" map change tab keys: (instead of C-w)
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>



" IDENT SETTINGS
" ----------------------------------------------------------------------------------
" 4 space ident
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
" ----------------------------------------------------------------------------------



" FOLDING SETTINGS
" ----------------------------------------------------------------------------------
"set foldtext=v:folddashes.substitute('/\\*\\\|\\*/\\\|{{{\\d\\=','','g')
"shows only text of line (not number of lines in fold)
set foldtext=v:folddashes.substitute(getline(v:foldstart),'/\\*\\\|\\*/\\\|{{{\\d\\=','','g')
" ----------------------------------------------------------------------------------


" DISABLE AUTO COMMENT
" ----------------------------------------------------------------------------------
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" ----------------------------------------------------------------------------------

" SETUP DEFAULT THEME
colorscheme desert

" HIHGLIGHT INC SEARCH (*,# keys)
set hlsearch
