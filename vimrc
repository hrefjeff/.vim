"-------Key Remap-------
noremap j h
noremap l j
noremap ; l

filetype plugin on

"-----Line numbers----
set nu

"----Delete trailing whitespace----
autocmd BufWritePre * :%s/\s\+$//e

"-----Show file path at bottom of buffer----
set statusline+=%F

"----Set swap/backup folder----
set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

"-------For pasting in and out of VIM-----
set pastetoggle=<F2>

" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on

"---Python indentation----
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set expandtab
    \ set autoindent

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

syntax on

"------Syntastic------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"------Split Navigation-----
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


set splitbelow
set splitright

"------Enable folding-------
set foldmethod=indent
set foldlevel=99

"----Enable folding with the spacebar--------
nnoremap <space> za

" vim-plug
"Plug 'elixir-lang/vim-elixir'
" NeoBundle
"NeoBundle 'elixir-lang/vim-elixir'
" Vundle
"Plugin 'elixir-lang/vim-elixir'
