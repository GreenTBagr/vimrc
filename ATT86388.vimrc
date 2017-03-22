"""""""""""""""""""""""""""
" Vim RC File by Ryan Job "
"""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  0) Table of Contents...........................ch00	"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" A section can easily be jumped to by searching for the term on the right (ex ch01)

"  0) Table of Contents...........................Just use gg :P
"  1) Important Setting(s)........................ch01
"  2) Viewport....................................ch02
"  3) Colors & Style..............................ch03
"  4) Tabs & Indenting............................ch04
"  5) Views.......................................ch05
"  6) Using the Mouse.............................ch06
"  7) Searching...................................ch06
"  8) Custom Keymaps..............................ch07

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  1) Important Setting(s)........................ch01	"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible		" Turn off vi compatibility settings


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  2) Viewport....................................ch02	"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set scrolloff=3			" Scroll offset: ensure there are x lines around the cursor
set nowrap				" Lines don't wrap if they're too long for the window

set cmdheight=1			" Command bar at the bottom is one line tall
set wildmenu			" Visual auto-complete for the command menu
set laststatus=2		" Always display status line
set ruler				" Show the cursor position in the status line

set number				" Show line numbers
set numberwidth=4		" Line number area is 3 chars wide

set splitright			" New vertically split windows open to the right
set splitbelow			" New horizontally split windows open downwards

set guioptions-=T		" Remove the ugly toolbar in GVim
set lazyredraw			" Don't redraw the screen while executing a macro (improves performance)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  3) Colors & Style..............................ch03	"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable				" Enable syntax highlighting
set background=dark			" Set to dark or light depending on whether the color scheme is dark or light (affects text color)
colorscheme molokai			" Set the color scheme
"set guifont=				" Set the font in the GUI


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  4) Tabs & Indenting............................ch04	"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on	" Enable plugins and indent files based on filetype
set autoindent				" Enable auto-indentation
set smartindent				" Do clever auto-indenting (look it up)
""set cindent				" Like smartindent, but more strict, but more designed for C languages

set tabstop=4				" A tab is 3 spaces wide
set softtabstop=4			" Treat 3 spaces as a tab when editing 
set shiftwidth=4			" Auto-indent inserts 3 spaces
set nosmarttab				" If enabled, inserts 'shiftwidth' spaces at start of line, and 'tabstop' spaces elsewhere

set noexpandtab				" Explicitly state to NOT insert spaces instead of tabs


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	5) Views.......................................ch05	"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufWinLeave *.* mkview				" Saves the view on exit
autocmd BufWinEnter *.* silent loadview		" Restores the view on load


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  6) Using the Mouse.............................ch06	"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a					" Enable mouse in all modes
set mousehide				" Hide the mouse while typing
set mousemodel=popup		" Basically, right click brings up context menu (copy, paste, etc.)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  7) Searching...................................ch07	"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noincsearch				" Turn off incremental search
set ignorecase				" Searches are case insensitive
set smartcase				" Searches ARE case sensitive if there are any caps in the string
set hlsearch				" Highlight all found instances of the search term

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  8) Custon Keymaps..............................ch08	"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	  " Easier navigation between windows (Ctrl + dir)
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

	  " Shift-Enter in Normal Mode inserts a newline below (like o)
map <S-Enter> o<Esc>k

