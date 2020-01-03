syntax enable                                               " enable syntax processing
set shell=/bin/bash

let g:auto_save = 1                                         "Enable vim autosave
let g:auto_save_in_insert_mode = 0                          "Set autosave to not work in insert mode
let g:elm_format_autosave = 1                               "Enable elm format set clipboard=unnamed                                       "Set copy/paste to work with clipboard
set noswapfile                                              "Disable swap file
set tabstop=2                                               "number of visual spaces per TAB
set softtabstop=2                                           "number of spaces in tab when editing
set expandtab                                               "tabs are spaces

"UI Config
set number                                                  " show line numbers
set showcmd                                                 " show command in bottom bar
set cursorline                                              " highlight current line
set lazyredraw                                              " only redraw when needed
set showmatch 		                                          " highlight matching [{()}]

" keep 4 lines at top and bottom of editor on scrolling
set scrolloff=4

"Searching
set incsearch    " search as characters are entered
set hlsearch		 " highlight matches
"Custom ignore for ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|_build\|deps'

"Folding
"set foldenable 		 " enable folding
"set foldlevelstart       " open most folds by default
"set foldnestmax=10	 " 10 nested fold max
" use alt to move lines
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
inoremap <leader>j <Esc>:m .+1<CR>==gi
inoremap <leader>k <Esc>:m .-2<CR>==gi
vnoremap <leader>j :m '>+1<CR>gv=gv
vnoremap <leader>k :m '<-2<CR>gv=gv

"space f opens/closes nerdtree
nnoremap <leader>f :NERDTree<CR>
" dot files are shown in vim
let NERDTreeShowHidden=1

"Movement
"move lines up and down
" set the mouse usable in vim
:set mouse=a
" smooth mouse scrolling
:map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
:map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>
" use cursor line in insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" move up and down on line wrap
nnoremap j gj
nnoremap k gk
" jk is escape
:imap jk <esc>
" enable backspace on insert mode
set backspace=indent,eol,start
" leader is space
let mapleader="\<Space>"

" toggle gundo
nnoremap <Leader>u :GundoToggle<CR>

"Save / Quit
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>f :NERDTree<CR>
nnoremap <Leader>s :mksession<CR>

" enable smooth scrolling
noremap <silent> <c-k> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-j> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-h> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-l> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" Ctrlp settings
let g:ctrlp_switch_buffer = 0
nnoremap <Leader>o :CtrlP<CR>


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vim-scripts/vim-auto-save'                 " Autosave in vim
Plugin 'tpope/vim-fugitive'                        " Git in vim
Plugin 'ryanoasis/vim-devicons'                    " Icons in vim
Plugin 'sjl/gundo.vim'                             " Graphic undo
Plugin 'ctrlpvim/ctrlp.vim'                        " Fuzzy find files
Plugin 'scrooloose/nerdtree'                       " Folder tree navigation
Plugin 'scrooloose/nerdcommenter'                  " Easily comment code
Plugin 'nathanaelkane/vim-indent-guides'           " Identation identification
Plugin 'derekwyatt/vim-scala'                      " Scala sytax highlighting
Plugin 'avakhov/vim-yaml'                          " Yaml syntax
Plugin 'bronson/vim-trailing-whitespace'           " Hightlight trailing whitespace
Plugin 'kien/rainbow_parentheses.vim'              " Parenthesis highlighting
Plugin 'chiel92/vim-autoformat'                    " Autoformat
Plugin 'ervandew/supertab'                         " Use supertab for code completion
Plugin 'MarcWeber/vim-addon-mw-utils'              " Interprets file by extension
Plugin 'airblade/vim-gitgutter'                    " Git info in the gutter
Plugin 'flazz/vim-colorschemes'                    " Vim colors
Plugin 'tpope/vim-surround'                        " Better parenthesis support
Plugin 'auto-pairs-gentle'                         " Quotes/para/brackets in pairs
Plugin 'terryma/vim-smooth-scroll'                 " Smooth scroll vim
Plugin 'luochen1990/rainbow'                       " Rainbow parens
Plugin 'inside/vim-search-pulse'                   " Pulses search
Plugin 'vim-ruby/vim-ruby'                         " Ruby plugins
Plugin 'elmcast/elm-vim'                           " Elm plugin
Plugin 'tpope/vim-fireplace'                       " Clojure plugins
Plugin 'jimenezrick/vimerl'                        " Erlang plugins
Plugin 'neovimhaskell/haskell-vim'                 " Haskell
Plugin 'elzr/vim-json'                             " Json
Plugin 'keith/swift.vim'                           " Swift support
Plugin 'udalov/kotlin-vim'                         " Kotlin support

