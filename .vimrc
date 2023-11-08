
" General

set nocompatible
set number
set autoindent               " Copia la sangría de la línea anterior al iniciar una nueva línea
set autoread                 " Lee automáticamente cuando un archivo cambia desde fuera de Vim
set backspace=indent,eol,start " Permite retroceder en modo de inserción
set cursorline               " Resalta la línea actual
set clipboard+=unnamedplus   " Utiliza el portapapeles del sistema
set expandtab                " Convierte las tabulaciones en espacios
set encoding=utf-8           " Utiliza UTF-8
set foldcolumn=0             " Columna para mostrar los pliegues
set foldenable               " Habilita los pliegues
set foldlevel=0              " Cierra todos los pliegues de manera predeterminada
set foldmethod=syntax        " Utiliza la sintaxis para especificar los pliegues
set foldminlines=0           " Permite plegar líneas individuales
set foldnestmax=5            " Establece el nivel máximo de anidamiento de pliegues
set formatoptions=           " Deshabilita el formato automático
set formatoptions+=c         " Formatea los comentarios
set formatoptions+=r         " Continúa los comentarios por defecto
set formatoptions+=o         " Crea un comentario al usar "o" o "O" desde una línea de comentario
set formatoptions+=q         " Formatea los comentarios con "gq"
set formatoptions+=n         " Reconoce listas numeradas
set formatoptions+=2         " Utiliza la sangría a partir de la segunda línea de un párrafo
set formatoptions+=l         " No divide las líneas que ya son largas
set formatoptions+=1         " Divide antes de palabras de una sola letra
set gdefault                 " Agrega la bandera "g" a las búsquedas/reemplazos de manera predeterminada. Agrega "g" para alternar.
set guicursor=               " Deshabilita los cambios de estilo de cursor en Neovim
set hidden                   " Cuando un buffer se trae al primer plano, recuerda el historial de deshacer y las marcas
set history=500              " Aumenta el historial de 20 (valor predeterminado) a 1000
set hlsearch                 " Resalta las búsquedas
set ignorecase               " Ignora la diferencia entre mayúsculas y minúsculas en las búsquedas
set incsearch                " Resalta dinámicamente a medida que se escribe el patrón de búsqueda
set laststatus=2             " Muestra siempre la línea de estado
set lazyredraw               " No redibuja cuando no es necesario
set lispwords+=defroutes     " Compojure
set lispwords+=defpartial,defpage  " Noir core
set lispwords+=defaction,deffilter,defview,defsection  " Ciste core
set lispwords+=describe,it   " Speclj TDD/BDD
set magic                    " Habilita las expresiones regulares extendidas
set mouse=a                  " Habilita el ratón en todos los modos
set noerrorbells             " Deshabilita las señales de error
set nojoinspaces             " Inserta solo un espacio después de un '.', '?' y '!' con un comando de unión
set noshowmode               " No muestra el modo actual (airline.vim se encarga de esto)
set nostartofline            " No reinicia el cursor al inicio de la línea al moverse
set nowrap                   " No ajusta las líneas
set numberwidth=1            " Establece el ancho de la columna de números
set ofu=syntaxcomplete#Complete  " Establece el método de autocompletado omni
set regexpengine=0           " Utiliza el antiguo motor de expresiones regulares (es más rápido para ciertas sintaxis de lenguajes)
set report=0                 " Muestra todos los cambios
set ruler                    " Muestra la posición del cursor
set scrolloff=3              " Comienza a desplazarse tres líneas antes del borde horizontal de la ventana
set shell=/bin/sh            " Utiliza /bin/sh para ejecutar comandos de shell
set tabstop=2                " Número de espacios para la sangría
set shiftwidth=2             " Número de espacios para la sangría
set softtabstop=2            " Número de espacios para la sangría
set shortmess=atI            " No muestra el mensaje de introducción al iniciar Vim
set showtabline=2            " Muestra siempre la barra de pestañas
set sidescrolloff=3          " Comienza a desplazarse tres columnas antes del borde vertical de la ventana
set smartcase                " Ignora 'ignorecase' si el patrón de búsqueda contiene caracteres en mayúscula
set smarttab                 " Al inicio de la línea, <Tab> inserta espacios con la anchura de la sangría, <Bs> elimina espacios con la anchura de la sangría
set showcmd                  " Muestra los comandos que se están escribiendo
set showmatch                " Resalta los paréntesis, llaves y corchetes coincidentes
set splitbelow               " Nuevas ventanas se abren debajo
set splitright               " Nuevas ventanas se abren a la derecha
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dlli " Archivos que se ignoran al usar :argadd
syntax enable                " Habilita la sintaxis
filetype plugin indent on    " Habilita los complementos de sintaxis y sangría
set switchbuf=""             " No cambia de buffer cuando se cierra una ventana
set ruler                    " Muestra la posición del cursor
set relativenumber           " Muestra los números relativos
set ttyfast                  " Envía más caracteres a la vez
set undofile                 " Deshacer persistente
set visualbell               " Utiliza una señal visual en lugar de una señal sonora (molesta)
set wildchar=<TAB>           " Carácter para la expansión en la CLI (completado con TAB)
set wildignore+=.DS_Store    " Ignora los archivos de OS X
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js " Ignora los archivos binarios
set wildignore+=*/bower_components/*,*/node_modules/* " Ignora los directorios de paquetes
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/* " Ignora los directorios de paquetes
set wildmenu                 " Al presionar TAB en modo de comando, muestra las completaciones posibles sobre la línea de comandos
set wildmode=list:longest    " Completar solo hasta el punto de ambigüedad
set winminheight=0           " Permite reducir las divisiones a una sola línea
set wrapscan                 " Las búsquedas envuelven el final del archivo
set t_Co=256                 " Habilita los colores de 256 bits
set textwidth=80             " Establece el ancho de la línea

" Soporte para cursivas
if &term =~ "256color"
  set t_ZH=^[[3m
  set t_ZR=^[[23m
endif


" Plugins usando Plug

call plug#begin('~/.vim/plugged')

" Busqueda de archivos con Telescope
Plug 'nvim-lua/plenary.nvim'                                        " Dependencia para telescope
Plug 'nvim-telescope/telescope.nvim'                                " Búsqueda en archivos
Plug 'nvim-telescope/telescope-fzf-native.nvim'                     " Fzf para telescope
Plug 'nvim-telescope/telescope-media-files.nvim'                    " Archivos multimedia para telescope
Plug 'nvim-telescope/telescope-live-grep-args.nvim'                 " Búsqueda en vivo para telescope

" Autocompletado y Sintaxis
Plug 'mattn/emmet-vim'                                              " Plugin Emmet para Vim
Plug 'sheerun/vim-polyglot'                                         " Colección de paquetes para lenguajes
Plug 'evanleck/vim-svelte'                                          " Soporte para Svelte
Plug 'HerringtonDarkholme/yats.vim'                                 " Sintaxis de TypeScript
Plug 'pangloss/vim-javascript'                                      " Soporte para JavaScript
Plug 'leafgarland/typescript-vim'                                   " Sintaxis de TypeScript
Plug 'maxmellon/vim-jsx-pretty'                                     " Sintaxis de JS y JSX
Plug 'jparise/vim-graphql'                                          " Sintaxis de GraphQL
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }                 " Motor de autocompletado
Plug 'w0rp/ale'                                                     " Linter
Plug 'rhysd/vim-clang-format'                                       " Formateador de código C/C++
Plug 'prisma/vim-prisma'                                            " Sintaxis de Prisma

" Temas
Plug 'daltonmenezes/aura-theme', { 'rtp': 'packages/neovim' }       " Tema Aura

" Mejoras
Plug 'preservim/nerdcommenter'                                      " Comentar líneas
Plug 'github/copilot.vim'                                           " GitHub Copilot para Vim
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}         " Resaltado de sintaxis
Plug 'wakatime/vim-wakatime'                                        " WakaTime para Vim
Plug 'lambdalisue/suda.vim'                                         " Lee y escribe archivos como root
Plug 'christoomey/vim-tmux-navigator'                               " Navegación entre Vim y Tmux
Plug 'itchyny/lightline.vim'                                        " Barra de estado
Plug 'preservim/nerdtree'                                           " Explorador de árbol
Plug 'editorconfig/editorconfig-vim'                                " EditorConfig para Vim
Plug 'ellisonleao/glow.nvim', { 'do': ':GlowInstall' }              " Markdown preview
Plug 'ryanoasis/vim-devicons'                                       " Iconos para NerdTree
Plug 'lukas-reineke/indent-blankline.nvim'                          " Indentación visual
Plug 'norcalli/nvim-colorizer.lua'                                  " Colores de 256 bits
Plug 'yaegassy/coc-tailwindcss3', {'do': 'yarn install --frozen-lockfile'} " TailwindCSS para Coc

" Git
Plug 'tpope/vim-fugitive'                                           " Git para Vim
Plug 'kdheepak/lazygit.nvim'                                        " LazyGit para Vim

call plug#end()


" Tema
colorscheme aura-dark
highlight Comment cterm=italic gui=italic
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
hi Normal guibg=NONE ctermbg=NONE " Establecer el fondo transparente


function! CopilotStatus()
    let status = system('nvim --headless --noplugin -c "silent! Copilot status" -c "q"')
    return status
endfunction

" LightLine
let g:lightline = {
      \ 'colorscheme':'aura',
      \ 'background':'dark',
      \ 'separator': { 'left': '', 'right': '' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent', 'cocstatus', 'copilotstatus'  ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \   'cocstatus': 'coc#status',
      \   'copilotstatus':'CopilotStatus'
      \ },
      \ 'tab_component_function': {
      \   'tabnum': 'LightlineWebDevIcons',
      \ },
      \ 'mode_map': {
        \ 'n' : 'Normal',
        \ 'i' : 'Insert',
        \ 'R' : 'Replace',
        \ 'v' : 'Visual',
        \ 'V' : 'V·Line',
        \ "\<C-v>": 'V·Block',
        \ 'c' : 'Command',
        \ 's' : 'Select',
        \ 'S' : 'S·Line',
        \ "\<C-s>": 'S·Block',
        \ 't': 'Terminal',
        \ },
      \}

" Use autocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

" Icons
set guifont=SymbolsNerdFontCompleteM-2048-em:h12
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['\.svelte$']=''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*NERD.*']='󰮫'
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['\.prisma$']=''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['\.cjs$']=''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*eslint*']=''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*prettier*']=''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*npm*']=''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['\.vue$']=''
let g:webdevicons_conceal_nerdtree_brackets = 1


" Atajos personalizados

let mapleader=" "                               " Asigna la tecla <Espacio> como líder para ejecutar comandos personalizados
nmap <Leader>s <Plug>(easymotion-s2)            " Atajo para activar el plugin EasyMotion
nmap <Leader>nt :NERDTreeFind<CR>               " Atajo para buscar el archivo actual en NERDTree
nmap <Leader><n><t> :NERDTreeFind<CR>           " Atajo para buscar el archivo actual en NERDTree
nmap <Leader>w :w!<cr><cr>                      " Atajo para guardar el archivo actual
nmap <Leader>ww :SudaWrite <cr>                 " Atajo para guardar el archivo actual con permisos de superusuario
nmap <Leader>q :q<cr>                           " Atajo para cerrar Vim
" Remapeo de teclas para aplicar codeAction a la línea actual.
nmap <leader>ac  <Plug>(coc-codeaction)         " Atajo para aplicar codeAction a la línea actual
" Aplicar AutoFix al problema en la línea actual.
nmap <leader>qf  <Plug>(coc-fix-current)        " Atajo para aplicar AutoFix al problema en la línea actual
" Navegación de código GoTo.
nmap <silent>gd <Plug>(coc-definition)          " Atajo para ir a la definición del código
nmap <silent>gy <Plug>(coc-type-definition)     " Atajo para ir a la definición del tipo de código
nmap <silent>gi <Plug>(coc-implementation)      " Atajo para ir a la implementación del código
nmap <silent>gr <Plug>(coc-references)          " Atajo para buscar referencias del código
command! -nargs=0 Prettier :CocCommand prettier.formatFile " Comando para formatear el archivo usando Prettier
nmap <Leader>p :Prettier<cr>                    " Atajo para formatear el archivo usando Prettier
inoremap <silent><expr> <c-space> coc#refresh() " Atajo para refrescar la lista de autocompletado
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp') " Comando para mostrar información de la firma en contexto
" Hacer que <CR> acepte el elemento de autocompletado seleccionado o notifique a coc.nvim para formatear
" <C-g>u interrumpe el historial de deshacer actual, por favor, elige lo que prefieras.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Atajo para recargar el archivo de configuración  y ejecutar PlugInstall
if has('nvim')
  " Si se está utilizando Neovim, mapeo de tecla para cargar ~/.config/nvim/init.vim y ejecutar PlugInstall
  nnoremap <silent><leader>1 :source $HOME/.config/nvim/init.vim \| :PlugInstall<CR>
else
  " Si se está utilizando Vim, mapeo de tecla para cargar ~/.vimrc y ejecutar PlugInstall
  nnoremap <silent><leader>1 :source $HOME/.vimrc \| :PlugInstall<CR>
endif

" Atajos para moverse entre pestañas
map <silent> <Leader><up> :tabr<cr>           " Moverse a la pestaña de la derecha
map <silent> <Leader><down> :tabl<cr>         " Moverse a la pestaña de la izquierda
map <silent> <Leader><left> :tabp<cr>         " Moverse a la pestaña anterior
map <silent> <Leader><right> :tabn<cr>        " Moverse a la pestaña siguiente



" Configuración de plugins


" Busqueda de archivos con Telescope
nnoremap <Leader>ff <cmd>Telescope find_files<cr>                   " Busca archivos
nnoremap <Leader>fg <cmd>Telescope live_grep<cr>                    " Busca texto en archivos
nnoremap <Leader>fb <cmd>Telescope buffers<cr>                      " Busca buffers
nnoremap <Leader>fh <cmd>Telescope help_tags<cr>                    " Busca ayuda
nnoremap <Leader>fm <cmd>Telescope media_files<cr>                  " Busca archivos multimedia

" Configuración de NerdTree
nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>

" Configuración de Coc
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
nnoremap <silent> <Leader>ca :CocAction<CR>
vnoremap <silent> <Leader>ca :CocAction<CR>
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)


let g:coc_global_extensions = [ 'coc-json', 'coc-tsserver', 'coc-prettier', 'coc-spell-checker', 'coc-cspell-dicts', 'coc-tsserver', 'coc-svelte', '@yaegassy/coc-tailwindcss3', 'coc-prisma', 'coc-deno','@yaegassy/coc-volar','@yaegassy/coc-volar-tools', 'coc-flutter', 'coc-clangd', 'coc-go' ]
autocmd FileType deno setlocal filetype=typescript let b:coc_filetype = 'typescript' let b:coc_root_patterns = ['deno.json', 'package.json', '.git', '.hg', '.vim', '.vimrc', '.vimrc.local', '.ideavimrc', '.ideavimrc.local', '.nvimrc', '.nvimrc.local']


" Configuración de lazygit
nnoremap <Leader>lg :LazyGit<CR>

" Tab icon filetypes
function! LightlineWebDevIcons(n)
  let l:bufnr = tabpagebuflist(a:n)[tabpagewinnr(a:n) - 1]
  return WebDevIconsGetFileTypeSymbol(bufname(l:bufnr))
endfunction

" Filetype icon
function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ?  WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction
" Fileformat icon
function! MyFileformat()
  return winwidth(0) > 70 ? ( WebDevIconsGetFileFormatSymbol()) : ''
endfunction

" NERDTree.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinPos = "right"
let NERDTreeIgnore = ['^node_modules$[[dir]]','^\.git$[[dir]]']

" context_filetype
if !exists('g:context_filetype#same_filetypes')
  let g:context_filetype#filetypes = {}
endif

let g:context_filetype#filetypes.svelte =
\ [
\   {'filetype' : 'javascript', 'start' : '<script>', 'end' : '</script>'},
\   {
\     'filetype': 'typescript',
\     'start': '<script\%( [^>]*\)\? \%(ts\|lang="\%(ts\|typescript\)"\)\%( [^>]*\)\?>',
\     'end': '',
\   },
\   {'filetype' : 'css', 'start' : '<style \?.*>', 'end' : '</style>'},
\ ]


" Configuración de ale
let g:ale_linters_explicit = 1
let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ 'typescript': ['eslint'],
  \ 'javascript.jsx': ['eslint'],
  \ 'typescript.tsx': ['eslint']
  \ }

let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }


let g:ale_sign_error = ''
let g:ale_sign_warning =''
let g:ale_sign_info = '󰙎'
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0


" Copilot Settings
let g:copilot_filetypes = {
    \ 'yaml': v:true,
    \ 'markdown': v:true,
    \ }

" Go lang
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')


" Markdown 
augroup Markdown
  autocmd!
  autocmd FileType markdown set wrap
  autocmd FileType markdown set whichwrap+=<,>,h,l
  autocmd FileType markdown set textwidth=120
augroup END


