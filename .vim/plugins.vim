call plug#begin()

" fzf for search file
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'

" multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Helpers for unix
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'

" Nerdtree
Plug 'scrooloose/nerdtree'

" Git 
Plug 'airblade/vim-gitgutter'

" Linting/fixing
Plug 'w0rp/ale'

" Edritor config 
"Plug 'editorconfig/editorconfig-vim'

" Tagbar
Plug 'majutsushi/tagbar'

" Detect configlicts in key mapping
Plug 'lukhio/vim-mapping-conflicts'


call plug#end()


so ~/.vim/plug-config/fzf.vim

