" VIMRC - for Jeyavinoth Jeyavinoth

" These lines setup the evn to show graphics and colors
set nocompatible
filetype off
set t_Co=256

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
  setlocal noexpandtab
  setlocal wrap
  setlocal linebreak
  " spelling and thesaurus
  setlocal spell spelllang=en_us
  set thesaurus+=/nas/users/jeyaratn/.vim/thesaurus/mthesaur.txt
  " complete+=s makes autocompletion search the thesaurus
  set complete+=s
  colorscheme hybrid-light
  " colorscheme solarized8_high
  " colorscheme Lucius
  " LuciusWhite
endfu
com! PW call WordProcessor()

" VUNLDE PACKAGES TO BE INSTALLED
Plugin 'chrisbra/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'jiangmiao/auto-pairs'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'shougo/deoplete.nvim'
Plugin 'vim-airline/vim-airline'

" STANDARD SETTINGS FOR VIM
set laststatus=2 "Always display the statusline in all windows
set noshowmode " Hide the default mode text
set cursorline " show cursor line
  " set cursorline to highlight
" hi CursorLine term=bold cterm=bold guibg=Grey40
" hi CursorLine term=bold cterm=bold guibg=Grey40
hi CursorLine ctermbg=darkgrey cterm=none
set mouse=a " allow mouse usage
set ts=2 " set tab spacing as 2
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
" filetype plugin indent on

" indentLine (display vertical lines)
" set list lcs=tab:\|\

" commentary additional settings
autocmd FileType python setlocal commentstring=#\ %s  " python
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

  " start at current directory
let g:ctrlp_working_path_mode = 'ra'

  " ignore files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

" Code Folding
" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

map <F5> <Esc>:w<CR>:!clear;python %<CR>

" let g:ycm_key_list_select_completion=[]
" let g:ycm_key_list_previous_completion=[]

