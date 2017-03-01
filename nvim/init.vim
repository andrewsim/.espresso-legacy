set runtimepath+=~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim
let s:bundle_dir = expand('~/.config/nvim/bundle')
let s:plugin_dir = s:bundle_dir . '/repos/github.com'

if dein#load_state(s:bundle_dir)
  call dein#begin(s:bundle_dir)

  call dein#add(s:plugin_dir . 'Shougo/dein.vim')
  call dein#add('christoomey/vim-tmux-navigator')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('w0rp/ale')
  call dein#add('Raimondi/delimitMate')
  call dein#add('tpope/vim-commentary')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-repeat')
  call dein#add('duff/vim-bufonly')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('sheerun/vim-polyglot')
  call dein#add('kristijanhusak/vim-hybrid-material')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('junegunn/goyo.vim')
  call dein#add('lambdalisue/gina.vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('ensime/ensime-vim')

  call dein#end()
  call dein#save_state()
endif

"Enable plugins and indents by filetype
  filetype plugin indent on
"Change leader to a comma
  let g:mapleader = ","
"turn on syntax highlighting
  syntax on
"Enable bold font in colorscheme
  let g:enable_bold_font = 1 
"case insensitive search
  set ignorecase
"Highlight matching bracket
  set showmatch
"Copy to system clipboard
  vnoremap <C-c> "+y
" no word wrap by default
  set nowrap
"Tuen on line number/relative number
  "set number
  set relativenumber
"Set the right margin column 
  set colorcolumn=120
"Hide showmode because of the powerline plugin
  set noshowmode
"set text wrapping toggles
  nmap <silent> <leader>ww :set invwrap<CR>:set wrap?<CR>
"set relative or absolute line number toggle
  function! NumberToggle()
    if(&relativenumber == 1)
      set norelativenumber
      set number
    else
      set relativenumber
    endif
  endfunc
  nnoremap <leader>l :call NumberToggle()<cr>

"remap escape key
  inoremap jj <ESC>

" backup and swp
  set backup
  set backupdir=~/.config/nvim/backups/swap
  set dir=~/.config/nvim/backups/swap

"Switch buffer
  nnoremap <Leader>] :bnext<CR>
  nnoremap <Leader>[ :bprevious<CR>

" === Gina ===
  nnoremap <Leader>gg :Gina 
" === Gina ===

" === Indentation ===
  set shiftwidth=2
  set softtabstop=2
  set tabstop=2
  set expandtab
  set smartindent
  set nofoldenable
" === Indentation ===

" === Scrolling ===
  set scrolloff=8                                                                 
  set sidescrolloff=15
  set sidescroll=5
" === Scrolling ===

" ================ Persistent Undo ==================
  " Keep undo history across sessions, by storing in file.
  silent !mkdir ~/.config/nvim/backups > /dev/null 2>&1
  set undodir=~/.config/nvim/backups
  set undofile
" ================ Persistent Undo ==================

" === w0rp/ale ===
  let g:ale_sign_error = ''
  let g:ale_sign_warning = ''
  let g:ale_lint_on_text_changed = 0
  let g:ale_lint_on_save = 1
  highlight clear ALEErrorSign
  highlight clear ALEWarningSign
" === w0rp/ale ===

" === vim-tmux-navigator ===
  " Write all buffers before navigating from Vim to tmux pane
  let g:tmux_navigator_save_on_switch = 2
  " Disable tmux navigator when zooming the Vim pane
  let g:tmux_navigator_disable_when_zoomed = 1
" === vim-tmux-navigator ===

" === vim-devicons ===
  set encoding=utf8
  "set guifont=Knack\ Nerd\ Font:h12
  let g:webdevicons_enable_nerdtree = 1
  let g:airline_powerline_fonts = 1
  let g:webdevicons_enable_airline_tabline = 1
  let g:webdevicons_enable_airline_statusline = 1
  let g:webdevicons_enable_ctrlp = 1
" === vim-devicons ===

" === vim-airline ===
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_theme='hybrid'
" === vim-airline ===

" === vim-hybrid-material ===
  set background=dark
  colorscheme hybrid_reverse
" === vim-hybrid-material ===

" === Shougo/deoplete.nvim ===
  let g:deoplete#enable_at_startup = 1
" === Shougo/deoplete.nvim ===

" === Goyo ===
  " Toggle distraction free mode
  nnoremap <Leader>z :Goyo<CR>
  let g:goyo_width = 120
  let g:goyo_height = 100
" === Goyo ===

" === CtrlP ===
  " Toggle buffer list
  nnoremap <Leader>b :CtrlPBuffer<CR><Paste>
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip
  let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }
" === CtrlP ===

" === rhysd/nyaovim-markdown-preview ===
  let g:markdown_preview_eager = 1
" === rhysd/nyaovim-markdown-preview ===

" === NERD TREE setup ===
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  nnoremap <Leader>n :NERDTreeToggle<CR>
" === NERD TREE setup ===

" === vim-ensime ===
autocmd BufWritePost *.scala silent :EnTypeCheck
nnoremap <Leader>t :EnTypeCheck<CR>
au FileType scala nnoremap <Leader>df :EnDeclarationSplit<CR>
" === vim-ensime ===
