" My .vimrc
set number
set relativenumber
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set list listchars=tab:»-
set autoindent
set smartindent
set clipboard+=unnamed
set laststatus=2

"カーソル関係
set cursorline
set cursorcolumn
highlight CursorLine ctermbg=Black
highlight CursorLine ctermfg=Blue
highlight CursorColumn ctermbg=Blue
highlight CursorColumn ctermfg=Green

syntax enable

"Emacs key map
inoremap <silent> <C-p> <Up>
inoremap <silent> <C-n> <Down>
inoremap <silent> <C-f> <Right>
inoremap <silent> <C-b> <Left>
nnoremap <silent><C-e> :NERDTreeToggle<CR>


colorscheme molokai

" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set Dein base path (required)
let s:dein_base = '~/.cache/dein'

" Set Dein source path (required)
let s:dein_src = '~/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
call dein#add('junegunn/fzf.vim')
call dein#add('tpope/vim-surround')
call dein#add('preservim/nerdtree')

" Finish Dein initialization (required)
call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax enable

" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
 call dein#install()
endif
