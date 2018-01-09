set nocompatible

"Pathogen win package manager
execute pathogen#infect()

set directory^=$HOME/.vim/tmp//
filetype on
syntax on
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
colorscheme solarized

set lines=50 columns=88
autocmd VimLeave * :call OnVimLeaveTrigger()
function OnVimLeaveTrigger()
  !printf '\e[8;26;88t\033c'
endfunction
set colorcolumn=80
set number
set clipboard=unnamed
set showmatch
let mapleader=" "
cmap w!! %!sudo tee > /dev/null %
map <leader>s :source ~/.vimrc<CR>
map <leader>e :e ++enc=cp1250<CR>
"more info in the memory
set hidden
set history=100

"indenting
filetype indent on
"set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

autocmd FileType html,javascript,jsx setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=4 tabstop=4
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

"remove whitepaces on save
autocmd BufWritePre * :%s/\s\+$//e

"plugin Lightline fix
set laststatus=2

"plugin CommandT ignore files
set wildignore+=*.cache,*.swp,node_modules
"set hlsearch

"plugin NerdCommenter
filetype plugin on

"plugin VimJsx
let g:jsx_ext_required=0 " Allow JSX in normal JS files
let g:javascript_plugin_flow=1

"remap to arrow keys
"map <D-A-RIGHT> <C-w>l
"map <D-A-LEFT> <C-w>h
"map <D-A-DOWN> <C-w><C-w>
"map <D-A-UP> <C-w>W

"move back to previous file
"nnoremap <Leader><Leader> :e<CR>

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

let g:npm_background = 0
let g:npm_custom_commands = []
let g:npm_load_commands = 0