set colorcolumn=100 " display vertical line at 100 chars
set textwidth=100
set cursorline      " show cursor position
set number          " display line numbers
set wildmenu        " visual autocomplete for command menu
set laststatus=2    " always show the status line

set expandtab     " replace tabs with spaces
set tabstop=2     " number of visual spaces per TAB
set shiftwidth=2  " number of spaces to shift for >>, << commands

set splitright " split vertical panels to right
set splitbelow " split horizontal panels to bottom

set nowrap
set lazyredraw

set backupdir=/tmp
set directory=/tmp

let g:mapleader=','

map <c-p> :CtrlP<cr>

for g:fpath in split(globpath('~/.config/vim/pre-plugins', '*.vim'), '\n')
  exe 'source' g:fpath
endfor

call g:plug#begin('~/.config/vim/plugged')

if filereadable(expand('~/.config/vim/plugins.vim'))
  source ~/.config/vim/plugins.vim
endif

call g:plug#end()

for g:fpath in split(globpath('~/.config/vim/post-plugins', '*.vim'), '\n')
  exe 'source' g:fpath
endfor
