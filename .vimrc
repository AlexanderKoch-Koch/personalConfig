"Vundle
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'nvie/vim-flake8'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'lifepillar/vim-solarized8'
"Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on  " allows auto-indenting depending on file type


set encoding=utf-8

inoremap jk <Esc>
:tnoremap <Esc> <C-\><C-n>
tnoremap jk <C-\><C-n>

set number

"tab control
nnoremap ö :tabnext<CR>
nnoremap ü :tabprevious<CR>
nnoremap <C-t> :tabnew<CR>

":set tabstop=4
":set shiftwidth=4
":set expandtab

"switch windows with space
nnoremap <space> <C-W><C-W>

"new line with enter
nmap <CR> o<Esc>

" Enable folding
set foldmethod=indent
:nnoremap <expr> F  &foldlevel ? 'zM' :'zR'
nnoremap f za

" Powerline (Fancy thingy at bottom stuff)
let g:Powerline_symbols = 'fancy'
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

"use solarized colorscheme
let g:solarized_termcolors=256
colorscheme solarized8
set background=dark

syntax enable

