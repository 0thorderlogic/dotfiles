"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               

" :help
"	- https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/
" :by 
" 	~ a115 [https://aoneone5.github.io]

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/AutoComplPop'

call plug#end()

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file is use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Turn syntax highlighting on.
syntax on

" Add numbers to the file.
set number

set noerrorbells

" Set tab width to 4 columns.
set tabstop=4

" AutoComplete Pop 
set complete+=kspell

" Set shift width
set shiftwidth=4

" Makes the brackets close automatically
inoremap { {<CR><BS>}<Esc>ko
inoremap ( ()<left>
inoremap [ []<left>
inoremap < <lt>><left>
inoremap " ""<left>
inoremap ' ''<left>

" Set autoindent
set autoindent

" Set smart indentation
set smartindent

set exrc 
set guicursor=
set nohlsearch
set noerrorbells
set nowrap
set noswapfile
set incsearch
set colorcolumn=80
colorscheme gruvbox

" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" In case the airline thing doesn't workout.

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ %{strftime('%H:%M')}

" Show the status on the second to last line.
set laststatus=2

" }}}

" AIRLINE THEME ------------------------------------------------------------ {{{

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
let g:airline_section_b = '%{strftime("%H:%M")}'

" If you only see boxes here it may be because your system doesn't have
" the correct fonts. Try it in vim first and if that fails see the help
" pages for vim-airline :help airline-troubleshooting

" }}}
