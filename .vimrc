" set line number relative auto
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


" set mapleader
let mapleader = ","


" load plugin config
so ~/.vim/plugins.vim


" set indentation
" global indentation with width = 4
set shiftwidth=2 softtabstop=2 expandtab
" indentation width = 8 ( golang )
autocmd FileType go setlocal shiftwidth=8 softtabstop=8 expandtab
" indentation width = 2 (yml, yaml, toml)
autocmd FileType go setlocal shiftwidth=2 softtabstop=2 expandtab



