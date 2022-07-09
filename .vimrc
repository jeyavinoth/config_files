" VIMRC - for Jeyavinoth Jeyavinoth

" These lines setup the evn to show graphics and colors
set nocompatible
set t_Co=256
filetype off

" filetype plugin on
" filpetype plugin indent on

" setting up vundle install
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" VUNLDE PACKAGES TO BE INSTALLED
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'jiangmiao/auto-pairs'
" Plugin 'shougo/deoplete.nvim'
Plugin 'vim-airline/vim-airline'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Valloric/YouCompleteMe'
Plugin 'KabbAmine/vCoolor.vim' " color picker for vim 
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'jupyter-vim/jupyter-vim'
Plugin 'ap/vim-buftabline'

Plugin 'masukomi/vim-markdown-folding'
Plugin 'tpope/vim-fugitive'

" Plugin 'chrisbra/vim-commentary'
" Plugin 'scrooloose/nerdcommenter'

" SETTING COLORSCHEME

" testing colorschemes
" colorscheme 256_noir
" colorscheme afterglow

" " jellybeans theme
" colorscheme jellybeans

colorscheme gruvbox
set background=dark

" Monokai
" colorscheme Monokai

" lucius theme (select one from below)
" colorscheme lucius
" LuciusDark (dark default)
" LuciusDark
" LuciusDarkHighContrast
" LuciusDarkLowContrast
" LuciusBlack
" LuciusBlackHighContrast
" LuciusBlackLowContrast
" LuciusLight (light default)
" LuciusLight
" LuciusLightLowContrast
" LuciusWhite
" LuciusWhiteLowContrast

" LuciusBlackLowContrast

" hybrid theme
" colorscheme hybrid

" " pathogen.vim
" execute pathogen#infect()

" indentLine (display vertical lines)
" set list lcs=tab:\|\

" commentary additional settings

autocmd FileType python setlocal commentstring=#\ %s  " python
autocmd FileType python setlocal ts=4 sts=4 et sw=4  " python
autocmd FileType vim setlocal commentstring=\"\ %s    " vim
autocmd FileType matlab setlocal commentstring=\%\ %s " matlab
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " getting rid of autocommenting next line

" FZF ctrl-p remap 
map <C-p> :Files <CR>
" Azore fix
" let g:fzf_layout = {'left': '50%'}
" let g:fzf_layout = {'window': 'split enew'}

" " NerdTree
" map <C-m> :NERDTreeToggle<CR>
"   " start NerdTree if no files specified
" autocmd StdinReadPre * let s:std_in=1
"   " close vim if NerdTree only left open
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"   " no fancy arrows
" let g:NERDTreeDirArrows=0

" " ctrlp fuzzy file search
"   " remapping hot key
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"   \ 'file': '\v\.(exe|so|dll|nc|mat|png|jpeg|jpg|pyc)$',
"   \ 'link': 'some_bad_symbolic_links',
"   \ }
"
"   " start at current directory
" let g:ctrlp_working_path_mode = 'ra'
"
"   " ignore files
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
" set wildignore+=*.mat,*.nc,*.nc4,*.hdf,*.he5,*.pyc  " Data files

" " Code Folding
" " Enable folding
set foldmethod=manual
" set foldlevel=99
"
" Enable folding with the spacebar
nnoremap <space> za

map <F5> <Esc>:w<CR>:!clear;./%<CR>

" let g:ycm_key_list_select_completion=[]
" let g:ycm_key_list_previous_completion=[]

" " VimCompletesMe
" autocmd FileType vim let b:vcm_tab_complete = 'vim'

" STANDARD SETTINGS FOR VIM

set laststatus=2 "Always display the statusline in all windows
set noshowmode " Hide the default mode text
" set cursorline " show cursor line

  " set cursorline to highlight
" hi CursorLine term=bold cterm=underline 
" hi CursorLine term=bold cterm=bold guibg=Grey93
" hi CursorLine term=bold cterm=bold guibg=Grey40

hi CursorLine ctermbg=darkgrey cterm=none
set mouse=a " allow mouse usage
set tabstop=4 " set tab spacing as 2
set shiftwidth=4 " >> | << moves by 2 spaces
set autoindent " auto indents the next line
set expandtab " expands tab to spaces
set showmatch " shows matching brackets/quotes
set completeopt=longest,menuone " no idea what this ist
set rnu " setting relative numbers
set nu " setting the absolute number as well
set encoding=utf-8 " set encoding in vimrc
syntax on " setting syntax
set nohlsearch " highlighting all the search values

set clipboard=unnamed

set backupdir=~/.vim/tmp//,.
set directory=~/.vim/tmp//,.

set backup
set swapfile
set undofile

set backupdir=.backup//,~/.backup//,/tmp//
set undodir=.undo//,~/.undo//,/tmp//


" Saving Folds
augroup AutoSaveFolds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent loadview
augroup END

let mapleader=','
" Jupyter stuff to connect
nnoremap <buffer> <silent> <leader>c :JupyterConnect<CR>
nnoremap <buffer> <silent> <leader>R :JupyterRunFile<CR>
nnoremap <buffer> <silent> <leader>r :JupyterSendCell<CR>
nnoremap <buffer> <silent> <leader>d :JupyterCd %:p:h<CR>
nnoremap <buffer> <silent> <leader>g :JupyterSendRange<CR>
" nnoremap <buffer> <silent> <localleader>g :JupyterSendRange<CR>

" " my custom fold operation
" nnoremap <buffer> <silent> <localleader><space><CR>

" nnoremap \z :setlocal foldmethod=expr foldexpr=getline(v:lnum)=='##'?'>1':getline(v:lnum)=='##'<1':'='
" nnoremap \z :setlocal foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\\|\\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr foldlevel=0 foldcolumn=2<CR>

map <leader>z /##<CR>V?##<CR>zf<CR>

" " forcing view to start up on no virtual env
" " Always use the same virtualenv for vim, regardless of what Python
" " environment is loaded in the shell from which vim is launched
" let g:vim_virtualenv_path = '/mnt/home/jj/vim_env/'
" if exists('g:vim_virtualenv_path')
"     pythonx import os; import vim
"     pythonx activate_this = os.path.join(vim.eval('g:vim_virtualenv_path'), 'bin/activate_this.py')
"     pythonx with open(activate_this) as f: exec(f.read(), {'__file__': activate_this})
" endif

" Buftabline
set hidden
nnoremap <C-H> :bnext<CR>
nnoremap <C-L> :bprev<CR>
