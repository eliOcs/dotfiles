set nocompatible
syntax enable

" Plugins:
" install plugins:
" > :PlugInstall
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim' " fuzzy file finder
Plug 'jremmen/vim-ripgrep' " ripgrep, a faster grep. requires ripgrep
Plug 'stefandtw/quickfix-reflector.vim' " Allow editing quickfix list
call plug#end()

let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
let g:rg_command = 'rg --vimgrep -S'

command! MakeTags !rg --files | ctags -R --links=no -L -

