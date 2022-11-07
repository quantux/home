syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
set tabstop=4
highlight Comment ctermfg=green

call plug#begin()
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'ryanoasis/vim-devicons'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'joshdick/onedark.vim'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'LunarWatcher/auto-pairs'
    Plug 'maxboisvert/vim-simple-complete'
    Plug 'tpope/vim-fugitive'
    Plug 'matze/vim-move'
    Plug 'vim-airline/vim-airline'
    Plug 'jschmold/sweet-dark.vim'
call plug#end()

set encoding=UTF-8

"nerdtree
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore = []
let NERDTreeStatusline = ''

"nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

"nerdtree toggle shortcut
nnoremap <C-b> :NERDTreeToggle<CR>

"fuzzy finder shortcut
nnoremap <C-p> :Files<CR>

" Set theme
colorscheme onedark

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

