" =====================================
"             Vim-plug 
" =====================================
call plug#begin()
Plug 'ayu-theme/ayu-vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug '907th/vim-auto-save'
Plug 'mhinz/vim-startify'
" Git plugins
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
call plug#end()



" =====================================
"             NerdTree 
" =====================================

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Git plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'~',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'-',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }


" =====================================
"             ayu-vim  
" =====================================

" enable true colors support
set termguicolors

" for mirage version of theme
let ayucolor="dark"

" for dark version of theme
colorscheme ayu



" =====================================
"             Airline 
" =====================================

" Airline configuration for NerdIcons
let g:airline_powerline_fonts = 1



" =====================================
"             Coc  
" =====================================

" use <tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Coc plugins
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-actions',
  \ 'coc-sh',
  \ 'coc-java-debug',
  \ 'coc-java',
  \ 'coc-clangd',
  \ ]



" =====================================
"             Signify 
" =====================================

" Icons for git info
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'



" =====================================
"             Auto-save 
" =====================================

" Autosave on startup
let g:auto_save = 1



" =====================================
"             Startify 
" =====================================

" Where sessions will be saved 
let g:startify_session_dir = '~/.config/nvim/session'

" Configure menu 
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

" Configure bookmarks
let g:startify_bookmarks = [
            \ { 'b': '~/.bashrc' },
            \ { 'g': '~/.config/nvim/config/general.vim' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'k': '~/.config/nvim/config/keybindings.vim' },
            \ { 'p': '~/.config/nvim/config/plugins.vim' },
            \ { 't': '~/.config/nvim/config/terminal.vim' },
            \ { 'z': '~/.zshrc' },
            \ ]
