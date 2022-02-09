syntax enable
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set background=dark
set cmdheight=2
set hidden
set shortmess+=c
set cursorline
set background=dark
let &fcs='eob: '

call plug#begin('~/.vim/plugged')

" Themes
Plug 'sainnhe/everforest'

" Show Hex Colors
Plug 'chrisbra/Colorizer'

" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" EasyMotion
Plug 'easymotion/vim-easymotion'

" NerdTree
Plug 'scrooloose/nerdtree'

" Tmux Navigator
Plug 'christoomey/vim-tmux-navigator'

" Vim-Surround
Plug 'tpope/vim-surround'

" Syntax Highlighting
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" Supertab 
Plug 'ervandew/supertab'

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Auto pair
Plug 'jiangmiao/auto-pairs'

" Surround vim
Plug 'tpope/vim-surround'

" Vim-Buffet
Plug 'bagrat/vim-buffet'

call plug#end()

" Colorscheme
colorscheme everforest

" Close tag
let g:vim_jsx_pretty_highlight_close_tag = 1

" Close preview window"
augroup deopleteCompleteDoneAu
    autocmd!
      autocmd CompleteDone * silent! pclose!
    augroup END

" Invert navegation suggestion"
let g:SuperTabDefaultCompletionType = '<c-n>'

hi Normal guibg=NONE ctermbg=NONE

" Mapping
let mapleader=" "

nmap <Leader>d <Plug>(easymotion-s2)
nnoremap <Leader>nt :NERDTreeFind<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

nnoremap <c-w> $
nnoremap <c-e> 0
nnoremap e b
nnoremap <c-k> <c-d>
nnoremap <c-j> <c-u>

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Map tab switching
nmap <Leader>1 <Plug>BuffetSwitch(1)
nmap <Leader>2 <Plug>BuffetSwitch(2)
nmap <Leader>3 <Plug>BuffetSwitch(3)
nmap <Leader>4 <Plug>BuffetSwitch(4)
nmap <Leader>5 <Plug>BuffetSwitch(5)
nmap <Leader>6 <Plug>BuffetSwitch(6)
nmap <Leader>7 <Plug>BuffetSwitch(7)
nmap <Leader>8 <Plug>BuffetSwitch(8)
nmap <Leader>9 <Plug>BuffetSwitch(9)
nmap <Leader>0 <Plug>BuffetSwitch(10)
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <Leader><Tab> :Bw<CR>
noremap <Leader><S-Tab> :Bw!<CR>
noremap <C-t> :tabnew newTab<CR>
