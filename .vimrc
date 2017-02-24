"========== Vundle ==========
  set nocompatible
  filetype off 
  " set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  Plugin 'gmarik/Vundle.vim' 
  
  " == Normal Vim Usage ==
  Plugin 'tpope/vim-sensible'
  Plugin 'scrooloose/nerdtree'
  Plugin 'ctrlpvim/ctrlp.vim' 
  "Plugin 'christoomey/vim-tmux-navigator'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'reedes/vim-thematic'
  " == Normal Vim Usage ==
  
  " == Colour Scheme ==
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'flazz/vim-colorschemes'
  " == Colour Scheme ==
  
  " == Syntax Highlight ==
  Plugin 'godlygeek/tabular' "NEEDED BY vim-markdown
  Plugin 'plasticboy/vim-markdown'
  Plugin 'derekwyatt/vim-scala'
  "Plugin 'vim-ruby/vim-ruby'
  "Plugin 'ekalinin/Dockerfile.vim'
  Plugin 'pangloss/vim-javascript'
  "Plugin 'othree/javascript-libraries-syntax.vim'
  "Plugin 'burnettk/vim-angular'
  Plugin 'mxw/vim-jsx'
  " == Syntax Highlight ==
  
  " == Coding ==
  Plugin 'airblade/vim-gitgutter'
  "Plugin 'ensime/ensime-vim'
  Plugin 'tpope/vim-fugitive'
  "Plugin 'ensime/ensime-vim'
  " == Coding ==

  Plugin 'junegunn/goyo.vim'

  "Plugin 'mileszs/ack.vim'
  Plugin 'tpope/vim-surround'
  "Plugin 'tpope/vim-commentary'
  Plugin 'scrooloose/syntastic'
  "Plugin 'Raimondi/delimitMate'
  Plugin 'reedes/vim-pencil'

  " == Notes ==
  "Plugin 'xolox/vim-misc'
  "Plugin 'xolox/vim-notes'

  call vundle#end()
  filetype plugin indent on
"========== Vundle ==========

"========== General ==========
  " System default for mappings is now the "," character
  let mapleader = ","

  " no word wrap by default
  set nowrap

  " Tabstops are 2 spaces
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set expandtab
  set autoindent

  " show the line number/relative number
  set number
  "set relativenumber

  " right margin column
  set colorcolumn=120

  " set text wrapping toggles
  nmap <silent> <leader>ww :set invwrap<CR>:set wrap?<CR>

  " set relative or absolute line number toggle
  function! NumberToggle()
    if(&relativenumber == 1)
      set norelativenumber
      set number
    else
      set relativenumber
    endif
  endfunc
  nnoremap <leader>l :call NumberToggle()<cr>

  " remap escape key
  inoremap jj <ESC>

  " backup and swp
  set backup
  set backupdir=~/.vimbackup
  set dir=~/.vimbackup
"========== General ==========

"========== netrw ============
let g:netrw_liststyle=3
" map <leader>n :Explore<CR>
"========== netrw ============

"========= syntastic =========
"scriptencoding utf-8
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_error_symbol = '✘'
"let g:syntastic_warning_symbol = "▲"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"========= syntastic =========

"========== airline ==========
  let g:airline#extensions#tabline#enabled = 1
  "Show just the filename
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline_powerline_fonts = 1
"========== airline ==========

"========== thematic ==========
  let g:thematic#themes = {
  \ 'codeschool' : {
  \     'colorscheme':    'codeschool',
  \     'background':     'dark'
  \   },
  \ 'gruvbox' : {
  \     'colorscheme':    'gruvbox',
  \     'background':     'dark'
  \   },
  \ 'hemisu' : {
  \     'colorscheme':    'hemisu',
  \     'background':     'dark'
  \   },
  \ 'hybrid-light' : {
  \     'colorscheme':    'hybrid-light',
  \     'background':     'dark'
  \   },
  \ 'hybrid' : {
  \     'colorscheme':    'hybrid',
  \     'background':     'dark'
  \   },
  \ 'jellybeans' : {
  \     'colorscheme':    'jellybeans',
  \     'background':     'dark'
  \   },
  \ 'molokai' : {
  \     'colorscheme':    'molokai',
  \     'background':     'dark'
  \   },
  \ 'solarized-dark' : {
  \     'colorscheme':    'solarized',
  \     'background':     'dark'
  \   },
  \ 'solarized-light' : {
  \     'colorscheme':    'solarized',
  \     'background':     'light'
  \   },
  \ 'zenburn' : {
  \     'colorscheme':    'zenburn',
  \     'background':     'dark'
  \   },
  \ }
  let g:thematic#defaults = {
  \  'typeface':       'Droid Sans Mono for Powerline',
  \  'font-size':      10,
  \  'linespace':      0,
  \  'background':     'dark'
  \ }
  let g:thematic#theme_name = 'obsidian2'
  let g:solarized_contrast = 'high'
  nnoremap <leader>t :ThematicNext<CR>
"========== thematic ==========

"========== NerdTree ==========
map <leader>n :NERDTreeToggle<CR>
"========== NerdTree ==========

"========== Pencil ============
augroup pencil
  autocmd!
  autocmd FileType markdown,md  call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END
let g:pencil#wrapModeDefault = 'soft'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
"========== Pencil ============

"======== javascript ==========
"let g:angular_filename_convention = 'camelcased'
"======== javascript ==========

" ======= ctrlp =======
  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/target/*
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" ======= ctrlp =======

" ========= ENSIME =========
" nnoremap <localleader>t :EnTypeCheck<CR>
" au FileType scala nnoremap <localleader>df :EnDeclaration<CR>
" ========= ENSIME =========

" ========= VIM-JSX ==========
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
" ========= VIM-JSX ==========

" ========= Syntastic ==========
let g:syntastic_javascript_checkers = ['eslint']
" ========= Syntastic ==========

