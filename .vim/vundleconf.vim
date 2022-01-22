set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vim commentary
Plugin 'tpope/vim-commentary'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NERDTree to manage files
Plugin 'preservim/nerdtree'

" Lightline for statusline
Plugin 'itchyny/lightline.vim'

" Vim atom dark theme
Plugin 'gosukiwi/vim-atom-dark'

" better syntau highlight
Plugin 'sheerun/vim-polyglot'

call vundle#end()

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal

" see :h vundle for more details or wiki for FAQ
