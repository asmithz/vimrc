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
set cmdheight=2
set hidden
set shortmess+=c
set cursorline
set background=dark
let &fcs='eob: '
let g:aquarium_style="dark"
let g:airline_theme="base16_aquarium_dark"
set termguicolors
set guifont=Hack
set encoding=UTF-8

call plug#begin('~/.local/share/nvim/site/plugged')

" Colorscheme
Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }

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

" Icons
Plug 'ryanoasis/vim-devicons'

" Auto pair
Plug 'jiangmiao/auto-pairs'

" Surround vim
Plug 'tpope/vim-surround'

call plug#end()

" Colorscheme
colorscheme aquarium

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
noremap <A-j> <C-d>
noremap <A-k> <C-u>

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Move to previous/next
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>

" Re-order to previous/next
nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>

" Goto buffer in position...
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>

" Pin/unpin buffer
nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>

" Close buffer
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>
" Restore buffer
nnoremap <silent>    <A-s-c> <Cmd>BufferRestore<CR>

" Wipeout buffer
"                          :BufferWipeout
" Close commands
"                          :BufferCloseAllButCurrent
"                          :BufferCloseAllButVisible
"                          :BufferCloseAllButPinned
"                          :BufferCloseAllButCurrentOrPinned
"                          :BufferCloseBuffersLeft
"                          :BufferCloseBuffersRight

" Magic buffer-picking mode
nnoremap <silent> <C-p>    <Cmd>BufferPick<CR>
nnoremap <silent> <C-p>    <Cmd>BufferPickDelete<CR>

" Sort automatically by...
nnoremap <silent> <Space>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>

" Map tab switching
" nmap <Leader>1 <Plug>BuffetSwitch(1)
" nmap <Leader>2 <Plug>BuffetSwitch(2)
" nmap <Leader>3 <Plug>BuffetSwitch(3)
" nmap <Leader>4 <Plug>BuffetSwitch(4)
" nmap <Leader>5 <Plug>BuffetSwitch(5)
" nmap <Leader>6 <Plug>BuffetSwitch(6)
" nmap <Leader>7 <Plug>BuffetSwitch(7)
" nmap <Leader>8 <Plug>BuffetSwitch(8)
" nmap <Leader>9 <Plug>BuffetSwitch(9)
" nmap <Leader>0 <Plug>BuffetSwitch(10)
" noremap <Tab> :bn<CR>
" noremap <S-Tab> :bp<CR>
" noremap <Leader><Tab> :Bw<CR>
" noremap <Leader><S-Tab> :Bw!<CR>
" noremap <C-t> :tabnew newTab<CR>
