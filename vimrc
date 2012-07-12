set nocompatible

set encoding=utf-8

" window stuff
set number
syntax on
set ruler
set laststatus=2
set foldcolumn=1

" change color of status line based on mode
" from: http://vim.wikia.com/wiki/Change_statusline_color_to_show_insert_or_normal_mode
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=darkgreen
  elseif a:mode == 'r'
    hi statusline guibg=darkred
  else
    hi statusline guibg=orangered
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=darkslategray

" default the statusline to green when entering Vim
hi statusline guibg=darkslategray

" search stuff
" set hls " highlight search
set incsearch
set ignorecase smartcase

" insertion stuff
filetype plugin indent on
set autoindent smartindent
"set shiftwidth=2 softtabstop=2 expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set noexpandtab

" color xoria256
color wombat256mod
" color twilight
" color molokai

" automatically insert closing brace
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Find ctags files from current directory all the way up to the root dir
set tags=./tags;/

autocmd BufNewFile,BufRead *.json set ft=javascript

call pathogen#infect()
