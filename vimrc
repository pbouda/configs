call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale'
Plug 'lifepillar/vim-solarized8'
call plug#end()

autocmd FileType markdown setlocal shiftwidth=4 tabstop=4 expandtab

set backspace=indent,eol,start
set tabstop=2 shiftwidth=2 expandtab
set number
set ruler
set encoding=utf-8

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|venv|node_modules)$',
  \ }

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

noremap <Leader>y "*y
noremap <Leader>yy "*yy
noremap <Leader>p "*p

let g:ale_fixers = {'javascript': ['prettier'], 'html': ['prettier'], 'markdown': ['prettier'], 'python': ['black']}
let g:ale_fix_on_save = 1
let g:ale_completion_tsserver_autoimport = 1
let g:ale_completion_enabled = 1
nmap <F12> :ALEGoToDefinition<CR>
nmap <C-F12> :ALEGoToDefinitionInTab<CR>

set background=dark
let g:solarized_termtrans=1
colorscheme solarized8
