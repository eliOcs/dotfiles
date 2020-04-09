set nocompatible
filetype plugin on

call plug#begin('~/.vim/plugged')
  Plug 'junegunn/fzf.vim' " fuzzy file finder
  Plug 'stefandtw/quickfix-reflector.vim' " Allow editing quickfix list
  Plug 'dense-analysis/ale' " linting, formatting
  Plug 'mhinz/vim-grepper' " better grep
  Plug 'preservim/nerdtree' " file manager
  Plug 'airblade/vim-gitgutter' " Git gutter
  Plug 'ludovicchabant/vim-gutentags' " tags
  Plug 'sheerun/vim-polyglot' " better syntax highlighting
  Plug 'chriskempson/base16-vim' " theme
  Plug 'itchyny/lightline.vim' " better status line
call plug#end()

" ALE
let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_completion_enabled = 1


" Tags
let g:gutentags_file_list_command = {
\  'markers': {
\    '.git': 'git ls-files',
\  },
\}

" Mappings
let mapleader = " "
nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>t :Tags<CR>

nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>gg :GitGutterToggle<CR>
nnoremap <Leader>ln :set invnumber<CR>

" Identation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set smartcase " if you use all lowercase then case insensitive

set clipboard=unnamedplus " Sync clipboard with OS

" GitGutter
let g:gitgutter_enabled = 0
set updatetime=500

" Theme
syntax enable
set termguicolors
colorscheme base16-default-dark
let g:lightline = {
\  'colorscheme': 'seoul256',
\  }
set laststatus=2
set noshowmode
