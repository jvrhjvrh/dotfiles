"specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'beyondmarc/glsl.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'gregsexton/MatchTag'
Plug 'Ivo-Donchev/vim-react-goto-definition'

" Initialize plugin system
call plug#end()

nnoremap <silent> <C-F> :FZF<CR>
nnoremap <silent> <space> :set hlsearch! hlsearch?<CR>

:set number relativenumber
:set nocompatible
:set background=dark

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

:set expandtab
:set shiftwidth=2
:set tabstop =2 
:retab

:let g:airline_powerline_fonts=1
let g:gruvbox_guisp_fallback = 'bg'

autocmd vimenter * colorscheme gruvbox

:let mapleader = ' '
nmap <leader>gs :G<CR>
nmap <leader>gl :diffget //3<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gp :Gpush<CR>
nmap <leader>gP :Gpull<CR>
noremap <leader>d :call ReactGotoDef()<CR>
imap <C-l> <Esc>
