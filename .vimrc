" General.
set nocompatible
set number
set autoindent " Copy indent from last line when starting new line
set autoread " Set to auto read when a file is changed from the outside
set backspace=indent,eol,start
set cursorline " Highlight current line
set clipboard+=unnamedplus
set expandtab " Expand tabs to spaces
set encoding=utf-8
set foldcolumn=0 " Column to show folds
set foldenable " Enable folding
set foldlevel=0 " Close all folds by default
set foldmethod=syntax " Syntax are used to specify folds
set foldminlines=0 " Allow folding single lines
set foldnestmax=5 " Set max fold nesting level
set formatoptions=
set formatoptions+=c " Format comments
set formatoptions+=r " Continue comments by default
set formatoptions+=o " Make comment when using o or O from comment line
set formatoptions+=q " Format comments with gq
set formatoptions+=n " Recognize numbered lists
set formatoptions+=2 " Use indent from 2nd line of a paragraph
set formatoptions+=l " Don't break lines that are already long
set formatoptions+=1 " Break before 1-letter words
set gdefault " By default add g flag to search/replace. Add g to toggle
set guicursor= " Disable cursor style changes in Neovim
set hidden " When a buffer is brought to foreground, remember undo history and marks
set history=500 " Increase history from 20 default to 1000
set hlsearch " Highlight searches
set ignorecase
set incsearch " Highlight dynamically as pattern is typed
set laststatus=2 " Always show status line
set lazyredraw " Don't redraw when we don't have to
set lispwords+=defroutes " Compojure
set lispwords+=defpartial,defpage " Noir core
set lispwords+=defaction,deffilter,defview,defsection " Ciste core
set lispwords+=describe,it " Speclj TDD/BDD
set magic " Enable extended regexes
set mouse=a " Enable mouse in all in all modes
set noerrorbells " Disable error bells
set nojoinspaces " Only insert single space after a '.', '?' and '!' with a join command
set noshowmode " Don't show the current mode (airline.vim takes care of us)
set nostartofline " Don't reset cursor to start of line when moving around
set nowrap " Do not wrap lines
set numberwidth=1
set ofu=syntaxcomplete#Complete " Set omni-completion method
set regexpengine=0 " Use the old regular expression engine (it's faster for certain language syntaxes)
set report=0 " Show all changes
set ruler " Show the cursor position
set scrolloff=3 " Start scrolling three lines before horizontal border of window
set shell=/bin/sh " Use /bin/sh for executing shell commands
set shiftwidth=4 " The # of spaces for indenting
set softtabstop=4
set shortmess=atI " Don't show the intro message when starting vim
set showtabline=2 " Always show tab bar
set sidescrolloff=3 " Start scrolling three columns before vertical border of window
set smartcase " Ignore 'ignorecase' if search patter contains uppercase characters
set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces
set showcmd
set showmatch
set splitbelow " New window goes below
set splitright " New windows goes right
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
syntax enable
set switchbuf=""
set ruler
set relativenumber
set ttyfast " Send more characters at a given time
set undofile " Persistent Undo
set visualbell " Use visual bell instead of audible bell (annoying)
set wildchar=<TAB> " Character for CLI expansion (TAB-completion)
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*
set wildmenu " Hitting TAB in command mode will show possible completions above command line
set wildmode=list:longest " Complete only until point of ambiguity
set winminheight=0 " Allow splits to be reduced to a single line
set wrapscan " Searches wrap around end of file

" Plugin.
call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/plenary.nvim' " dependency for telescope
Plug 'nvim-telescope/telescope.nvim' " search in files
Plug 'rmagatti/auto-session' " save the current state of an editor
Plug 'rmagatti/session-lens' " navigator for saved sessions
Plug 'ayu-theme/ayu-vim' " ayu theme for vim
" Plug 'ctrlpvim/ctrlp.vim' " search in files
" Plug 'dikiaap/minimalist' " minimalist theme
Plug 'editorconfig/editorconfig-vim' " plugin to use editorconfig files
Plug 'mattn/emmet-vim' " Emmet plugin for vim 
Plug 'preservim/nerdtree' " Tree Explorer 
Plug 'sheerun/vim-polyglot' " Collection of packs for langs
Plug 'tpope/vim-fugitive' "git plugin
Plug 'itchyny/lightline.vim'
Plug 'easymotion/vim-easymotion' "search and move
Plug 'christoomey/vim-tmux-navigator' " navigation for tmux panels when vim is running inside
Plug 'evanleck/vim-svelte'        " Svelte Support
Plug 'HerringtonDarkholme/yats.vim' "TypeScript syntax
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'wakatime/vim-wakatime' " Time metric 
Plug 'preservim/nerdcommenter' "comments
Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
\}
Plug 'sonph/onehalf', { 'rtp': 'vim' } " theme
Plug 'codechips/coc-svelte', {'do': 'npm install'} "Coc Svelte Support
Plug 'Shougo/context_filetype.vim'
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
Plug 'w0rp/ale'
Plug 'lambdalisue/battery.vim'
Plug 'github/copilot.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'yaegassy/coc-tailwindcss3', {'do': 'yarn install --frozen-lockfile'},
Plug 'lambdalisue/suda.vim'
Plug 'rust-lang/rust.vim'
Plug 'kiyoon/nvim-tree-remote.nvim'
Plug 'kiyoon/tmuxsend.vim'
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'
call plug#end()

