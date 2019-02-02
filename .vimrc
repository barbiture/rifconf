call plug#begin('~/.vim/plugged')

"Plug 'epilande/vim-es2015-snippets'
"Plug 'SirVer/ultisnips'
"Plug 'burnettk/vim-angular'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'leafgarland/typescript-vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pbrisbin/vim-mkdir'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
"Plug 'mxw/vim-jsx'
"Plug 'epilande/vim-react-snippets'

call plug#end()

syntax on
let g:mapleader=','
"COLORSCHEME
set background=dark
colorscheme hybrid_material

"let g:mapleader='\'
"let g:jsx_ext_required=1
"let g:UltiSnipsExpandTrigger="<C-l>"
set number "LINE NUMBER ON DOC"
set expandtab "CHANGE TAB ON SPACE"
set tabstop=2 "CHANGE TAB SIZE"
set shiftwidth=2
set guifont=Fira\ Code:h12 
set hlsearch "SET HIGHLIGHT IN SEARCH"
set incsearch "SET INCREMENTAL SEARCH"

"set list
set listchars=trail:.,space:. "DRAW_WHITE_SPACE"
set encoding=utf-8
set wildmenu

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='deus'


"mappings
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key,'[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction


