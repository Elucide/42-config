set linebreak
set nowrap
set ruler
set number
set showmatch
syntax on
set noswapfile
set mouse=a
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set splitbelow
set splitright
set colorcolumn=81
set wildignorecase
colo delek
command! W :w
command! WQ :wq
command! Wq :wq
:set termwinsize=30x200

let mapleader=" "

nnoremap <leader>m I#include <libc.h><cr><cr>int main(int ac, char ** av)<cr>{<cr>}<esc>ko
nnoremap <leader>d :windo difft<cr>
nnoremap <leader>do :diffo<cr>

iabbrev strlen int	ft_strlen(char *str)<enter>{<enter>int	i;<enter><enter>i = 0;<enter><enter>while (str[i])<enter>i++;<enter>return (i);<enter>}

nnoremap <leader>h I#ifndef <c-r>%<esc>gUaWelr_A<cr># define <c-r>%<esc>gUaWelr_A<cr><cr>#endif<esc>
onoremap ii ?if (<cr>jjdi{kkf(lci(
