let mapleader = "\<Space>" " set new leader key

colorscheme onedark " set jellybeans as theme

set relativenumber        " set relative number
set numberwidth=3         " set smaller number width
set softtabstop=2
set noshowmode            " hide insert status message
set noesckeys
set ttimeout
set ttimeoutlen=1
set history=250           " set larger history
set cursorline            " highlight background of current line
set ignorecase smartcase
set gdefault              " assume /g flag is on
set nowrap                " disable wrap
set pastetoggle=<F2>      " paste toggle
set nocompatible
set noshowmode
set clipboard=unnamed

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

if exists("&undodir")
  set undodir=~/.vim-tmp/undo//
  set undofile
endif

" Airline
let g:airline_powerline_fonts = 1

" Highlight all search results
if &t_Co > 2 || has("gui_running")
syntax on
set hlsearch
endif

" Snippets
let g:snippetsEmu_key = "<S-Tab>"

" Wild ignore
set wildignore+=tmp/**,*.scssc,*.sassc,*/bower_components/*,*/node_modules/*,*.jpg,*.png,*.gif,*.pdf

" JSX
let g:jsx_ext_required = 0

" Error beeping
set novisualbell
set errorbells

" CtrlP
let g:ctrlp_max_height = 20
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 0

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let syntastic_mode_map = { 'passive_filetypes': ['html'] }
let g:syntastic_javascript_checkers = ['eslint']

set guifont=Menlo:h14
