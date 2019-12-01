"Vundle
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin '907th/vim-auto-save'
"Plugin 'vim-airline/vim-airline'
Plugin 'DoxygenToolkit.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'tell-k/vim-autopep8'
"Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on  " allows auto-indenting depending on file type
set noswapfile
set encoding=utf-8
let mapleader = "."
nnoremap <leader>l :set invnumber<CR>
nnoremap <leader>q :q!<CR>
nnoremap G Gzz
inoremap jk <Esc>

"tab control
nnoremap K :tabnext<CR>
nnoremap J :tabprevious<CR>
nnoremap <C-t> :tabnew<CR>

:set tabstop=4
:set shiftwidth=0

"switch windows with space
nnoremap <space> <C-W><C-W>

"new line with enter
nmap <CR> o<Esc>

" Enable folding
set foldmethod=indent
:nnoremap <expr> F  &foldlevel ? 'zM' :'zR'
nnoremap f za
set foldlevel=1

" keep selection when indenting a visual block
:vnoremap < <gv
:vnoremap > >gv

" Powerline (Fancy thingy at bottom stuff)
"let g:Powerline_symbols = 'fancy'
"set laststatus=2   " Always show the statusline
"set encoding=utf-8 " Necessary to show Unicode glyphs
"set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

let g:auto_save = 1  " enable AutoSave on Vim startup

set scrolloff=15 "always keep 5 lines above/below cursor

"airline settings
"let g:airline#extensions#tabline#enabled = 1

"set hidden
"new buffer
"nmap <C-t> :enew<cr>
"nmap m :bprevious<CR>
"nmap , :bnext<CR>
"close buffer
"nmap X :bp <BAR>  bd #<CR>
"let g:airline#extensions#tabline#formatter = 'default'
"
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 1
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = "1"
let g:jedi#goto_command = "<leader>d"
let g:jedi#documentation_command = "<leader>k"

autocmd FileType python noremap <buffer> <C-F> :call Autopep8()<CR>
let g:autopep8_disable_show_diff=1

