"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               

 "                                         ▟▙            
 "                                         ▝▘            
 " ██▃▅▇█▆▖  ▗▟████▙▖   ▄████▄   ██▄  ▄██  ██  ▗▟█▆▄▄▆█▙▖
 " ██▛▔ ▝██  ██▄▄▄▄██  ██▛▔▔▜██  ▝██  ██▘  ██  ██▛▜██▛▜██
 " ██    ██  ██▀▀▀▀▀▘  ██▖  ▗██   ▜█▙▟█▛   ██  ██  ██  ██
 " ██    ██  ▜█▙▄▄▄▟▊  ▀██▙▟██▀   ▝████▘   ██  ██  ██  ██
 " ▀▀    ▀▀   ▝▀▀▀▀▀     ▀▀▀▀       ▀▀     ▀▀  ▀▀  ▀▀  ▀▀
 " 
 "

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               

" :help
"	- https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/
" :by 
" 	~ a115 [https://aoneone5.github.io]
" I used vscode to make this file. lol. get fucked.

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

Plug 'folke/tokyonight.nvim'
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/AutoComplPop'

call plug#end()

" }}}

" COLORS ----------------------------------------------------------------- {{{

colorscheme tokyonight 

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

" Disables vim's --INSERT-- message
set noshowmode

" No sounds.
set noerrorbells

" Set tab width to 4 columns.
set tabstop=4

" Set cursor to Always be block. 
set guicursor= 

" Shows the current line number
set nu

" Highlight the current line [you can also do columns `set cursorcolumn`]
set cursorline

" Allows keeping files in background. 
set hidden

" History stuff from e****
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" Keeps the cursor in the center-"ish" of the file
set scrolloff=8

" Adds an extra column in left and shows line by line errors there 
set colorcolumn=80
set signcolumn=yes

" AutoComplete Pop 
set complete+=kspell

" Set shift width
set shiftwidth=4

" Makes the brackets close automatically
" for html `inoremap < <lt>><left>`
inoremap { {<CR><BS>}<Esc>ko
inoremap ( ()<left>
inoremap [ []<left>
inoremap " ""<left>
inoremap ' ''<left>

" Set autoindent
set autoindent

" Set smart indentation
set smartindent

" uses .vimrc inside of a folder for project vise configuration
set exrc 

" Removes the search highlight right after you are done.
set nohlsearch

" Doesn't allow vim to wrap a line
set nowrap

" Primeagen said to use it.
set noswapfile

" Incremental search
set incsearch

" that sweet 80 th column highlight
set colorcolumn=80

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

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
""let g:lightline = {
""	'colorscheme': 'tokyonight'}


" Always show tab
" set showtabline=2 // don't like it much

" }}}
