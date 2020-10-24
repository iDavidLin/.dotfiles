" filetype off                  " required

" set packpath^=~/.vim

" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath

if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
  highlight! link TermCursor Cursor
  highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
endif

" Remove 'set hidden'
set nohidden
" set rtp+=/usr/local/opt/fzf
set rtp+=~/.fzf

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-projectionist'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sbdchd/neoformat'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'


" For Vimscript
Plug 'tpope/vim-scriptease'
Plug 'tweekmonster/helpful.vim'
Plug 'nelstrom/vim-docopen'

" Markdown
Plug 'tpope/vim-markdown'
Plug 'nelstrom/vim-markdown-folding'
Plug 'junegunn/vim-emoji'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'mxw/vim-jsx'
Plug 'ternjs/tern_for_vim', {'do': 'npm install'}
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" CSS
Plug 'skammer/vim-css-color'

" Colorschemes
Plug 'dracula/vim', { 'name': 'dracula' }

" highlight words
Plug 'lfv89/vim-interestingwords'

" Git
Plug 'tpope/vim-fugitive'


Plug 'machakann/vim-highlightedyank'
Plug 'kassio/neoterm'
Plug 'Shougo/neomru.vim'

Plug 'majutsushi/tagbar'
Plug 'easymotion/vim-easymotion'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

let g:deoplete#enable_at_startup = 1

" Initialize plugin system
call plug#end()


