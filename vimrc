call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale'
Plug 'lifepillar/vim-solarized8'
Plug 'tomtom/tcomment_vim'
call plug#end()

autocmd FileType markdown setlocal shiftwidth=4 tabstop=4 expandtab

set backspace=indent,eol,start
set tabstop=2 shiftwidth=2 expandtab
set number
set ruler
set encoding=utf-8
set splitbelow
set splitright
set noswapfile

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|venv|node_modules|data)$',
  \ }

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

noremap <Leader>y "*y
noremap <Leader>yy "*yy
noremap <Leader>p "*p

let g:ale_fixers = {
  \ 'typescript': ['prettier'],
  \ 'javascript': ['prettier'],
  \ 'html': ['prettier'],
  \ 'markdown': ['prettier'],
  \ 'css': ['prettier'],
  \ 'scss': ['prettier'],
  \ 'python': ['black', 'isort']
\ }
let g:ale_linters = {
  \ 'python': ['pyls', 'pylama', 'mypy']
  \ }
let g:ale_fix_on_save = 1
let g:ale_python_pyls_config = {
\ 'pyls': {
\   'plugins': {
\     'pycodestyle': {
\       'enabled': v:false
\     },
\   }
\ }
\}
let g:ale_completion_autoimport = 1
let g:ale_javascript_prettier_options = '--prose-wrap always'
let g:ale_completion_enabled = 1
let g:ale_echo_msg_format = '%linter% says %s'
nmap <F12> :ALEGoToDefinition<CR>
nmap <C-F12> :ALEGoToDefinitionInTab<CR>
nmap <silent> <leader>j :ALENext<CR>
nmap <silent> <leader>k :ALEPrevious<CR>

set background=dark
let g:solarized_termtrans=1
colorscheme solarized8

set exrc
set secure
