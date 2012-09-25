set nocompatible
set encoding=utf-8

" vundle setup
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" bundles
Bundle 'tpope/vim-fugitive'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'vim-scripts/paredit.vim'
Bundle 'michalbachowski/vim-wombat256mod'
Bundle 'tpope/vim-surround'
Bundle 'ervandew/supertab'
Bundle 'digitaltoad/vim-jade'
Bundle 'kchmck/vim-coffee-script'

" window stuff
set number
syntax on
set ruler
set laststatus=2
set foldcolumn=1
set scrolloff=3

" rainbow parantheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

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
set shiftwidth=2 tabstop=2 softtabstop=2
set expandtab

set list
set listchars=tab:»_,trail:·

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

