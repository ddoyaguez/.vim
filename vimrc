" Tecla Leader a barra espaciadora
let mapleader = " "

" Que quede más histórico de comandos
set history=1000

" Mejorar el color de fondo del terminal
let &t_ut=''

" No hacer backup de ficheros
set nobackup
set nowritebackup
set noswapfile

" Indentado
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

" Codificación
set encoding=utf-8

" Margen al hacer scroll
set scrolloff=8

" Numeros de linea relativos
set number relativenumber
set nu rnu

" Señalar paréntesis de cierre
set showmatch
set wildmenu
set nohlsearch

"Vim-Plug plugins
call plug#begin()

Plug 'sainnhe/sonokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-fuzzbox/fuzzbox.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --java-completer' }
Plug 'preservim/nerdtree'
Plug 'tmsvg/pear-tree'
Plug 'preservim/tagbar'

call plug#end()

if has('termguicolors')
    set termguicolors
endif

"Colores

let g:sonokai_style='andromeda'
let g:sonokai_better_performance=1

colorscheme sonokai

" Mapeado del FuzzySearch (FuzzBox)
nnoremap <silent> <leader>fb :FuzzyBuffers<CR>
nnoremap <silent> <leader>fc :FuzzyCommands<CR>
nnoremap <silent> <leader>ff :FuzzyFiles<CR>
nnoremap <silent> <leader>fg :FuzzyGrep<CR>
nnoremap <silent> <leader>fh :FuzzyHelp<CR>
nnoremap <silent> <leader>fi :FuzzyInBuffer<CR>
nnoremap <silent> <leader>fm :FuzzyMru<CR>
nnoremap <silent> <leader>fp :FuzzyPrevious<CR>
nnoremap <silent> <leader>fq :FuzzyQuickfix<CR>
nnoremap <silent> <leader>fr :FuzzyMruCwd<CR>

let g:fuzzbox_mappings = 1

" Mapeado de NerdTree
nnoremap <silent> <leader>nt :NERDTree<CR>

" Mostrar la hora en la barra de estado
" set statusline+=%{strftime('%H:%M')}
let g:airline_section_y = '%{strftime("%H:%M")}'

" Recargar el plugin actual
nnoremap <leader>r :source %<CR>

" Mostrar la tagbar
nnoremap <leader>t :TagbarToggle<CR>
