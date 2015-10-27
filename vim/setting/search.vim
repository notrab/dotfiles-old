" Set ignorecase
" Lowercase = case insensitive, any uppercase = case sensitive
set smartcase

" Search while typing
set incsearch

" Highlight all search results
set hlsearch

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
