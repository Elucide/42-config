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
set relativenumber
set splitbelow
set splitright
set colorcolumn=81
set wildignorecase
"set encoding=UTF-8
"colo delek
":colorscheme edge
command! W :w
command! WQ :wq
command! Wq :wq
:set termwinsize=30x200

let mapleader=" "


nnoremap <leader>o gT
nnoremap <leader>p gt
nnoremap <leader>m I#include <libc.h><cr><cr>int main(int ac, char **av)<cr>{<cr>}<esc>ko
nnoremap <leader>d :windo difft<cr>
nnoremap <leader>do :diffo<cr>

nnoremap ª :m .+1<CR>==
nnoremap º :m .-2<CR>==

inoremap ª <Esc>:m .+1<CR>==gi
inoremap º <Esc>:m .-2<CR>==gi

vnoremap ª :m '>+1<CR>gv=gv
vnoremap º :m '<-2<CR>gv=gv

iabbrev strlen int	ft_strlen(char *str)<enter>{<enter>int	i;<enter><enter>i = 0;<enter><enter>while (str[i])<enter>i++;<enter>return (i);<enter>}

nnoremap <leader>h I#ifndef <c-r>%<esc>gUaWelr_A<cr># define <c-r>%<esc>gUaWelr_A<cr><cr>#endif<esc>



onoremap ii ?if (<cr>jjdi{kkf(lci(
call plug#begin()
	Plug 'sainnhe/edge'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'preservim/nerdtree'
	Plug 'morhetz/gruvbox'
	Plug 'prabirshrestha/vim-lsp'
	Plug 'jeaye/color_coded'
"	Plug 'chilledheart/vim-clangd'
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""
"              		  EDGE
"""""""""""""""""""""""""""""""""""""""""""""

" Important!!
if has('termguicolors')
	set termguicolors
endif
" The configuration options should be placed before `colorscheme edge`.
let g:edge_style = 'aura'
let g:edge_better_performance = 1
set bg=dark
colorscheme edge

"""""""""""""""""""""""""""""""""""""""""""""
"              		  GRUVBOX
"""""""""""""""""""""""""""""""""""""""""""""

"colorscheme gruvbox
"set bg=dark
"augroup BgHighlight
"    autocmd!
"    autocmd WinEnter let g:gruvbox_contrast_dark=medium
"    autocmd WinLeave let  g:gruvbox_contrast_dark=soft
"augroup END

"""""""""""""""""""""""""""""""""""""""""""""
"              		  AIRLINE
"""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='gruvbox'
let g:airline_theme='edge'

"""""""""""""""""""""""""""""""""""""""""""""
"              		 NERDTREE 
"""""""""""""""""""""""""""""""""""""""""""""

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | wincmd p | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" Refresh NERDTREE whith <cr>r
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>


"""""""""""""""""""""""""""""""""""""""""""""
"              		  COLOR CODEeD
"""""""""""""""""""""""""""""""""""""""""""""
let g:color_coded_enabled = 1
let g:color_coded_filetypes = ['c', 'cpp', 'objc']
