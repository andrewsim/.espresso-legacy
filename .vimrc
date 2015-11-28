"========== Vundle ==========
  set nocompatible
  filetype off 
  " set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  Plugin 'gmarik/Vundle.vim'
  Plugin 'tpope/vim-sensible'
  "Plugin 'mileszs/ack.vim'
  Plugin 'kien/ctrlp.vim' 
  Plugin 'scrooloose/nerdtree'
  Plugin 'bling/vim-airline'
  Plugin 'reedes/vim-thematic'
  Plugin 'altercation/vim-colors-solarized'
  "Plugin 'vim-ruby/vim-ruby'
  Plugin 'derekwyatt/vim-scala'
  "Plugin 'tpope/vim-surround'
  "Plugin 'tpope/vim-commentary'
  "Plugin 'scrooloose/syntastic'
  Plugin 'Raimondi/delimitMate'
  Plugin 'reedes/vim-pencil'
  Plugin 'godlygeek/tabular'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'plasticboy/vim-markdown'
  Plugin 'ekalinin/Dockerfile.vim'
  Plugin 'ensime/ensime-vim'
  Plugin 'pangloss/vim-javascript'
  Plugin 'othree/javascript-libraries-syntax.vim'
  Plugin 'burnettk/vim-angular'
  call vundle#end()
  filetype plugin indent on
"========== Vundle ==========

"========== General ==========
  " System default for mappings is now the "," character
  let mapleader = ","

  " no word wrap by default
  set nowrap

  " Tabstops are 4 spaces
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
  let g:airline_powerline_fonts = 1
"========== airline ==========

"========== thematic ==========
  let g:thematic#themes = {
  \ 'gruvbox' : {
  \     'colorscheme':    'gruvbox',
  \     'background':     'dark'
  \   },
  \ 'molokai' : {
  \     'colorscheme':    'molokai',
  \     'background':     'dark'
  \   },
  \ 'hemisu' : {
  \     'colorscheme':    'hemisu',
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
  \ 'jellybeans' : {
  \     'colorscheme':    'jellybeans',
  \     'background':     'dark'
  \   },
  \ 'zenburn' : {
  \     'colorscheme':    'zenburn',
  \     'background':     'dark'
  \   },
  \ }
  let g:thematic#defaults = {
  \  'typeface':       'Droid Sans Mono for Powerline',
  \  'font-size':      14,
  \  'linespace':      0,
  \  'background':     'dark',
  \  'airline-theme':  'molokai'
  \ }
  let g:thematic#theme_name = 'pencil'
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
"========== Pencil ============

"======== javascript ==========
let g:angular_filename_convention = 'camelcased'
"======== javascript ==========


