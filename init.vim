" Dein
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')
    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  "call dein#add('Shougo/deoplete.nvim')
    call dein#add('roxma/nvim-yarp')
  " NerdTree
    call dein#add('scrooloose/nerdtree')
    call dein#add('junegunn/fzf.vim')
    call dein#add('wsdjeg/dein-ui.vim')
    call dein#add('itchyny/lightline.vim') 
    call dein#add('pboettch/vim-cmake-syntax')
"  call dein#add('zchee/deoplete-jedi')
 " call dein#save_state()
    call dein#add('davidhalter/jedi-vim') "davidhalter/jedi-vim
    call dein#add('tpope/vim-commentary') 
    call dein#add('ncm2/ncm2')
    call dein#add('ncm2/ncm2-jedi')
    call dein#add('ncm2/ncm2-path')
    call dein#add('ncm2/ncm2-bufword')

endif

filetype plugin indent on
syntax enable

if dein#check_install()
    call dein#install()
endif

"""""""""""""""""""""""""

" map buffer switching command
map <leader>n :bn<cr>
map <leader>p :bp<cr>
map <leader>d :bd<cr>

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set textwidth=80

" Map the leader key to SPACE
let mapleader="\<SPACE>"

set showmatch           " Show matching brackets.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.

set nojoinspaces        " Prevents inserting two spaces after punctuation on a
                        " join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
    set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
    set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set nostartofline       " Do not jump to first character with page commands.

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>

"highlight text > 80 colums
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Use ; for commands.
nnoremap ; :
" Use Q to execute default register.
nnoremap Q @q

"---- Plugin configuration
"NCM2
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

