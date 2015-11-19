" Enable indent
filetype indent plugin on
" size of a hard tabstop
set tabstop=2
" size of an "indent"
set shiftwidth=2
" a combination of spaces and tabs are used to simulate tab stops at a
" width other than the (hard)tabstop
set softtabstop=2
" Expand TABs to spaces
set expandtab
" Remove trailing spaces
autocmd BufWritePre * :%s/\s\+$//e
" Paste mode
set pastetoggle=<F2>
" Store lots of :cmdline history
set history=1000
" Disable auto indenting with <F4>
:nnoremap <F4> :setl noai nocin nosi inde=<CR>
" Search - ignore case
set ignorecase
" Search - Find the next match as we type the search
set incsearch
" Search - Highlight searches by default
set hlsearch
" save swp files in /tmp
set directory=/tmp
" Save backup~ files in /tmp
set backupdir=/tmp
" map tabnew
imap <C-t> <Esc>:tabnew<CR>
nmap <C-t> :tabnew<CR>
map <C-Left> <Esc>:tabprev<CR>
map <C-Right> <Esc>:tabnext<CR>
" map tabclose
imap <C-q> <Esc>:tabclose<CR>
nmap <C-q> :tabclose<CR>
" copy to end of line using Y
nmap Y y$
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! %!sudo tee > /dev/null %
" Cut
"vmap <C-x> "+c
" Copy
"vmap <C-c> "+yi
" Paste
"imap <C-v> <ESC>"+pa
"vmap <C-v> c<ESC>"+p
" Use the mouse to navigate and resize panes
set ttyfast
set ttymouse=xterm2
" set mouse=i
" tells Vim to word wrap visually
set wrap
" Always display the status line at the bottom of the vim window (column,
" filename, etc.)
set ruler
" Turn on line numbers. This one is pretty obvious.
set number
" This will get rid of antiquaited backwards-compatability settings and make
" vim a bit more usable.
set nocompatible
" Move in another window
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
" Resizing windows
nnoremap <S-up> <C-W>+
nnoremap <S-down> <C-W>-
nnoremap <S-left> <C-W><
nnoremap <S-right> <C-W>>
" Vim will use the clipboard register '*' for all yank, delete, change. E.g.
" select with the mouse and the press `p` to paste.
set clipboard=unnamed
" show vertical line to indicate the 80th column
if exists('+colorcolumn')
  autocmd VimEnter,Colorscheme * :set colorcolumn=80
  autocmd VimEnter,Colorscheme * :highlight ColorColumn ctermbg=White
endif
