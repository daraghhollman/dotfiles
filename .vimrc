call plug#begin()
Plug 'preservim/NERDTree'
Plug 'elkowar/yuck.vim'
Plug 'terryma/vim-smooth-scroll'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/VimCompletesMe'
Plug 'chrisbra/Colorizer'
Plug 'ayu-theme/ayu-vim'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'davidhalter/jedi-vim'
Plug 'psliwka/vim-smoothie'
call plug#end()

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" LaTeX
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'evince Preview'


" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set tab width to 4 columns.
set tabstop=4

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000


" Key maps
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
