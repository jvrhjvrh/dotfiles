source $HOME/.config/nvim/plugins/plugins.vim

:set number relativenumber
:set nocompatible
:set background=dark
:set smartcase
:set ignorecase
:set noswapfile
:set nobackup
:set undodir=~/.vim/undodir
:set undofile
:set incsearch

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

:set expandtab
:set shiftwidth=2
:set tabstop =2 
:set formatoptions-=c
:set formatoptions-=r
:set formatoptions-=o
:set nowrap
:retab

:let g:airline_powerline_fonts=1
let g:gruvbox_guisp_fallback = 'bg'

autocmd vimenter * colorscheme gruvbox

:let mapleader = ' '
nnoremap <silent> <C-F> :Files <CR>

" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

"autocomplete confirm enter
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "<CR>"

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

"Remove netrw banner
let g:netrw_banner=0 

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'        , 'Comment' ]
let g:which_key_map['e'] = [ ':CocCommand explorer'             , 'Explorer' ]
let g:which_key_map['f'] = [ ':Files'                           , 'Search files' ]
let g:which_key_map['F'] = [ ':Rg'                              , 'Search words' ]
let g:which_key_map['h'] = [ '<C-W>s'                           , 'Split below']
let g:which_key_map['v'] = [ '<C-W>v'                           , 'Split right']
let g:which_key_map['d'] = [ ':call ReactGotoDef()'             , 'Go to definition']
let g:which_key_map['w'] = [ ':w'                               , 'Write']
let g:which_key_map['W'] = [ ':Rg'                              , 'Search word']
let g:which_key_map['='] = [ '<C-W>='                           , 'Balance windows']
let g:which_key_map['r'] = [ ':set hlsearch! hlsearch?'         , 'Toggle highlight']
let g:which_key_map['q'] = [ ':wq'                              , 'Save and quit']


let g:which_key_map.g = {
      \ 'name': '+git',
      \ 'p': [':Gpush', 'Push'],
      \ 'P': [':Gpull', 'Pull'],
      \ 's': [':G', 'Status'],
      \ 'l': [':diffget //3', 'Get right'],
      \ 'h': ['diffget //2', 'Get left'],
      \ 'c': [':Gcommit', 'Commit'],
      \ 'd': [':Gdiffsplit', 'Diff split'],
      \ }

let g:which_key_map.l = {
      \ 'name': '+lsp',
      \ '.': [':CocConfig' , 'Config'],
      \ 'a': ['<Plug>(coc-codeaction)' , 'Line action'],
      \ 'd': ['<Plug>(coc-definition)' , 'Go to definition'],
      \ 'r': ['<Plug>(coc-references)' , 'Reference'],
      \ '[': ['<Plug>(coc-diagnostic-prev)', 'Previous error'],
      \ ']': ['<Plug>(coc-diagnostic-next)', 'Next error'],
      \ 'R': ['<Plug>(coc-rename)', 'Rename'],
      \}
call which_key#register('<Space>', "g:which_key_map")
