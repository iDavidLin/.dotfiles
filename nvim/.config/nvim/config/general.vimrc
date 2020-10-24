" Show line numbers
set number

" Always show statusline
set laststatus=2

" Case-insensitive search
set ignorecase

" Highlight search results
set hlsearch

" set history
set history=200

" set the split style
set splitbelow
set splitright

set noshowmode


" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Enable syntax highlighting
syntax on

" execute pathogen#infect()

" Nerdtree Settings
" autocmd VimEnter * NERDTree | wincmd p
" map <C-n> :NERDTreeToggle<CR>

" cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" " optional reset cursor on start:
" augroup myCmds
" au!
" autocmd VimEnter * silent !echo -ne "\e[2 q"
" augroup END


" theme
syntax enable
colorscheme dracula

" nnoremap <A-j> :m .+1<CR>==
" nnoremap <A-k> :m .-2<CR>==
" inoremap <A-j> <Esc>:m .+1<CR>==gi
" inoremap <A-k> <Esc>:m .-2<CR>==gi
" vnoremap <A-j> :m '>+1<CR>gv=gv
" vnoremap <A-k> :m '<-2<CR>gv=gv

" inoremap <C-n> <esc>f"a

set backspace=indent,eol,start


let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" vim-css-color
let g:cssColorVimDoNotMessMyUpdatetime = 1

" ingore files
if exists("g:ctrl_user_command")
    unlet g:ctrlp_user_command
endif

