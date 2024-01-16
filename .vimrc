" indenting
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

" searching
set scrolloff=8
set sidescrolloff=8
set incsearch
set ignorecase
set smartcase
set hlsearch
set nowrapscan

" syntax highlighting
syntax enable

" colorscheme
colorscheme catppuccin_mocha

" misc
set confirm
set wildchar=<Tab>

" appearance
set fillchars=eob:\ ,vert:│,stl:─,stlnc:─
set laststatus=0

" disable pi_paren
let loaded_matchparen = 1

" disable swap files
set noswapfile

" enable undo history
set undofile
set undodir=~/.vim/undodir

" ----------------------------------------
" utilities
" ----------------------------------------

function! ToggleTerminal()
  if exists("g:terminal_buffer_id") && bufexists(g:terminal_buffer_id)
    if bufwinnr(g:terminal_buffer_id) != -1
      exec bufwinnr(g:terminal_buffer_id) . "wincmd w"
      exec "hide"
    else
      exec "bo term ++rows=15"
    endif
  else
    exec "bo term ++rows=15"
    let g:terminal_buffer_id = bufnr('%')
  endif
endfunction

" ----------------------------------------
" keymaps
" ----------------------------------------

" leader
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" nohighlight
nnoremap <Esc><Esc> :noh<CR>

" exit terminal mode
tnoremap <C-x> <C-\><C-n>

" buffer
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Leader>b :ene<CR>

" netrw
nnoremap <C-n> :Lexplore<CR>
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 20

" toggle terminal
nnoremap <M-h> :call ToggleTerminal()<CR>
nnoremap <A-h> :call ToggleTerminal()<CR>


let &t_SI = ""
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

