set nocompatible              " be iMproved, required

" vim-plug --------------------------------------------------------------------
call plug#begin()
"" tools
Plug 'Shougo/vimproc.vim', {'do': 'make'}                " async execution
Plug 'chriskempson/base16-vim'                           " base16 colors
Plug 'ervandew/supertab'                                 " tab for completion
Plug 'junegunn/vim-easy-align'                           " alignmnent
Plug 'mhinz/vim-startify'                                " start screen
Plug 'tpope/vim-fugitive'                                " git
Plug 'bling/vim-airline'                                 " status bar
Plug 'ntpeters/vim-better-whitespace'                    "
"" langs
Plug 'scrooloose/syntastic'                              " syntax checker
Plug 'mattn/emmet-vim'                                   " improves HTML & CSS workflow
Plug 'ap/vim-css-color'                                  " higligths color in css
Plug 'pangloss/vim-javascript'                           " js
Plug 'heavenshell/vim-jsdoc'                             " jsdoc
Plug 'LaTeX-Box-Team/LaTeX-Box'                          " latex
Plug 'plasticboy/vim-markdown'                           " markdowm
Plug 'fsharp/vim-fsharp', {'do': 'make fsautocomplete'}  " fsharp
Plug 'eagletmt/ghcmod-vim'                               " haskell
Plug 'eagletmt/neco-ghc',{'do': 'stack install ghc-mod'} " haskell completion
Plug 'itchyny/vim-haskell-indent'                        " haskell indent
Plug 'elixir-lang/vim-elixir'                            " elixir
Plug 'davidhalter/jedi-vim'                              " python completion
" Plug 'rust-lang/rust.vim'                                " rust
" Plug 'racer-rust/vim-racer'                              " code completion for rust
call plug#end()

" general settings ------------------------------------------------------------
set hidden " hides buffers instead of closing them
set encoding=utf-8
set clipboard=unnamedplus " allows accessing the system clipboard
set guifont=Monospace\ 10 " Fixedsys\ Excelsior\ 3.01-L2\ 12
set guioptions-=T         " removes toolbar
set guioptions-=m         " removes menu bar
set guioptions-=r         " removes right-hand scroll bar
set guioptions-=L         " removes left scroll bar
set number                " shows line number
set colorcolumn=80        " shows margin
set tabstop=2             " tabspace = 2
set shiftwidth=2          " indentspace = 2
set expandtab             " replaces tab with space
set formatoptions+=w      " linebreak
set tw=80                 " at 80
set nowrap

" base16 ----------------------------------------------------------------------
set background=dark
colorscheme base16-ocean

" supertab --------------------------------------------------------------------
let g:SuperTabDefaultCompletionType = "context"

" easy-align ------------------------------------------------------------------
xmap ga <Plug>(EasyAlign)| " Start interactive EasyAlign in visual mode (e.g. vipga)
nmap ga <Plug>(EasyAlign)| " Start interactive EasyAlign for a motion/text object (e.g. gaip)

" airline ---------------------------------------------------------------------
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

" syntastic -------------------------------------------------------------------
set statusline+=%#warningms-g#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" emmet -----------------------------------------------------------------------
let g:user_emmet_install_global = 0 " enabled just for html/css
autocmd FileType html,css EmmetInstall
au BufRead,BufNewFile *.vue set filetype=html

" fsharp ----------------------------------------------------------------------
"let g:fsharp_completion_helptext = 0

" js --------------------------------------------------------------------------
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1
let g:jsdoc_underscore_private=1
let g:jsdoc_enable_es6=1

" rust ------------------------------------------------------------------------
" g:rustfmt_autosave = 1
" let g:racer_cmd = "$HOME/.cargo/bin/racer" " TODO : change loc
" let g:racer_experimental_completer = 1
" let $RUST_SRC_PATH="$HOME/rust/src" " TODO : change loc

" haskell ---------------------------------------------------------------------
nnoremap <leader>t :GhcModType<CR>
nnoremap <leader>T :GhcModTypeClear<CR>
nnoremap <leader>g :GhcModSigCodegen<CR>
let g:necoghc_enable_detailed_browse = 1
" Disable haskell-vim omnifunc
" let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
autocmd BufWritePost *.hs GhcModCheckAndLintAsync
let &l:statusline = '%{empty(getqflist()) ? "[No Errors]" : "[Errors Found]"}' . (empty(&l:statusline) ? &statusline : &l:statusline)

