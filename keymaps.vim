filetype plugin on
let mapleader = "\<space>"

" Quick edit and reload vim config
nmap <leader>ve :edit ~/.config/nvim/init.vim<cr>
nmap <leader>vr :source ~/.config/nvim/init.vim<cr>

" Allow gf to open/create non exists file
map gf :edit <cfile><cr>

" Save file the traditional way
imap <C-s> <esc> :w <cr>
nmap <C-s> :w <cr>
nmap <C-s> <x> :hide <cr>
nnoremap <C-b> <cmd>CocCommand explorer<cr>
imap jj <esc>
" Search selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
nmap <space>e <Cmd>CocCommand explorer<CR>
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>
nnoremap <silent> <leader>c} V}:call nerdcommenter#Comment('x', 'toggle')<CR>
nnoremap <silent> <leader>c{ V{:call nerdcommenter#Comment('x', 'toggle')<CR>
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
