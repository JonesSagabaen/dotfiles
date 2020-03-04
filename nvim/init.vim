call plug#begin()
" Theming
Plug 'phanviet/vim-monokai-pro'
Plug 'itchyny/lightline.vim'
" Additional functionality
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
call plug#end()

" Show row number
set number
" Set color theme
set termguicolors
colorscheme monokai_pro
" Disable redundant mode display
set noshowmode

" Enable system clipboard
set clipboard+=unnamedplus

" Set leader key 
let g:mapleader = ' '

" Case insensitivity search by default
set ignorecase
set smartcase
set inccommand=nosplit

" Exit insert mode
inoremap jj <Esc>

" Hotkey to open NERDTree
map <C-n> :NERDTreeToggle<CR>
" NERDTree configuration
let NERDTreeShowHidden=1

" Lightline configuration
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" Hotkey to goto method definition
nmap gd <Plug>(coc-definition)
nmap gi <Plug>(coc-implementation)

" Hotkey for FZF inside NeoVim
nnoremap <C-p> :FZF<CR>

" Show documentation in preview window
nnoremap K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

