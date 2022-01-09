"""""""""""""""""""""""""""""""""""""""""""""""""""
" => General <=
"""""""""""""""""""""""""""""""""""""""""""""""""""

" Loads Vundle plugin manager
source ~/.vim/vundleconf.vim


" Enable filetype plugins
filetype plugin indent on


" When a file is changed by outside reload it
set autoread
au FocusGained,BufEnter * checktime


" set mapleader
let mapleader = ","


" Fast saving
nmap <leader>w :w!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related <=
"""""""""""""""""""""""""""""""""""""""""""""""""""

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4


" insert blanks automatically
set smarttab 


" New lines inherit previous lines
set autoindent


" Auto & Smart indent
set ai
set si

" Wrap lines
set wrap

"""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface <=
"""""""""""""""""""""""""""""""""""""""""""""""""""

" show lines on vertically
set number


" enable relative number 
set relativenumber

" Wrap lines by word not by letters
set linebreak


" Always show current position
set ruler


" command-line completion show horizontally
set wildmenu


" Height of the command bar
set cmdheight=1


" A buffer becomes hidden when it is abandoned
set hid


" Ignore case when searching
set ignorecase


" When searching try to be smart about cases
set smartcase


" Highlight search results
set hlsearch


" Makes search act like search in modern browsers
set incsearch


" Don't redraw while executing macros (good performance config)
set lazyredraw


" For regular expressions turn magic on
set magic


" Show matching brackets when text indicator is over them
set showmatch


" How many tenths of a second to blink when matching brackets
set mat=2

" show maps pressed in the status line
set showcmd

"""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo <=
"""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fonts and colors <=
"""""""""""""""""""""""""""""""""""""""""""""""""""

" enable syntax
syntax enable

" Colorscheme
colorscheme atom-dark-256

"""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status line<=
"""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2


" Format the status line
" set statusline=

"""""""""""""""""""""""""""""""""""""""""""""""""""
" => Shortcuts and plugins config <=
"""""""""""""""""""""""""""""""""""""""""""""""""""

" Open NERDTree
nnoremap <C-x> :NERDTree<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Disable display of mode coz of lightline.vim
set noshowmode



"""""""""""""""""""""""""""""""""""""""""""""""""""
" => Miscellaneous <=
"""""""""""""""""""""""""""""""""""""""""""""""""""

" block cursor in Insert mode
let &t_SI .= "\<esc>Ptmux;\<esc>\<esc>[2 q\<esc>\\"
let &t_SI .= "\<esc>Ptmux;\<esc>\<esc>]\x7\<esc>\\"

" block cursor in Normal mode
let &t_EI .= "\<esc>Ptmux;\<esc>\<esc>[2 q\<esc>\\"
let &t_EI .= "\<esc>Ptmux;\<esc>\<esc>]\x7\<esc>\\"


" Solid terminal when vim opens
hi Normal ctermbg=black
