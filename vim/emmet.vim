let g:user_emmet_leader_key='<TAB>'
let g:user_emmet_install_global = 0
let g:user_emmet_settings = {
\ 'javascript' : {
\     'extends' : 'jsx',
\     'default_attributes': {
\       'label': [{'htmlFor': ''}],
\       'class': {'className': ''},
\     }
\ },
\ 'typescript' : {
\     'extends' : 'jsx',
\     'default_attributes': {
\       'label': [{'htmlFor': ''}],
\       'class': {'className': ''},
\     }
\ },
\ 'vue': {
\   'extends': 'html'
\ }
\}

autocmd FileType html,css,javascript.jsx,typescript.(ts|tsx) EmmetInstall
"autocmd FileType html,css EmmetInstall
