set fileencoding=utf-8
set termencoding=utf-8
set encoding=utf-8

set tabstop=4
set shiftwidth=4
set number
set ruler
set autoindent
set hlsearch
set incsearch
set showcmd
set nocompatible
set laststatus=2
set backspace=indent,eol,start

filetype plugin on
syntax on

imap [ []<Esc>i
imap ( ()<Esc>i
imap <C-S-a> <Esc>:!xclip -sel c %:p<CR><CR>
nmap <C-S-a> <Esc>:!xclip -sel c %:p<CR><CR>
imap <C-]> <Esc><C-]>
nnoremap <C-]> :w<CR><C-]>
set completeopt=menu
"autocmd BufReadPost *.txt execute "normal GoDate:\<Esc>" | :read !date
"autocmd BufReadPost *.txt normal kJ

if expand('%:e')=="c"
set tags+=~/.vim/tags/c/tags
nmap <F12> <Esc>:w<CR>:!ctags -R --c-kinds=+p --fields=+iaS --extra=+q %:p<CR><CR>
nmap <F9> <Esc>:w<CR>:!gcc -o %:p:h/%:r.bin %:p 1> %:p:h/%:r.gcc 2>&1<CR>:split %:p:h/%:r.gcc <CR><CR>
nmap <F10> <Esc>:!%:p:h/%:r.bin 1> %:p:h/%:r.out 2>&1<CR>:split %:p:h/%:r.out<CR><CR>
imap { {<CR>}<Esc>O<Tab>
nmap <C-k> <Esc>0i//<Esc>j
nmap <C-S-k> <Esc>0xxk
imap <C-k> <Esc>0i//Esc>j
nmap <C-S-k> <Esc>0xxk
endif
if expand('%:e')=="cpp"
set tags+=~/.vim/tags/cpp/tags
nmap <F12> <Esc>:w<Cr>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q %:p<CR><CR>
nmap <F9> <Esc>:w<CR>:!g++ -std=c++11 -o %:p:h/%:r.bin %:p 1> %:p:h/%:r.g++ 2>&1<CR>:split %:p:h/%:r.g++ <CR><CR>
nmap <F10> <Esc>:!%:p:h/%:r.bin 1> %:p:h/%:r.out 2>&1<CR>:split %:p:h/%:r.out<CR><CR>
imap { {<CR>}<Esc>O<Tab>
endif

if expand('%:e')=='vim'
nmap <F10> :w<CR>:so %<CR>
endif


auto FileType python set omnifunc=pythoncomplete#Complete
if expand('%:e')=="py"
imap :<CR> :<CR><Tab>
endif

inoremap ' ''<Esc>i
inoremap " ""<Esc>i
