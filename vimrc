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
nmap <silent> <F1> :NERDTreeTabsToggle<CR>
nmap <silent> <F2> :tabprevious<CR>
nmap <silent> <F3> :tabnext<CR>
let g:airline#extensions#tabline#fnamemod = ':t'

autocmd VimEnter * wincmd p
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=1
" ----------------------------------------------------------------------------------

" TAGLIST
" -----------------------------------------------------------------------------------
let Tlist_WinWidth = 30
nmap <silent> <F4> :TlistToggle<CR>
" -----------------------------------------------------------------------------------



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
"autocmd BufNewFile,BufRead *.py map <f2> :w\|!python %<cr>
"autocmd BufNewFile,BufRead *.py map <f3> :w\|!python3 %<cr>
"autocmd BufNewFile,BufRead *.php map <f2> :w\|!/usr/bin/php5 -l %<cr>
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
" ----------------------------------------------------------------------------------
syntax enable
colorscheme monokai
" ----------------------------------------------------------------------------------


" HIHGLIGHT INC SEARCH (*,# keys)
" ----------------------------------------------------------------------------------
set hlsearch
" ----------------------------------------------------------------------------------

" SHOW BUFFER LIST
" ----------------------------------------------------------------------------------
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"nmap <silent> <F2> :bnext<CR>
"nmap <silent> <F3> :bprevious<CR>

" ----------------------------------------------------------------------------------


" Setting up debuger:
" ----------------------------------------------------------------------------------
let g:vdebug_options = {}
let g:vdebug_options["port"] = 9000
let g:vdebug_options["server"] = '192.168.76.117'
let g:vdebug_options["path_maps"] = { "/var/www-workspace/trunk": "/home/cyberbrain/Workspace/mydev/trunk"}
" ----------------------------------------------------------------------------------

