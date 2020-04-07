set nocompatible
syntax enable

call plug#begin('~/.vim/plugged')
  Plug 'junegunn/fzf.vim' " fuzzy file finder
  Plug 'stefandtw/quickfix-reflector.vim' " Allow editing quickfix list
  Plug 'dense-analysis/ale' " linting, formatting and completion
  Plug 'mhinz/vim-grepper' " better grep
  Plug 'preservim/nerdtree' " file manager
  Plug 'airblade/vim-gitgutter' " Git gutter
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

" FZF
nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>

nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>gg :GitGutterToggle<CR>
nnoremap <Leader>ln :set invnumber<CR>

" Identation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set clipboard=unnamedplus " Sync clipboard with OS

set updatetime=500

" Theme
set termguicolors
colorscheme base16-default-dark
let g:lightline = {
\  'colorscheme': 'seoul256',
\  }
set laststatus=2
