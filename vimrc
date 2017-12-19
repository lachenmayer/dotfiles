set nocompatible
set encoding=utf-8

"syntax highlighting
syntax on

" window stuff
set number
set ruler
set laststatus=2
set foldcolumn=1
set scrolloff=3

" search stuff
"set hls " highlight search
set incsearch
set ignorecase smartcase

" insertion stuff
set autoindent
set shiftwidth=2 tabstop=2 softtabstop=2
set expandtab

" visualize tabs/trailing spaces
set list
set listchars=tab:»_,trail:·

" better braces
"inoremap {<CR>  {<CR>}<Esc>O

" always move up/down by one screen line even if the line is wrapped
nnoremap j gj
nnoremap k gk

" find ctags files from current directory all the way up to the root dir
set tags=./tags;/

autocmd BufNewFile,BufRead *.json set ft=javascript

