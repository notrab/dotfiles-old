" Ag
map <leader>g:Ag!<space>

" Tab leaders
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Fugitive
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gr :Gremove<CR>
nnoremap <Leader>gl :Glog<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gm :Gmove
nnoremap <Leader>gp :Ggrep
nnoremap <Leader>gR :Gread<CR>
nnoremap <Leader>gg :Git
nnoremap <Leader>gd :Gdiff<CR>

" Set CtrlP toggle to <leader>f
let g:ctrlp_map = '<leader>f'

" CtrlPTag
nnoremap <leader>. :CtrlPTag<cr>

" Call our RenameFile function
map <leader>n :call RenameFile()<cr>

" Clear search highlight
nnoremap <cr> :nohlsearch<cr>

" Write the file easily
nnoremap <Leader>w :w<CR>

" Insert snippet map
iunmap <S-Tab>

" Disable K lookup
map K <Nop>

" Search tags in current bugger
" map <Leader>t :CtrlPBufTag<CR>

" Search buggers
noremap <leader>b :CtrlPBuffer<cr>

" vim-rspec tpope/dispatch
let g:rspec_command = "Dispatch bin/rspec {spec}"

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
