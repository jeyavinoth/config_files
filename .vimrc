set nocompatible " be iMproved
filetype off " required
set t_Co=256 " 256 colors

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " install Vundle
Plugin 'Valloric/YouCompleteMe' " autocomplete vim 
Plugin 'tpope/vim-surround' " sorround words, etc ysw)
Plugin 'tpope/vim-fugitive' " git integration
Plugin 'tpope/vim-repeat' " updated . repeat
Plugin 'junegunn/fzf' " fzf file search
Plugin 'junegunn/fzf.vim' " fzf with vim 
Plugin 'vim-airline/vim-airline' " powerline at bottom with details
Plugin 'tomtom/tcomment_vim' " gcc comment
Plugin 'dense-analysis/ale' " Linting
Plugin 'nvie/vim-flake8' " flake8 formatting
Plugin 'preservim/nerdtree' " nerdtree left folder browser
Plugin 'preservim/tagbar' " tagbar on right to get tags in file
Plugin 'morhetz/gruvbox' " colorscheme gruvbox
Plugin 'vim-scripts/auto-pairs-gentle' " gentle version of auto pairs
Plugin 'airblade/vim-gitgutter' " shows the +/- for git changes

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Plugin 'ap/vim-buftabline' " show opened buffer files on top
" Plugin 'jiangmiao/auto-pairs' " auto complete paranthesis

" To ignore plugin indent changes, instead use:
" filetype plugin on

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

colorscheme gruvbox
set background=dark
" colorscheme atom-dark-256

" FZF ctrl-p remap
map <C-p> :Files <CR>

" Buftabline
" set hidden " opening a new file will set the current buffer as hidden
nnoremap <C-H> :bnext<CR> " map next buffer to ctrl+shift+H
nnoremap <C-L> :bprev<CR> " map prev buffer to ctrl+shift+L

"
set exrc

" formatting
set tabstop=4 " set tab spacing as 4
set softtabstop=4 " set tab spacing 
set shiftwidth=4 " >> | << moves by 4 spaces 
set smartindent " smart indents lies
set autoindent " auto indents next line 
set expandtab " expands tab to spaces
set showmatch " shows matching brackets/quotes
set encoding=utf-8 " setting encoding 
set fileformat=unix

set rnu " set relative numbers
set nu " set absolute numbers as well

set hidden " keep the buffer's open in the background
set noerrorbells " no error bells in vim
set guicursor= " leaves block cursors
set incsearch " highlights as I search
set scrolloff=5 " set the number of lines kept when scrolling
set colorcolumn=120 " sets the a column on 120 to show that code is exceeding 120
set signcolumn=yes " sets the sign column, that shows linting + git stuff

" mouse settings
set mouse=a " allow mouse usage
syntax on " setting syntax

" backup, swap and undo
set backup
set swapfile
set undofile

set backupdir=/tmp//
set undodir=/tmp//

" fold indent/method
set foldmethod=indent " inden when folding
set foldlevel=99 " unfold everyting on file open

" set linters
let g:ale_linters = {'python' : ['flake8', 'black']}
let g:ale_open_list = 0

" mappings n - normal mode; nore - non recursive; map - mapping
" nerdtree
nnoremap <C-t> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
" nnoremap <C-t> :NERDTree<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

" Other mappings
nnoremap <space> za

" tagbar
nnoremap <leader>t :TagbarToggle<CR>

" ALE linter mappings
nnoremap <C-j> :ALENext<CR>
nnoremap <C-k> :ALEPrevious<CR>

" Open buffer remap
nnoremap <leader>b :buffers<CR>:buffer<Space>

" setting background to None
" highlight Normal ctermbg=NONE
