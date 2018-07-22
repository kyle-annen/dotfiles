"Colors
syntax enable            " enable syntax processing
set shell=/bin/bash

"Enable vim autosave
let g:auto_save = 1
"Enable elm format
let g:elm_format_autosave = 1

"Set copy/paste to work with clipboard
set clipboard=unnamed

"Disable swap file
set noswapfile

"Spaces and Indents
set tabstop=2            " number of visual spaces per TAB
set softtabstop=2        " number of spaces in tab when editing
set expandtab            " tabs are spaces

"Set indentation ruby
:autocmd Filetype ruby set softtabstop=2
:autocmd Filetype ruby set sw=2
:autocmd Filetype ruby set ts=2


"UI Config
set number               " show line numbers
set number
set showcmd              " show command in bottom bar
set cursorline           " highlight current line
set lazyredraw           " only redraw when needed
set showmatch 		       " highlight matching [{()}]

" keep 4 lines at top and bottom of editor on scrolling
set scrolloff=4

"Searching
set incsearch    " search as characters are entered
set hlsearch		 " highlight matches

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
" remap save
nnoremap <Leader>w :w<CR>
" remap quit
nnoremap <Leader>q :q<CR>
" open NERDTree
nnoremap <Leader>f :NERDTree<CR>
" save session
nnoremap <Leader>s :mksession<CR>
" enable smooth scrolling
noremap <silent> <c-k> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-j> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-h> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-l> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" Searching
" ctlp fuzzy find
" Ctrlp settings
let g:ctrlp_switch_buffer = 0
nnoremap <Leader>o :CtrlP<CR>


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" autosave in vim
Plugin 'vim-scripts/vim-auto-save'
" git in vim
Plugin 'tpope/vim-fugitive'
" graphic undo
Plugin 'sjl/gundo.vim'
" Fuzzy find files
Plugin 'kien/ctrlp.vim'
" folder tree navigation
Plugin 'scrooloose/nerdtree'
" easily comment code
Plugin 'scrooloose/nerdcommenter'
" identation identification
Plugin 'nathanaelkane/vim-indent-guides'
" scala sytax highlighting
Plugin 'derekwyatt/vim-scala'
" yaml syntax
Plugin 'avakhov/vim-yaml'
" hightlight trailing whitespace
Plugin 'bronson/vim-trailing-whitespace'
" parenthesis highlighting
Plugin 'kien/rainbow_parentheses.vim'
" autoformat
Plugin 'chiel92/vim-autoformat'
" use supertab for code completion
Plugin 'ervandew/supertab'
" interprets file by extension
Plugin 'MarcWeber/vim-addon-mw-utils'
" git info in the gutter
Plugin 'airblade/vim-gitgutter'
" vim colors
Plugin 'flazz/vim-colorschemes'
" better parenthesis support
Plugin 'tpope/vim-surround'
" better status line
Plugin 'itchyny/lightline.vim'
" sytastic sytax checking
Plugin 'vim-syntastic/syntastic'
" quotes/para/brackets in pairs
Plugin 'auto-pairs-gentle'
" smooth scrolling
Plugin 'terryma/vim-smooth-scroll'
" ruby plugins
Plugin 'vim-ruby/vim-ruby'
" Elm plugin
Plugin 'elmcast/elm-vim'
" Elixir plugin
Plugin 'elixir-lang/vim-elixir'
" Javascript plugin
Plugin 'pangloss/vim-javascript'
" clojure plugins
Plugin 'tpope/vim-fireplace'
" Erlang plugins
Plugin 'jimenezrick/vimerl'
" Typescript Plugin
Plugin 'ianks/vim-tsx'
" Haskell
Plugin 'neovimhaskell/haskell-vim'


call vundle#end()            " required
filetype plugin indent on

au VimEnter * NERDTree
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" Indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let indent_guides_guide_size = 2
hi IndentGuidesOdd ctermbg=236
hi IndentGuidesEven ctermbg=237

" Indentation for haskell
au FileType haskell setl sw=2 sts=2 et

" ================  syntastic settings ============

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:elm_syntastic_show_warnings = 1


let g:syntastic_elixir_checkers = ['syntastic-checkers-elixir']

" ================================================ lightline =====================================================

let g:lightline = {
      \ 'active': {
      \   'left': [ ['mode', 'paste'], [ 'fugitive', 'filename' ], ['ctrlpmark'] ],
      \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
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
      \   'syntastic': 'SyntasticStatuslineFlag',
      \ },
      \ 'component_type': {
      \   'syntastic': 'error',
      \ },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

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
"
