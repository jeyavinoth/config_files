" powerline settings 
set rtp+=/home/jj/.local/lib/python3.4/site-packages/powerline/bindings/vim

" These lines setup the evn to show graphics and colors
set nocompatible
set t_Co=256

let g:minBufExplForceSyntaxEnable = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
    augroup END
endif

" edditing standard vim settings
set laststatus=2 "Always display the statusline in all windows
set noshowmode " Hide the default mode text
set cursorline " show cursor line
  " set cursorline to highlight
" hi CursorLine term=bold cterm=bold guibg=Grey40
" hi CursorLine term=bold cterm=bold guibg=Grey40
hi CursorLine ctermbg=darkgrey cterm=none

" setting colorscheme

" jellybeans theme
" colorscheme jellybeans

" lucius theme (select one from below)
" LuciusDark (dark default)
" LuciusDarkHighContrast
" LuciusDarkLowContrast
" LuciusBlack
" LuciusBlackHighContrast
" LuciusBlackLowContrast
" LuciusLight (light default)
" LuciusLightLowContrast
" LuciusWhite
" LuciusWhiteLowContrast

" colorscheme lucius
" LuciusBlackLowContrast

" hybrid theme
colorscheme hybrid

set mouse=a " allow mouse usage
set ts=2 " set tab spacing as 2
set shiftwidth=2 " >> | << moves by 2 spaces
set autoindent " auto indents the next line
set expandtab " expands tab to spaces
set showmatch " shows matching brackets/quotes
set completeopt=longest,menuone " no idea what this ist 
set rnu " setting relative numbers
set nu " setting the absolute number as well

" set encoding in vimrc
set encoding=utf-8

" syntax 
syntax on

" " adding empty line before and after
" nmap <C-j> o<Esc>
" nmap <C-k> O<Esc>

" highlighting all the search values 
set hlsearch

" pathogen.vim
execute pathogen#infect()
filetype plugin indent on

" indentLine (display vertical lines)
" set list lcs=tab:\|\

" commentary 
autocmd FileType python setlocal commentstring=#\ %s  " python
autocmd FileType vim setlocal commentstring=\"\ %s    " vim 
autocmd FileType matlab setlocal commentstring=\%\ %s " matlab

" getting rid of autocommenting next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

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
