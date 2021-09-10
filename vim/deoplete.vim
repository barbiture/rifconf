  "let g:deoplete#enable_at_startup = 1
  "call deoplete#custom#option(
  "\ 'sources', {
  "  \  '_': ['ale'],
  "\ },
  "\ {
  "\ 'enable_ignore_case': 1,
  "\ 'enable_smart_case': 1,
  "\ 'enable_camel_case': 1,
  "\ 'enable_refresh_always': 1,
  "\ 'max_abbr_width': 0,
  "\ 'max_menu_width': 0,
  "\})
  "call deoplete#custom#var('omni', 'input_pattenrs', {})
let g:ale_linters = {
\ 'javascript': ['standard'],
\}
let g:ale_fixers = {'javascript': ['standard']} 
let g:ale_linter_aliases = {'typescriptreact': 'typescript'}

" if has('nvim')
  " let g:deoplete#enable_ignore_case = 1
  " let g:deoplete#enable_smart_case = 1
  " let g:deoplete#enable_camel_case = 1
  " let g:deoplete#enable_refresh_always = 1
  " let g:deoplete#max_abbr_width = 0
  " let g:deoplete#max_menu_width = 0
  " let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})
" endif
