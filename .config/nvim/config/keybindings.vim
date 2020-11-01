" Define <Leader>
let g:mapleader = ' ' 

" Save with <leader> + s
nnoremap <leader>s :w<CR> 

" Save and close with <leader> + q
nnoremap <leader>q :q<CR>

"Tab to go to next buffer
nnoremap <TAB> :bnext<CR>
"Shift + Tab to go to previous buffer
nnoremap <S-TAB> :bprevious<CR>

" Toggle NerdTree with <leader> + b
nnoremap <silent> <leader>b :NERDTreeToggle<CR>

" Use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Search on fzf
nnoremap <leader>p :Files<CR>
