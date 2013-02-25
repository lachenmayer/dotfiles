set nocompatible
set encoding=utf-8

" vundle setup
filetype on
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" color scheme
Bundle 'michalbachowski/vim-wombat256mod'
color wombat256mod

" window stuff
set number
syntax on
set ruler
set laststatus=2
set foldcolumn=1
set scrolloff=3

" search stuff
"set hls " highlight search
set incsearch
set ignorecase smartcase

" insertion stuff
set autoindent smartindent
set shiftwidth=2 tabstop=2 softtabstop=2
set expandtab

set list
set listchars=tab:»_,trail:·

" bundles
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/paredit.vim'
Bundle 'tpope/vim-surround'
Bundle 'digitaltoad/vim-jade'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-markdown'
Bundle 'vim-scripts/Align'
Bundle 'wavded/vim-stylus'
Bundle 'jceb/vim-orgmode'
Bundle 'Valloric/YouCompleteMe'
Bundle 'kien/ctrlp.vim'

" undo tree visualization
Bundle 'sjl/gundo.vim'
nnoremap U :GundoToggle<CR>

" rainbow parentheses
Bundle 'kien/rainbow_parentheses.vim'
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['172',         'Orange3'],
    \ ['148',         'Yellow3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['226',         'Yellow1'],
    \ ['gray',        'RoyalBlue3'],
    \ ['red',         'firebrick3'],
    \ ['214',         'Orange1'],
    \ ['green',       'SeaGreen3'],
    \ ]

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

" automatically insert closing brace
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" always move up/down by one screen line even if the line is wrapped
nnoremap j gj
nnoremap k gk

" find ctags files from current directory all the way up to the root dir
set tags=./tags;/

autocmd BufNewFile,BufRead *.json set ft=javascript

" required by vundle
filetype plugin indent on
