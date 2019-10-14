" Base
" Maintainer:	Bram Moolenaar <Bram@vim.org>

" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif


" My Preferences
" Line Numbers
set number

" Colors
colorscheme OceanicNext

" Line Width
set textwidth=78
set colorcolumn=78
" Line Color
" highlight ColorColumn ctermbg=8

" Tab width
" For 'Tab' press
set tabstop=4
" And indentation
set shiftwidth=4

" indent when moving to the next line while writing code
set autoindent

" For Autocompletion
set omnifunc=syntaxcomplete#Complete

" Emmet self-closing tag
let g:emmet_html5 = 0

" Youcompleteme Closing Split After Insertion
let g:ycm_autoclose_preview_window_after_insertion = 1

" vim-jsx
let g:jsx_ext_required = 1

" 2 spaces autoindentation
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab

" Haskell
autocmd FileType haskell setlocal ts=2 sts=2 sw=2 expandtab

let g:haskell_enable_quantification = 1   
let g:haskell_enable_recursivedo = 1     
let g:haskell_enable_arrowsyntax = 1    
let g:haskell_enable_pattern_synonyms = 1 
let g:haskell_enable_typeroles = 1        
let g:haskell_enable_static_pointers = 1  
let g:haskell_backpack = 1                
let g:haskell_classic_highlighting = 1

" Folding
set foldmethod=indent
set foldlevel=99
set foldclose=all

" Python identation
autocmd FileType python setlocal ts=4 sts=0 sw=4 noexpandtab
autocmd FileType python setlocal formatoptions=croql 
