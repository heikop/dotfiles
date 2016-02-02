" TODO: do i want another leader?
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" required
set nocompatible " be iMproved
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " required
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC STUFF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" reloading this vimrc every time it it saved
autocmd bufwritepost .vimrc source $MYVIMRC

" auto read a file when it its changed from the outside
set autoread

" absolute line numbers in insert mode, relative otherwise
"set number
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" ci: /word ; /Word\c | cs: /Word ; /word\C | case (in)sensitive
set smartcase

" 256 colors
set t_Co=256

" colorscheme
colorscheme valloric

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KEYMAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""
" YouCompleteMe
"""""""""""""""""""""""""""""""""""

let g:ycm_autoclose_preview_window_after_completion = 1 " auto close preview windowi
" TODO: show preview window at the bottom
let g:ycm_confirm_extra_conf = 0 " always loading (every) config file without asking

"""""""""""""""""""""""""""""""""""
" airline
"""""""""""""""""""""""""""""""""""

set hidden " allows buffer to be hidden if modified
nmap <Left> <Esc>:bp<CR>  " TODO: find a better solution
nmap <Right> <Esc>:bn<CR> " C-h and C-l is not a good idea
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='simple'

"""""""""""""""""""""""""""""""""""
" other stuff
"""""""""""""""""""""""""""""""""""

" treat long lines as break lines
map j gj
map k gk

" easy escape
inoremap jk <ESC>
inoremap kj <ESC>

" switch to paste mode (stuff like smartindent turned off)
set pastetoggle=<F2>

" text is still selected after indenting it
xnoremap < <gv
xnoremap > >gv

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INTERFACE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set 4 lines to the cursor - when moving vertically using j/k
set so=4

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TABS & CO
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set expandtab " use spaces instead of tabs
set smarttab
set shiftwidth=4
set tabstop=4
set smartindent
