set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" Vim ack 
Plugin 'mileszs/ack.vim'

" vim surround
Plugin 'tpope/vim-surround'

" Auto pairs
Plugin 'jiangmiao/auto-pairs'

" Nerd commenter
Plugin 'preservim/nerdcommenter'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NERDTree to manage files
Plugin 'preservim/nerdtree'

" better syntax highlight
Plugin 'sheerun/vim-polyglot'

" Lightline for statusline
Plugin 'itchyny/lightline.vim'

" Vim atom dark theme
Plugin 'gosukiwi/vim-atom-dark'

" aylin colorscheme
Plugin 'AhmedAbdulrahman/vim-aylin'

" gruvbox8 theme
Plugin 'lifepillar/vim-gruvbox8'

call vundle#end()

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal

" see :h vundle for more details or wiki for FAQ
