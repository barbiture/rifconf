" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
let g:python3_host_prog = '/Users/barbi/.pyenv/shims/python'
let g:loaded_python_provider = 0
"set nocompatible

" ================ General Config ====================

if !has('nvim')
  set ttymouse=xterm2
endif
set number												" Line number are good
set backspace=indent,eol,start		" Allow backspace in insert mode
set history=1000									" Store lots of :cmdline history
set showcmd												" Show incomplete cmds dow the bottom
set showmode											" Show current mode down the bottom
set gcr=a:blinkon0								" Disable cursor blink
set visualbell										" No sounds
set autoread											" Reload files chanded outside vim
" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden
syntax on													" Turn on syntax highlighting

autocmd! bufwritepost vimrc source ~/.vimrc    " When vimrc is edited, reload it

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before plug starts loading all the plugins.
let mapleader=','

map ; :
map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>
" ================ Plug Initialization ====================

" Call the .vimrc.plug file
if filereadable(expand("~/rifconf/.vimrc.plug"))
	source ~/rifconf/.vimrc.plug
endif

" ================ Turn Off Swap Files ====================

set noswapfile
set nobackup
set nowb

" ================ Persisten Undo ====================

if has('persistent_undo') && isdirectory(expand('~').'/.vim/backups')
	silent !mkdir ~/.vim/backups > /dev/null 2>&1
	set undodir=~/.vim/backups
	set undofile
endif

" ================ Indentantion ====================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2 
set expandtab

set t_BE= " Fix paste bug triggered by the above inoremaps
" Auto indent pasted text
" nnoremap p p=`]<C-o>
" nnoremap P P=`]<C-o>

filetype plugin on
filetype indent on
" Display tabs and spaces visually
"let g:indentLine_leadingSpaceEnabled = 0
set list listchars=space:·,tab:>~ 
if has('nvim')
  let g:indentLine_color_term = 28
  let g:indentLine_char_list = ['|', '¦', '┆', '┊']
endif
"set list listchars=eol:$,nbsp:_,tab:>-,trail:~,extends:>,precedes:<
" ================ Folds ====================

set foldmethod=indent				"fold based on indent
set foldnestmax=3						"deepest fol is 3 levels
set nofoldenable


" ================ Completion ====================

set wildmode=list:longest
set wildmenu									"enable ctrl-n and ctrl-p to scroll thru mathes"
set wildignore=*.o,*.obj,*~		"stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ========================

set hlsearch "Set highlight in search
set incsearch "Set incremental search

for f in split(glob('~/rifconf/vim/*.vim'), '\n')
	exe 'source' f
endfor

set rtp+=/usr/local/opt/fzf
"COLORSCHEME
set background=dark
colorscheme hybrid_material

let g:python_highlight_all = 1
let g:jsx_ext_required=0
"let g:UltiSnipsExpandTrigger="<C-l>"
"set tab
set guifont=JetBrains\ Mono:h12 
set encoding=utf-8
"set wildmenu

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='deus'


let g:vim_vue_plugin_load_full_syntax = 1
"mappings
map <Leader> <Plug>(easymotion-prefix)

"make jj do esc
inoremap jj <Esc> 
"make esc do nothing"
"inoremap <Esc> <Nop>
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

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

let &guicursor = 'n-v-c-sm:block-blinkwait1000-blinkon500-blinkoff500,'
\. 'i-c-ci-ve:ver25-blinkwait1000-blinkon500-blinkoff500,'
\. 'r-cr-o:hor20-blinkwait1000-blinkon500-blinkoff500'
set autoread


filetype plugin on
set omnifunc=syntaxcomplete#Complete

" colored line number
:highlight LineNr ctermfg=green
" turn relative line numbers on
" :set relativenumber
:set rnu

" core
let g:loaded_python_provider = 0
