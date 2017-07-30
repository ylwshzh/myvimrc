set nu
set foldenable
set foldmethod=manual
set encoding=utf-8
set cursorline
set syntax=on
set confirm
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set ignorecase
map ty :w! ~/.vimxfer<cr>
map tp :r ~/.vimxfer<cr>

:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction
filetype plugin indent on

set nocompatible

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'vim-syntastic/syntastic.git'
Plugin 'scrooloose/nerdtree.git'

" nerdTree
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

