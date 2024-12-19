""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" More time spent on the tooling then on the actual task, is a sure sign of a mediocre engineer. ""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""
"" No compbatibility ""
"""""""""""""""""""""""
""Probably don't need this, cause the manual says: compatibility mode is off
""when there is a vimrc
set nocompatible

"""""""""
"" Tab ""
"""""""""
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab=false

""""""""""""""""""""
"" Line numbering ""
""""""""""""""""""""
""Turn line numbering on
set number
set relativenumber


"""""""""""
"" Ruler ""
"""""""""""
""Turn ruler on. Sometimes it's useful.
set ruler


""""""""""""""""""""""
"" Syntax highlight ""
""""""""""""""""""""""
syntax on


""""""""""""
"" Leader ""
""""""""""""
""Set leader to space
nnoremap <SPACE> <Nop>
let mapleader = "\<SPACE>"


"""""""""""""""""
"" Showcommand ""
"""""""""""""""""
""Set show command. It displays the commands pressed. Not sure if it is really
"useful or just an eyecandy... Also, I've read somewhere, that it makes your
"editor slower.
"set showcmd


"""""""""""""
"" Plugins ""
"""""""""""""
filetype plugin on


"""""""""""""
"" Buffers ""
"""""""""""""
""Press <SPACE>b to list buffers and insert in command mode ':buffer ' now you
"only need to type the number for the buffer and hit enter. Can also cycle
"through with <TAB>
nnoremap <LEADER>b = :buffers<CR>:buffer<SPACE>
""Press <SPACE>n for next buffer and <SPACE>p for previous buffer
nnoremap <LEADER>n = :bn<CR>
nnoremap <LEADER><SPACE> = :bn<CR>
nnoremap <LEADER>p = :bprevious<CR>


"""""""""""
"" netrw ""
"""""""""""
""Remap 'go to parent dir' and 'enter dir/open file' commands to something easy to use
au FileType netrw nmap <buffer> h -
au FileType netrw nmap <buffer> l <CR>
au FileType netrw nmap <buffer> . gh

""Get rid of the banner on the top. It takes up too much space
let g:netrw_banner = 0

""Set window width to 20 chars. Not sure about this one. Sometimes it's nice to
"have the full available width when opening a file with :Vex. This setting
"works with :Lex best
"let g:netrw_winsize = 20


"""""""""""""""""""""
"" Fuzzy file find ""
"""""""""""""""""""""
set path+=**
set wildmenu

""""""""""""""
"" vim-plug ""
""""""""""""""""
call plug#begin()
" List your plugins here
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

""""""""""""
"" vim-go ""
""""""""""""
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

""""""""""""""""""""""""""
" Enable autocompletion ""
""""""""""""""""""""""""""
set omnifunc=syntaxcomplete#Complete

""""""""""""""""""""""""""""""
" Select keyword as you type "
""""""""""""""""""""""""""""""
:set completeopt=longest,menuone


