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
Plug 'quramy/tsuquyomi'
Plug 'eslint/eslint'
Plug '~/.fzf/bin/fzf'
Plug 'morhetz/gruvbox'
Plug 'quramy/vim-js-pretty-template'
Plug 'prettier/vim-prettier'
Plug 'galooshi/vim-import-js'
"Plug 'shougo/vimproc.vim'

"Plug 'trotzig/import-js'
"Plug 'mxw/vim-jsx'
"Plug 'epilande/vim-react-snippets'

call plug#end()

syntax on
let g:mapleader=','
"COLORSCHEME
set background=dark
colorscheme hybrid_material

let g:mapleader='\'
"let g:jsx_ext_required=1
"let g:UltiSnipsExpandTrigger="<C-l>"
set number "LINE NUMBER ON DOC"
set expandtab "CHANGE TAB ON SPACE"
set tabstop=2 "CHANGE TAB SIZE"
set shiftwidth=2
set guifont=Fira\ Code:h12 
set hlsearch "SET HIGHLIGHT IN SEARCH"
set incsearch "SET INCREMENTAL SEARCH"

set list
set listchars=trail:.,space:. "DRAW_WHITE_SPACE"
set encoding=utf-8
"set wildmenu

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
"make jj do esc
inoremap jj <Esc> 
"make esc do nothing"
inoremap <Esc> <Nop>
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


let &t_SI.="\e[5 q" "INSERT mode
let &t_SR.="\e[4 q" "REPLACE mode
let &t_EI.="\e[1 q" "NORMAL mode
" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying  ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" Vim import js MAPING "
map <Leader>j :ImportJSWord "Import the module for the variable under the cursor.
map <Leader>i :ImportJSFix "Import any missing modules and remove any modules that are not used.
map <Leader>g :ImportJSGoto "Go to the module of the variable under the cursor.
