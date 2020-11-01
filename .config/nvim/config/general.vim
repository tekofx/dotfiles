" Show the name of file in the terminal window
set title

" Shows line numbers
set number 

" Mouse integration
set mouse=a 

" If the line is to long, not divide it
set nowrap

" Shows current line
set cursorline 

" Limit column equal to 120 characters
set colorcolumn=120

" Indentación a 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround

" Inserts spaces instead of <Tab>
set expandtab

" Let change buffers without saving them
set hidden 

" Ignores capital letters at search
set ignorecase

" Not ignore capital letters if the word searched contains capital letters
set smartcase

" Correct words using spanish and english dictionaries
set spelllang=en,es

" Set font
set guifont=Hack_Nerd_Font:h11

" Set encoding
set encoding=utf8

" Hybrid line numbers
set number relativenumber

" Show cursor on insert mode  
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0

" Hide things like -- INSERT --
set noshowmode

" Copy between vim and everyting else
set clipboard=unnamedplus

" Close (, [ and {
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Always show tabs
set showtabline=2





