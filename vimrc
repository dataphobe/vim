" Made by master Payam
" This is bunch of files concatinated together 
" Contact me and I'll let you know how to find the right size shoe for
" yourself
"
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
set directory=~/.vim/tmp 

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall

" Better command-line completion
set wildmenu wildmode=list:longest,full

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch incsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start



" Use system clipboard
" http://vim.wikia.com/wiki/Accessing_the_system_clipboard
set guioptions+=a
set clipboard=unnamedplus

 
" Quickly time out on keycodes, but never time out on mappings
"set notimeout ttimeout ttimeoutlen=200
 
" Use <F11> to toggle between 'paste' and 'nopaste'
"set pastetoggle=<F11>

" reload files changed outside of Vim not currently modified in Vim (needs below)
set autoread

" http://stackoverflow.com/questions/2490227/how-does-vims-autoread-work#20418591
au FocusGained,BufEnter * :silent! !

" use Unicode
set encoding=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932

" open every file in split right
set splitright

" If opening buffer, search first in opened windows.
set switchbuf=usetab


" setlocal spell spelllang=en_us


" Beging style.vim file
" Enable syntax highlighting
syntax on


" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" StatusLine always visible, display full path
" http://learnvimscriptthehardway.stevelosh.com/chapters/17.html
set laststatus=2 statusline=%F

" Show character column
highlight ColorColumn ctermbg=DarkBlue
set colorcolumn=80

" CursorLine - sometimes autocmds are not performant; turn off if so
" http://vim.wikia.com/wiki/Highlight_current_line
set cursorline
" Normal mode
highlight CursorLine ctermbg=None
autocmd InsertEnter * highlight  CursorLine ctermbg=17 ctermfg=None
autocmd InsertLeave * highlight  CursorLine ctermbg=None ctermfg=None
 
" Display line numbers on the left
set number
"set relativenumber
set numberwidth=2

" Keep 8 lines above or below the cursor when scrolling.
set scrolloff=8

" Keep 15 columns next to the cursor when scrolling horizontally.
set sidescroll=1
set sidescrolloff=15
let g:SexyScroller_CursorTime=200

" Set minimum window size to 79x5.
set winwidth=79
set winheight=5
set winminheight=5

" set relativenumber

" Show mode in statusbar, not separately.
set noshowmode

" Indentation options {{{1
"
" Indentation settings according to personal preference.
 
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
 
" Highlight entry
" nnoremap <silent> n :call SearchNext()<CR>
" nnoremap <silent> N :call SearchPrev()<CR>

" statusline indicates insert or normal mode
set showmode showcmd 

" Set window title by default.
set title

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler


" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set noerrorbells
set visualbell

" Enable use of the mouse for all modes
 set mouse=a
 
set foldmethod=manual

set foldlevelstart=1
set foldnestmax=2
set foldclose=all

" Wrap lines by default
set wrap linebreak
set showbreak=" "
"
"
"
" End of style.vim
"
" Beging mapping.vim file


"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings
 
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
"nnoremap <C-L> :nohl<CR><C-L>

" End of mapping.vim
