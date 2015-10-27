augroup startup
  autocmd!
  " If we launched vim without specifying a target, we want to open the pwd
  autocmd VimEnter * if empty(argv()) | silent! edit . | endif
augroup END

" Syntax Highlight
if has("autocmd")
  filetype indent on
endif

" Auto resizing for gvim splits"
if has("gui_running")
  autocmd VimResized * wincmd =
endif

" Enable JSON formatting
autocmd BufNewFile,BufRead *.json set ft=javascript

" Define all markdown extensions
autocmd BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} set ft=markdown

" Set wrap for markdown"
autocmd FileType markdown setlocal wrap

" Set slim formatting
autocmd BufRead,BufNewFile *.slim set ft=slim

" Gemfile, Rakefile and config.ru are Ruby files
autocmd BufRead,BufNewFile {Gemfile,Rakefile,config.ru} set ft=ruby

" Delete trailing space in file upon write
autocmd BufWritePre * :%s/\s\+$//e

" Prevent NERDTree opening files within itself
autocmd FileType nerdtree noremap <buffer> <c-left> <nop>
autocmd FileType nerdtree noremap <buffer> <c-h> <nop>
autocmd FileType nerdtree noremap <buffer> <c-right> <nop>
autocmd FileType nerdtree noremap <buffer> <c-l> <nop>

autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?
autocmd FileType ruby,eruby,yaml setlocal path+=lib
autocmd FileType ruby,eruby,yaml setlocal colorcolumn=80
autocmd FileType make setlocal noexpandtab
