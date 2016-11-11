call plug#begin('~/.vim/plugged')

Plug 'epmatsw/ag.vim'
Plug 'w0rp/ale'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-commentary'
Plug 'vitalk/vim-lesscss'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'jceb/vim-orgmode'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-speeddating'
Plug 'milkypostman/vim-togglelist'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'lambdatoast/elm.vim'
Plug 'easymotion/vim-easymotion'
Plug 'wikitopian/hardmode'

call plug#end()
set nocompatible

syntax enable
set background=dark
colo seoul256

filetype plugin indent on

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set mouse=a                     "Allow the use of mouse in terminal
set clipboard=unnamed           "Use clipboard on terminal

set hidden
syntax on

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Misc =============================

" Use , as leader
let mapleader=','
let maplocalleader=','

" Always show status bar
set laststatus=2

" Move between buffers
map gn :bn<cr>
map gp :bp<cr>

" Toggle tagbar 
nnoremap <silent> <Leader>b :TagbarToggle<CR>

" Frequent mispellings
command! W w
command! Wqall wqall
command! WQall wqall
command! Q q
command! Qall qall

" Indent with tab
nmap <TAB> >>

" Launch FZF with CTRL P
nmap <c-p> :FZF<CR>

" Toggle quickfix and location list
let g:toggle_list_no_mappings = 1
nmap <script> <silent> <leader>l :call ToggleLocationList()<CR>
nmap <script> <silent> <leader>k :call ToggleQuickfixList()<CR>
nmap <script> <silent> <leader>q :bdel<CR>

" Add dash to keywords for certain filetypes
au Filetype css,less,html,htmldjango set iskeyword+=-

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Statusline & Linting ========================

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%{ALEGetStatusLine()}
" set statusline+=%*
" set statusline+=%{fugitive#statusline()}

let g:ale_linters = {
\   'javascript': ['jshint'],
\}

let g:ale_sign_column_always = 1

" ====== airline fonts
let g:airline_powerline_fonts = 1
" ====== airline theme
let g:airline_theme = "tomorrow"
let g:airline_extensions = ['branch', 'tabline']

let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly

let g:Powerline_symbols = 'fancy'
