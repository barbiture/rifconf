if get(g:, 'nvim_typescript#javascript_support', 1)
   autocmd BufEnter *.js,*.jsx call TSOnBufEnter()
   autocmd BufWritePost *.js,*.jsx call TSOnBufSave()
 endif
 if get(g:, 'nvim_typescript#vue_support', 1)
   autocmd BufEnter *.vue call TSOnBufEnter()
   autocmd BufWritePost *.vue call TSOnBufSave()
 endif
 autocmd BufEnter *.ts,*.tsx call TSOnBufEnter()
 autocmd BufWritePost *.ts,*.tsx call TSOnBufSave()
