" General settings
set nocompatible " no need to support old vi
set ignorecase
set smartcase " if you use all lowercase then case insensitive
set clipboard=unnamedplus " sync clipboard with OS
set undofile " persist changes in file
filetype plugin on " enable commands per file type
set pumheight=10 " limit suggestion menu size 

" Plugins
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
let g:ale_sign_error = '●'
let g:ale_sign_warning = '●'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
autocmd VimEnter * :highlight! ALEErrorSign ctermfg=1 guifg=#ac4142 ctermbg=10 guibg=#282828
autocmd VimEnter * :highlight! ALEWarningSign ctermfg=3 guifg=#f4bf75 ctermbg=10 guibg=#282828
autocmd VimEnter * :highlight! ALEError ctermbg=2 guibg=#383838
autocmd VimEnter * :highlight! ALEWarning ctermbg=2 guibg=#383838

" Tags
let g:gutentags_file_list_command = {
\  'markers': {
\    '.git': 'git ls-files',
\  },
\}

" Mappings
set timeoutlen=1000 ttimeoutlen=10
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

" GitGutter
let g:gitgutter_enabled = 0
set updatetime=500

" Code folding
set foldmethod=syntax
set foldlevelstart=99

" Theme
syntax enable
set termguicolors
colorscheme base16-default-dark
let g:lightline = {
\  'colorscheme': 'seoul256',
\  }
set laststatus=2
set noshowmode
