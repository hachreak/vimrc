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
