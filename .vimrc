so ~/.vim/plugins.vim

" set line number relative auto
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
" end set line number relative auto

" set mapleader
let mapleader = ","