" Colors, Fonts, and Syntax.
filetype plugin indent on
syntax enable
set t_Co=256
set encoding=utf-8
set cursorline
set listchars=tab:>-,trail:~,precedes:<,extends:>,eol:¬,space:·
set list
set tabstop     =2
set softtabstop =2
set shiftwidth  =2
set expandtab
colorscheme nord
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
hi Normal guibg=NONE ctermbg=NONE

" Nord theme
let g:nord_cursor_line_number_background = 1
let g:nord_uniform_status_lines = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1

" Directories.
set backupdir=~/.local/share/nvim/backup
set directory=~/.local/share/nvim/swap
set undodir=~/.local/share/nvim/undo

" LightLine
let g:lightline = {
      \ 'colorscheme':'nord', 
      \ 'separator': { 'left': '', 'right': '' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ 'mode_map': {
        \ 'n' : 'N',
        \ 'i' : 'I',
        \ 'R' : 'R',
        \ 'v' : 'V',
        \ 'V' : 'VL',
        \ "\<C-v>": 'VB',
        \ 'c' : 'C',
        \ 's' : 'S',
        \ 'S' : 'SL',
        \ "\<C-s>": 'SB',
        \ 't': 'T',
        \ },
      \}

" battery component
let g:battery#graph_indicator_fill = "#"
let g:battery#graph_indicator_null = "_"
let g:battery#component_format = "%s  %v%%"

" NERDTree.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeDirArrowExpandable = '|>'
let g:NERDTreeDirArrowCollapsible = '<|'
let NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinPos = "right"

"lazygit
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed

" CoC
let g:coc_global_extensions = [ 'coc-json', 'coc-tsserver', 'coc-prettier', 'coc-spell-checker', 'coc-cspell-dicts', 'coc-tsserver', 'coc-svelte', '@yaegassy/coc-tailwindcss3' ]

" Custom Shortcuts
let mapleader=" " "<space> key for execute custom commands
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader><n><t> :NERDTreeFind<CR>
nmap <Leader>w :w!<cr><cr>
nmap <Leader>ww :SudaWrite <cr> 
nmap <Leader>q :q<cr>
nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>
" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
" GoTo code navigation.
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nmap <Leader>p :Prettier<cr>
inoremap <silent><expr> <c-space> coc#refresh()
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Fugitive Conflict Resolution
nnoremap <leader>gm :Gdiffsplit!<CR>
nnoremap gdc :diffget //2<CR>
nnoremap gdi :diffget //3<CR>
" ToggleComments with ctrl + /
nmap <silent> <C-/>   <Plug>NERDCommenterToggle
vmap <silent> <C-/>   <Plug>NERDCommenterToggle<CR>gv
nnoremap <leader>cc <Plug>NERDCommenterToggle<CR>gv
nnoremap <silent> <Cmd-/> <Plug>NERDCommenterToggle<CR>gv
" JSDoc
nmap <silent> <C-l> <Plug>(jsdoc)
iabbrev ucu @author Uriel Curiel <ucuriel@musicbattles.mx>
" highlight toggle
noremap <F4> :set hlsearch! hlsearch?<CR>
" lazygit
nnoremap <silent> <leader>lg :LazyGit<CR>

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

let g:ft = ''

vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }


let g:ale_sign_error = '/>'
let g:ale_sign_warning ='~@'
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0
let g:airline#extensions#ale#enabled = 1

"vim auto session
let g:auto_session_post_restore_cmds = ["tabdo NERDTreeFind"]

" for transparent background
"function! AdaptColorscheme()
   "highlight clear CursorLine
   "highlight Normal ctermbg=none
   "highlight LineNr ctermbg=none
   "highlight Folded ctermbg=none
   "highlight NonText ctermbg=none
   "highlight SpecialKey ctermbg=none
   "highlight VertSplit ctermbg=none
   "highlight SignColumn ctermbg=none
"endfunction
"autocmd ColorScheme * call AdaptColorscheme()

"highlight Normal guibg=NONE ctermbg=NONE
"highlight CursorColumn cterm=NONE ctermbg=NONE ctermfg=NONE
"highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
"highlight CursorLineNr cterm=NONE ctermbg=NONE ctermfg=NONE
"highlight clear LineNr
"highlight clear SignColumn
"highlight clear StatusLine


" Change Color when entering Insert Mode
autocmd InsertEnter * set nocursorline

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * set nocursorline

"" extra settings, uncomment them if necessary :) 
set cursorline
set noshowmode
set nocursorline

" trasparent end

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"session switcher
nmap <silent> <leader>sl :SearchSession<CR>
nmap <silent> <leader>ss :SaveSession<CR>

" Disable perl
let g:loaded_perl_provider = 0

" Shortcuts for tabs navigation
map <silent> <Leader><up> :tabr<cr> 
map <silent> <Leader><down> :tabl<cr>
map <silent> <Leader><left> :tabp<cr>
map <silent> <Leader><right> :tabn<cr>
