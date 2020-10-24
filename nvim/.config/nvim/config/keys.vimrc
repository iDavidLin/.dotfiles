" navigation splits
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" inoremap <C-n> <esc>f"a

" navigation with ctrl + hjkl
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

" enable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


" Mappings in the style of unimpaired-next
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous_wrap)
nmap <silent> ]w <Plug>(ale_next_wrap)
nmap <silent> ]W <Plug>(ale_last)

" Ctrl-j/k deletes blank line below/above
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
" Leader o/O to insert line below/above
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" Search for the current word
nnoremap <Leader>* :Grepper -cword -noprompt<CR>

" Search for the current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" Open Grepper-prompt for a particular grep-alike tool
nnoremap <Leader>g :Grepper -tool git<CR>
nnoremap <Leader>G :Grepper -tool rg<CR>

let mapleader = "\<Space>"
" Quickly insert an empty new line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" fzf-mappings
let g:fzf_command_prefix = 'FZF'
nnoremap <Leader>f :<C-u>FZF<CR>
nnoremap <Leader>b :FZFBuffers<CR>
nnoremap <Leader>h :FZFHistory<CR>
nnoremap <Leader>t :FZFBTags<CR>

" enable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Nerdtree Settings
" autocmd VimEnter * NERDTree | wincmd p
noremap <Leader>n :NERDTreeToggle<CR>
noremap <Leader>v :NERDTreeFind<CR>

" Tagbar
nmap <Leader>t :TagbarToggle<CR>

" easymotion
" <Leader>f{char} to move to {char}
" map  <Leader>f <Plug>(easymotion-bd-f)
" nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap <Leader>s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
