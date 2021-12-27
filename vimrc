" | set nocompatible              " be iMproved | required |
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
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'valloric/youcompleteme'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat' " enable repeating supported plugin maps with
Plugin 'tpope/vim-abolish' " easily search for, substitute, and abbreviate multiple variants of a word
Plugin 'tpope/vim-ragtag' " ghetto HTML/XML mappings
Plugin 'tpope/vim-unimpaired' " pairs of handy bracket mappings
Plugin 'tpope/vim-surround' " quoting/parenthesizing made simple
Plugin 'tpope/vim-vinegar' " combine with netrw to create a delicious salad dressing
Plugin 'tpope/vim-rsi' " Readline style insertion
Plugin 'tpope/vim-eunuch' " helpers for UNIX
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-flagship'
Plugin 'airblade/vim-gitgutter'

Plugin 'junegunn/fzf.vim'

Plugin 'wikitopian/hardmode'
Plugin 'mattn/emmet-vim'
Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'jiangmiao/auto-pairs' " The missing motion for Vim
Plugin 'godlygeek/tabular' " Vim script for text filtering and alignment
Plugin 'dhruvasagar/vim-table-mode' " VIM Table Mode for instant table creation.
Plugin 'easymotion/vim-easymotion' " Vim motions on speed!
Plugin 'andymass/vim-matchup' " even better % navigate and highlight matching words
Plugin 'altercation/vim-colors-solarized'
Plugin 'atelierbram/Base2Tone-vim'
Plugin 'wincent/terminus'
Plugin 'sheerun/vim-polyglot'
Plugin 'ervandew/supertab'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" https://github.com/camspiers/lens.vim

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" To ignore plugin indent changes, instead use:
"filetype plugin on

set nu
set mouse=a
set clipboard=unnamed
set clipboard+=autoselect
set cindent
set smartindent
set relativenumber " turn on relative line number

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nmap <leader>D <plug>(YCMHover)

let g:ycm_auto_trigger = 1
let g:UltiSnipsExpandTrigger="<c-p>"
let g:ycm_global_ycm_extra_conf='/Users/garryling/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