" elixir
Plugin 'elixir-lang/vim-elixir'                    " Elixir plugin
Plugin 'mhinz/vim-mix-format'                        " Elixir formatter

" javascript
Plugin 'pangloss/vim-javascript'                   " Javascript
Plugin 'othree/yajs.vim'                           " javascript syntax
Plugin 'mxw/vim-jsx'                               " JSX highlighting

" typescript
Plugin 'leafgarland/typescript-vim'                " typescript syntax highlighting
Plugin 'ianks/vim-tsx'                             " TSX syntax highlighting
Plugin 'Quramy/tsuquyomi'                          " Typescript IDE like functions

" linting with ale
Plugin 'w0rp/ale'                                  " Linting engine
Plugin 'maximbaz/lightline-ale'                    " lightline ale integration

" status line
Plugin 'itchyny/lightline.vim'                     " Better status line


call vundle#end()                                  " end of vundle plugions

" prettier setting for Typescript
autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript

filetype plugin indent on
au VimEnter * NERDTree
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let indent_guides_guide_size = 2
hi IndentGuidesOdd ctermbg=236
hi IndentGuidesEven ctermbg=237

" ================================================ file settings ==========================================
" mix format on save
let g:mix_format_on_save = 1
let g:mix_format_silent_errors = 1

" ruby indentation
:autocmd Filetype ruby set softtabstop=2
:autocmd Filetype ruby set sw=2
:autocmd Filetype ruby set ts=2

au FileType haskell setl sw=2 sts=2 et             " Indentation for haskell
au FileType json setl sw=2 sts=2 et                " Indentation for json
au FileType typescript setl sw=2 sts=2 et          " Indentation for typescript
au FileType javascript setl sw=2 sts=2 et          " Indentation for typescript
au FileType swift setl sw=2 sts=2 et               " Indentation for swift

" ================================================ ale lint ==========================================
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'tslint'],
\   'vue': ['eslint']
\}

let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'typescript': ['tslint'],
\    'vue': ['eslint'],
\    'scss': ['prettier'],
\    'html': ['prettier']
\}
let g:ale_fix_on_save = 1

" ================================================ lightline =========================================

let g:lightline = {
\ 'active': {
\   'left': [ ['mode', 'paste'], [ 'fugitive', 'filename' ], ['ctrlpmark'] ],
\   'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
\ },
\ 'component_function': {
\   'fugitive': 'LightlineFugitive',
\   'filename': 'LightlineFilename',
\   'fileformat': 'LightlineFileformat',
\   'filetype': 'LightlineFiletype',
\   'fileencoding': 'LightlineFileencoding',
\   'mode': 'LightlineMode',
\   'ctrlpmark': 'CtrlPMark',
\ },
\ 'component_expand': {
\   'linter_checking': 'lightline#ale#checking',
\   'linter_warnings': 'lightline#ale#warnings',
\   'linter_errors': 'lightline#ale#errors',
\   'linter_ok': 'lightline#ale#ok',
\ },
\ 'component_type': {
\   'linter_checking': 'left',
\   'linter_warnings': 'warning',
\   'linter_errors': 'error',
\   'linter_ok': 'left',
\ },
\ 'subseparator': { 'left': '|', 'right': '|' }
\ }

let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"

set laststatus=2

function! LightlineModified()
  return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! LightlineFilename()
  let fname = expand('%:t')
  return fname == 'ControlP' && has_key(g:lightline, 'ctrlp_item') ? g:lightline.ctrlp_item :
        \ fname =~ 'NERD_tree' ? '' :
        \ ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ ('' != fname ? fname : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
  try
    if expand('%:t') !~? 'NERD' && exists('*fugitive#head')
      let mark = ''  " edit here for cool mark
      let branch = fugitive#head()
      return branch !=# '' ? mark.branch : ''
    endif
  catch
  endtry
  return ''
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  let fname = expand('%:t')
  return fname == 'ControlP' ? 'CtrlP' :
        \ fname =~ 'NERD_tree' ? 'NERDTree' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! CtrlPMark()
  if expand('%:t') =~ 'ControlP' && has_key(g:lightline, 'ctrlp_item')
    call lightline#link('iR'[g:lightline.ctrlp_regex])
    return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
          \ , g:lightline.ctrlp_next], 0)
  else
    return ''
  endif
endfunction

let g:ctrlp_status_func = {
  \ 'main': 'CtrlPStatusFunc_1',
  \ 'prog': 'CtrlPStatusFunc_2',
  \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_regex = a:regex
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
  return lightline#statusline(0)
endfunction

" ===================================== end LightLine
