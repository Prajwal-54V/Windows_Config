call plug#begin()

Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/preservim/tagbar',{'on':'TagbarToggle'}
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/nvimdev/dashboard-nvim'
Plug 'https://github.com/mbbill/undotree'
Plug 'https://github.com/RRethy/base16-nvim'
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview'
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/rstacruz/vim-closer' " For brackets autocompletion
" Auto-completion  For Javascript
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " this is for auto complete, prettier and tslinting
Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {
" these two plugins will add highlighting and indenting to JSX and TSX files.
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'https://github.com/numirias/semshi' "phthon syntax highlighting
Plug 'https://github.com/davidhalter/jedi-vim' "python autocomplete lib

Plug 'https://github.com/junegunn/fzf.vim' " Fuzzy Finder, Needs Silversearcher-ag for :Ag
Plug 'https://github.com/junegunn/fzf'

call plug#end()

"general config

set number
set mouse=a
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set encoding=UTF-8
set termguicolors

:colorscheme base16-black-metal-dark-funeral 

let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']  " list of CoC extensions needed

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews


" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


" airline symbols
let g:airline_theme='onedark'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" Dashboard

let g:dashboard_default_executive ='fzf'

" Semshi Custom Highlightss for python

function MyCustomHighlights()
    hi semshiGlobal      ctermfg=blue guifg=#61afef
	hi semshiImported    ctermfg=red guifg=#d28fd7 cterm=bold gui=bold
	hi semshiBuiltin     ctermfg=yellow guifg=#f5d08b
	hi semshiSelected    ctermfg=white guifg=#dddddd ctermbg=gray guibg=#454c5a
endfunction
autocmd FileType python call MyCustomHighlights()
