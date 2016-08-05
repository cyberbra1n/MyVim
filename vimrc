set nocompatible

" PATHOGEN LOAD
" -----------------------------------------------------------------------------------
call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles() 
" -----------------------------------------------------------------------------------

" THEME SETUP
" ----------------------------------------------------------------------------------
set background=dark
colorscheme solarized
"let g:solarized_termcolors=256
set nu
" ----------------------------------------------------------------------------------

" STATUS LINE FORMAT
" -----------------------------------------------------------------------------------
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
set statusline=[%t%{&ff}]%h%m%r%y%=[%l]/%L\ %P
filetype plugin indent on
" -----------------------------------------------------------------------------------

" SHOW BUFFER LIST - VIM-AIRLINE
" ----------------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
"" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t' 
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme="term"
"" Auto open netrw when pointing dir
autocmd VimEnter * if !argc() | Explore | endif
autocmd VimEnter * if isdirectory(expand('<afile>')) | Explore | endif
" ----------------------------------------------------------------------------------

" NERDTREE LIKE SCRIPT
" -----------------------------------------------------------------------------------
" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec 'wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction

" Hit enter in the file browser to open the selected
" file with :vsplit to the right of the browser.
let g:netrw_browse_split = 4
let g:netrw_altv = 1
" Default to tree mode
let g:netrw_liststyle=3
"" absolute width of netrw window
let g:netrw_winsize = -30
"" change window style
let g:netrw_chgwin=1
"" do not display info on the top of window
let g:netrw_banner = 0
"" sort is affecting only: directories on the top, files below
let g:netrw_sort_sequence = '[\/]$,*'
"" hide .file(s):
let g:netrw_list_hide = '.*\.swp$'
" ----------------------------------------------------------------------------------

" TAGLIST
" -----------------------------------------------------------------------------------
let Tlist_WinWidth = 30
let Tlist_Use_Right_Window   = 1
" -----------------------------------------------------------------------------------

" FOLDS SETUP
" ----------------------------------------------------------------------------------
"save folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
autocmd BufWinEnter * setlocal modifiable
" ----------------------------------------------------------------------------------

" EXECUTE SCRIPT SETUP
" ----------------------------------------------------------------------------------
"if python file map F12
autocmd BufNewFile,BufRead *.py map <F12> :w\|!python %<cr>
" ----------------------------------------------------------------------------------

" SHORTCUTS
" ----------------------------------------------------------------------------------
" map change tab keys: (instead of C-w)
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
map <silent> <F3> :call ToggleVExplorer()<CR>
nmap <silent> <F1> :bprevious!<CR>
nmap <silent> <F2> :bnext!<CR>
nmap <silent> <F4> :TlistToggle<CR>
" visual select search
:vn // y/<C-R>"<CR>
command! -nargs=0 Sw w !sudo tee % > /dev/null

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
"shows only text of line (not number of lines in fold)
set foldtext=v:folddashes.substitute(getline(v:foldstart),'/\\*\\\|\\*/\\\|{{{\\d\\=','','g')
"set foldtext=v:folddashes.substitute('/\\*\\\|\\*/\\\|{{{\\d\\=','','g')
" ----------------------------------------------------------------------------------

" DISABLE AUTO COMMENT
" ----------------------------------------------------------------------------------
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" ----------------------------------------------------------------------------------

" SETUP DEFAULT THEME
" ----------------------------------------------------------------------------------
syntax enable
" ----------------------------------------------------------------------------------

" HIHGLIGHT INC SEARCH (*,# keys)
" ----------------------------------------------------------------------------------
set hlsearch
" ----------------------------------------------------------------------------------
