" vim-plug plugins
call plug#begin('~/.vim/plugged')

Plug 'flazz/vim-colorschemes'
Plug 'xavierd/clang_complete'
Plug 'StanAngeloff/php.vim'
Plug 'shawncplus/phpcomplete.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-vdebug/vdebug'
Plug 'pangloss/vim-javascript'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


" Setup
" General
set number
set autoindent
set colorcolumn=78
set tabstop=4
set shiftwidth=4

" Folding
set foldmethod=indent
set foldlevel=99
set foldclose=all

" Relative numbers function and bind (ctrl + l)
function! g:ToggleNuMode()
  if &rnu == 0
     set rnu
  else
     set nornu
  endif
endfunction
nnoremap <silent><C-L> :call g:ToggleNuMode()<cr>

" Filetypes tabs
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab

" C Completion
let g:clang_library_path='/usr/lib/llvm-3.9/lib/'

" NERDTree Toggle Bind
map <C-n> :NERDTreeToggle<CR>

" Colors
colorscheme Tomorrow-Night-Eighties
"colorscheme breeze
highlight LineNr guifg=Silver
highlight CursorLineNr guifg=Grey14 guibg=Grey42
highlight StatusLine guifg=Grey66 guibg=Grey11
highlight Normal guibg=Grey11
highlight NonText guibg=Grey11
highlight DbgBreakptLine guibg=Grey23
highlight NERDTreeFile guibg=None
" highlight ColorColumn guibg=Grey11

"let g:airline_theme='minimalist'
let g:airline_theme='desertink'
let g:airline_powerline_fonts = 1
