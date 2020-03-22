set nocompatible
syntax enable

" Plugins:
"
" 1. install plugin manager
" $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 2. install plugins:
" > :PlugInstall
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim' " fuzzy file finder
Plug 'jremmen/vim-ripgrep' " ripgrep, a faster grep. requires ripgrep
Plug 'stefandtw/quickfix-reflector.vim' " Allow editing quickfix list
call plug#end()

let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
let g:rg_command = 'rg --vimgrep -S'

command! MakeTags !rg --files | ctags -R --links=no -L -

" Useful Commands:

" Move between windows
"  CTRL-W h,j,k,l (direction)

" Quickfix
" > :cn (next), :cn (previous)

" CtrlP
" CTRL-j,k (move between results)
" CTRL-v (open result in vertical split)

" Vim Terminal
" > :term [command]
" CTRL-W N (switch to normal mode, allows moving, selecting, copying, etc.)
