:syntax enable




:set wrap
:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set showcmd
:set history=50
:set ruler
:set filetype


" setting python provider (set as python2 if you use python2)
let g:python3_host_prog = 'C:\Users\User\AppData\Local\Programs\Python\Python39'

" for pythonx
	"if has('python')
	  "set pyx=2
	"elseif has('python3')
	  "set pyx=3
	"endif


call plug#begin()
Plug 'hrsh7th/nvim-cmp' " For LSP completion
Plug 'hrsh7th/vim-vsnip' " For snippets
Plug 'https://github.com/neovim/nvim-lspconfig' " Intellisense
Plug 'https://github.com/davidhalter/jedi-vim' " Python autocompletion
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/sheerun/vim-polyglot' " Better Syntax Support
Plug 'https://github.com/scrooloose/NERDTree' " File Explorer
Plug 'https://github.com/jiangmiao/auto-pairs' " Auto pairs for '(' '[' '{'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " Update the parsers on update (DONT FORGET TO INSTALL LANGUAGE PARSERS THEN 'TSUpdate all' to update all parsers)
Plug 'nvim-treesitter/nvim-treesitter-textobjects'


set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"




" READ ME -----------------------------------------
"
" There's so many other things you'll need to intsall, but I dont remember what
" you'll have to intsall just fix the issues as the come assuming you'll have
" them!
"
" Also just read the githubs of these plugins if you have problems.
"
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE
"------------------------------------------------------------------------




" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
