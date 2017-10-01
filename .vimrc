set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'https://github.com/vim-airline/vim-airline'
Plugin 'https://github.com/bogado/file-line'
Plugin 'https://github.com/chazy/cscope_maps'
Plugin 'https://github.com/spolu/dwm.vim'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'https://github.com/vim-syntastic/syntastic'
Plugin 'https://github.com/tpope/vim-commentary'
Plugin 'https://github.com/kien/rainbow_parentheses.vim'
Plugin 'dracula/vim'
Plugin 'valloric/YouCompleteMe'
Plugin 'justinmk/vim-syntax-extra'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set exrc
set secure

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set number
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

syntax on
color dracula

filetype plugin indent on

set completeopt=menu,menuone,longest
set switchbuf=useopen,usetab

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_global_ycm_extra_conf = '/home/li/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
" let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tag_files = 1
set completeopt=longest,menu
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:EclimCompletionMethod = 'clang'

set encoding=utf-8

command! -nargs=0 Sw w !sudo tee % > /dev/null
