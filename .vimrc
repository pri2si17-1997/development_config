""""""""""""""""""""""""""""""""""""
" ==> Configure Vim
"
""""""""""""""""""""""""""""""""""""
set number
set ruler
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set hlsearch
set autoindent
set encoding=UTF-8
set guifont=DroidSansMono\ Nerd\ Font\ 11
set nobackup
set nowb
set noswapfile
set updatetime=300
set hidden
set winheight=5
set winminheight=5
autocmd WinEnter * wincmd _
syntax on
set hidden

""""""""""""""""""""""""""""""""""""""
" ==> Map Keys

nnoremap <C-N> :bnext<CR> "Ctrl + N for next buffer.
nnoremap <C-P> :bprev<CR> "Ctrl + B for Previous buffer.

""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""
" ==>  Plugin Manager
"
""""""""""""""""""""""""""""""""""""""

call plug#begin()
Plug 'preservim/NERDTree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-syntastic/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'puremourning/vimspector'
Plug 'airblade/vim-gitgutter'
Plug 'joshdick/onedark.vim'
Plug 'ap/vim-buftabline'
call plug#end()

"""""""""""""""""""""""""""""""""""""""
" ==> Plugin Related Settings
"
"""""""""""""""""""""""""""""
" #1  Nerd Tree
"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"
""""""""""""""""""""""""""""""
" #2 nerdtree-git-plugin
"
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusUseNerdFonts = 1

""""""""""""""""""""""""""""""""
" #3 coc.nvim
"
nnoremap <silent> <C-d> :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""
" #4 one dark
"
colorscheme onedark
""""""""""""""""""""""""""""""""
