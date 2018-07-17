call plug#begin('~/.vim/plugged')

  Plug 'itchyny/lightline.vim'
  Plug 'tpope/vim-commentary'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'Yggdroot/indentLine'
  Plug 'sheerun/vim-polyglot'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'scrooloose/syntastic'
  Plug 'Raimondi/delimitMate'
  Plug 'ap/vim-buftabline'
  " Plug 'Valloric/YouCompleteMe'
  " Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-vinegar'
  Plug '~/.fzf'

  Plug 'JamshedVesuna/vim-markdown-preview'

  " html
  "" HTML Bundle
  Plug 'hail2u/vim-css3-syntax'
  Plug 'mattn/emmet-vim'
  Plug 'digitaltoad/vim-pug'

  " ruby
  Plug 'tpope/vim-rails'

  " javascript
  "" Javascript Bundle
  Plug 'jelera/vim-javascript-syntax'

	" angular
	Plug 'bdauria/angular-cli.vim'

  " vue
  Plug 'posva/vim-vue'

call plug#end()

set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab

set nocompatible
syntax on
filetype plugin indent on
set noshowmode
let mapleader=','
let g:lightline = { 'colorscheme': 'one' }

set noswapfile

autocmd VimEnter * if globpath('.,..','node_modules/@angular') != '' | call angular_cli#init() | endif

cno jj <C-c>
ino jj <C-c>
nno H 0
nno L $

noremap <F4> :%s/\s\+$//e<CR>

noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Buffer nav
noremap <leader>z :bp!<CR>
noremap <leader>q :bp!<CR>
noremap <leader>x :bn!<CR>
noremap <leader>w :w<CR>

"" Close buffer
noremap <leader>c :bd<CR>

"" Open Netrw with Lex
noremap <leader>l :Lex<CR>

"" Set and unset number lines
nnoremap <F2> :set nonumber!<CR>

"" Toggle Indent Lines
let g:indentLine_enabled = 0
nnoremap <F3> :IndentLinesToggle<CR>

"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
