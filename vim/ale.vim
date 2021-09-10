"ALE 
nmap <silent> [c <Plug>(ale_previous_wrap)
nmap <silent> ]c <Plug>(ale_next_wrap)

let g:ale_sign_error = '📛'
let g:ale_sign_warning = '⚠️'
if filereadable(glob('package.json'))
  let @x = join(readfile(glob('package.json'), '\n'))
  if (matchstr(@x, "prettier-standard") != '')
    
    else
  endif
endif
let g:ale_linters = {
          \  'python': ['flake8', 'pylint'],
          \  'javascript': ['eslint'],
          \  'typescript': ['tsserver', 'eslint'],
          \  'vue': ['eslint']
          \}
let g:ale_fixers = {
      \  'javascript': [ 'eslint', 'prettier' ],
      \  'typescript': [ 'eslint', 'prettier' ],
      \  'vue': ['eslint'],
      \  'scss': ['prettier'],
      \  'html': ['prettier'],
      \  'reason': ['refmt']
      \}
let g:ale_fix_on_save = 1
let g:ale_completion_tsserver_autoimport = 1
