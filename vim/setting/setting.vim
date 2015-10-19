" Set the leader to Space
let mapleader = "\<Space>"

" Enable relative line numbers
set relativenumber

" Use spaces instead of tabs
set expandtab

" Always show the statusline
set laststatus=2

" Enable syntax highlighting
syntax enable

" Set a dark background
set background=dark

" Set solarized as our theme (Plugin: )
colorscheme solarized

" Fix broken arrow key navigation in insert mode
" set term=builtin_ansi

" tab = 2 spaces
set tabstop=2

set fo-=t

" Indent to two spaces
" --------------------
set shiftwidth=2
set softtabstop=2

" Don't show insert message
set noshowmode

" Remove the delay when hitting esc
" ---------------------------------
set noesckeys
set ttimeout
set ttimeoutlen=1

" Set vim history
set history=250

" Highlight background of current line
set cursorline

" Set ignorecase
" Lowercase = case insensitive, any uppercase = case sensitive
set smartcase

" Disable word wrap
set nowrap

" Search while typing
set incsearch

" Highlight all search results
set hlsearch

" Snippets
let g:snippetsEmu_key = "<S-Tab>"

" Wild ignore
set wildignore+=tmp/**,*.scssc,*.sassc,*/bower_components/*,*/node_modules/*,*.jpg,*.png,*.gif,*.pdf

" JSX
let g:jsx_ext_required = 0

" Error beeping
set novisualbell
set errorbells

" Paste toggle
set pastetoggle=<F2>

" NERDTree
" --------
let NERDTreeSortOrder = ['\/$', '\.js*', '\.cpp$', '\.h$', '*']
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" Airline
let g:airline_powerline_fonts = 1

" Tmuxline
" --------
let g:tmuxline_powerline_separators = 1
let g:tmuxline_theme = 'airline'
let g:airline#extensions#tmuxline#enabled = 0

" CtrlP
" -----
let g:ctrlp_max_height = 20
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 0

" Stolen from Brandon Hilkert's Dotfiles
" --------------------------------------
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

" Syntastic
" ---------
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let syntastic_mode_map = { 'passive_filetypes': ['html'] }
let g:syntastic_javascript_checkers = ['eslint']
