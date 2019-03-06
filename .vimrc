set nocompatible " be iMproved, required

" vim-plug --------------------------------------------------------------------
call plug#begin()
"" tools
Plug 'Shougo/vimproc.vim', {'do': 'make'} " async execution
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'                  " tab for completion
Plug 'junegunn/vim-easy-align'            " alignmnent
Plug 'mhinz/vim-startify'                 " start screen
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'                 " git
Plug 'vim-airline/vim-airline'            " status bar
Plug 'vim-airline/vim-airline-themes'

"" langs
Plug 'scrooloose/syntastic' " syntax checker
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

" general settings ------------------------------------------------------------
set clipboard=unnamedplus " allows accessing the system clipboard
set colorcolumn=80        " shows margin
set encoding=utf-8
set expandtab             " replaces tab with space
set formatoptions+=w      " linebreak
set hidden                " hides buffers instead of closing them
set nowrap                " prevents line wrapping
set number                " shows line number
set shiftwidth=2          " indentspace = 2
set tabstop=2             " tabspace = 2
set tw=80                 " at 80
" set guioptions-=T       " removes toolbar
" set guioptions-=m       " removes menu bar
" set guioptions-=r       " removes right-hand scroll bar
" set guioptions-=L       " removes left scroll bar

" supertab --------------------------------------------------------------------
let g:SuperTabDefaultCompletionType = "context"

" vim-easy-align --------------------------------------------------------------
xmap ga <Plug>(EasyAlign)| " Start interactive EasyAlign in visual mode (e.g. vipga)
nmap ga <Plug>(EasyAlign)| " Start interactive EasyAlign for a motion/text object (e.g. gaip)

" vim-airline -----------------------------------------------------------------
let g:airline_theme='simple'
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

" syntastic -------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:godef_split = 0
let g:go_fmt_fail_silently = 1
let g:go_list_type = 'quickfix'
let g:syntastic_go_checkers = ['golint', 'govet', 'gometalinter', 'gofmt']
let g:syntastic_go_gometalinter_args = ['--disable-all', '--enable=errcheck']
