" VIMRC - for Jeyavinoth Jeyavinoth

" These lines setup the evn to show graphics and colors
set nocompatible
filetype off
set t_Co=256

filetype plugin on
filetype plugin indent on

" setting up vundle install
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Call a word prcoessor version of VIM if needed by type :PW
func! WordProcessor()
" movement changes
map j gj
map k gk
" formatting text
setlocal formatoptions=1
" setlocal noexpandtab
setlocal wrap
setlocal linebreak
" spelling and thesaurus
setlocal spell spelllang=en_us
set thesaurus+=/nas/users/jeyaratn/.vim/thesaurus/mthesaur.txt
" complete+=s makes autocompletion search the thesaurus
set complete+=s
set tw=79
set fo?
set fo+=t
set fo-=l
colorscheme hybrid-light
" colorscheme solarized8_high
" colorscheme Lucius
" LuciusWhite
endfu
com! PW call WordProcessor()

" VUNLDE PACKAGES TO BE INSTALLED
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'jiangmiao/auto-pairs'
Plugin 'shougo/deoplete.nvim'
Plugin 'vim-airline/vim-airline'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Valloric/YouCompleteMe'

" Plugin 'ajh17/VimCompletesMe'

" Plugin 'ajh17/VimCompletesMe'
" Plugin 'chrisbra/vim-commentary'
" Plugin 'scrooloose/nerdcommenter'

" SETTING COLORSCHEME

" testing colorschemes
" colorscheme 256_noir
" colorscheme afterglow

" jellybeans theme
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
autocmd FileType python setlocal ts=2 sts=2 et sw=2  " python
autocmd FileType vim setlocal commentstring=\"\ %s    " vim
autocmd FileType matlab setlocal commentstring=\%\ %s " matlab
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " getting rid of autocommenting next line

" NerdTree
map <C-n> :NERDTreeToggle<CR>
  " start NerdTree if no files specified
autocmd StdinReadPre * let s:std_in=1
  " close vim if NerdTree only left open
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  " no fancy arrows
let g:NERDTreeDirArrows=0

" ctrlp fuzzy file search
  " remapping hot key
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|nc|mat|png|jpeg|jpg|pyc)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

  " start at current directory
let g:ctrlp_working_path_mode = 'ra'

  " ignore files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set wildignore+=*.mat,*.nc,*.nc4,*.hdf,*.he5,*.pyc  " Data files

" Code Folding
" Enable folding
set foldmethod=indent
set foldlevel=99

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
set tabstop=2 " set tab spacing as 2
set shiftwidth=2 " >> | << moves by 2 spaces
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
