"
" ~/.vimrc
"

" Set compatibility to Vim only
set nocompatible

" Syntax Highlighting
syntax on

" Line Numbers
set number

" Status Bar
set laststatus=2

" Line Wrapping
set wrap

" Mouse Support
set mouse=a

" Call Plugins
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif
