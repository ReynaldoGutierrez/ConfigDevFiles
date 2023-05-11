call plug#begin()

Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-ragtag'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-endwise'
Plug 'w0rp/ale'
Plug 'vim-ruby/vim-ruby'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'sukima/xmledit'
Plug 'iamcco/coc-tailwindcss'
Plug 'mattn/emmet-vim'
Plug 'raimondi/delimitmate'

call plug#end()

nnoremap<C-p> :Files <CR>
nnoremap <SPACE> <Nop>
let mapleader = " "
set spell
set number
set rnu
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
colorscheme gruvbox
filetype plugin indent on
syntax on
let g:ragtag_global_maps=1
set shiftwidth=2
set autoindent
set smartindent

autocmd FileType html,eruby
set omnifunc=htmlcomplete#CompleteTags

let g:user_emmet_leader_key=','
