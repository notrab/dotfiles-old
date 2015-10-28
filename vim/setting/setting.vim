let mapleader = "\<Space>" " set new leader key

colorscheme jellybeans    " set jellybeans as theme

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

" Airline
let g:airline_powerline_fonts = 1

" Tmuxline
let g:tmuxline_powerline_separators = 1
let g:tmuxline_theme = 'airline'
let g:airline#extensions#tmuxline#enabled = 0

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
