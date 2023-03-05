set colorcolumn=100 " display vertical line at 100 chars
set textwidth=100
set cursorline      " show cursor position
set number          " display line numbers
set wildmenu        " visual autocomplete for command menu
set laststatus=2    " always show the status line

set expandtab     " replace tabs with spaces
set tabstop=4     " number of visual spaces per TAB
set shiftwidth=4  " number of spaces to shift for >>, << commands

set splitright " split vertical panels to right
set splitbelow " split horizontal panels to bottom

set nowrap
set lazyredraw

set backupdir=/tmp
set directory=/tmp

" max line length that prettier will wrap on
" Prettier default: 80
let g:prettier#config#print_width = 80

" number of spaces per indentation level
" Prettier default: 2
let g:prettier#config#tab_width = 2

" use tabs over spaces
" Prettier default: false
let g:prettier#config#use_tabs = 'false'

" print semicolons
" Prettier default: true
let g:prettier#config#semi = 'true'

" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'false'

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'true'

" put > on the last line instead of new line
" Prettier default: false
let g:prettier#config#jsx_bracket_same_line = 'false'

" avoid|always
" Prettier default: avoid
let g:prettier#config#arrow_parens = 'always'

" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'es5'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown
" Prettier default: babylon
let g:prettier#config#parser = 'babylon'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'

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
