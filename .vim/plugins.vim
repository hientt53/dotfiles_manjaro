call plug#begin()

"########## Utility ########

" Nerdtree - sidebar    
" <leader> <ctrl + n> 
" o to open file on current file
" i to open file in new window
Plug 'scrooloose/nerdtree' 		
Plug '/usr/bin/fzf' 			" fzf for search file	| <ctrl P>
Plug 'junegunn/fzf.vim' 		" fzf for search file
Plug 'majutsushi/tagbar'		" Tagbar 		| F8
Plug 'terryma/vim-multiple-cursors' 	" Multiple cursors
Plug 'mtdl9/vim-log-highlighting'

" Helpers for unix
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'

"########## Generic Programing Support
" Auto close chars. If type ( autoclose will automatically iinsert ) and put the cursor between them
Plug 'Townk/vim-autoclose'		
Plug 'airblade/vim-gitgutter'		" Git gutter 
Plug 'scrooloose/nerdcommenter'		" Comment  		| <Leader> ci | <Leader> wu

" Linting/fixing
Plug 'w0rp/ale'

" Edritor config 
"Plug 'editorconfig/editorconfig-vim'

" Detect configlicts in key mapping
Plug 'lukhio/vim-mapping-conflicts'

" Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'valloric/youcompleteme'


call plug#end()


so ~/.vim/plug-config/fzf.vim
so ~/.vim/plug-config/nerdtree.vim
so ~/.vim/plug-config/tagbar.vim
so ~/.vim/plug-config/nerdcommenter.vim
so ~/.vim/plug-config/go.vim
so ~/.vim/plug-config/youcompleteme.vim


