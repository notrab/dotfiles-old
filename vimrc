set encoding=utf-8
set relativenumber
set cursorline
" set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]

" set fillchars+=stl:\ ,stlnc:\

colorscheme monokai
let g:molokai_origin = 1
let g:rehash256 = 1

" let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
let g:tmuxline_powerline_separators = 0

autocmd VimResized * :wincmd =
autocmd FocusLost * :wa        " autosave when file focus is lost
autocmd FileType gitcommit,markdown setlocal spell
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,perl,tex set shiftwidth=2
autocmd FileType c,cpp,java,javascript,python,xml,xhtml,html set shiftwidth=2

if version >= 700
  au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
  au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
endif

let g:rspec_command = "Dispatch rspec {spec}"
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nmap <Leader><Leader> v

if has("autocmd")
  filetype indent plugin on
endif

let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
nmap <silent> <Leader>p :NERDTreeToggle<CR>

" iunmap <S-Tab>
let g:snippetsEmu_key = "<S-Tab>"
