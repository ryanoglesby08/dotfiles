" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent


""""""""""""""""""""""""""""
""         UI             ""
""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax on

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Display line numbers on the left
set number


""""""""""""""""""""""""""""
""    Interactions        ""
""""""""""""""""""""""""""""

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Enable use of the mouse for all modes
set mouse=a

" Blink cursor on error instead of beeping (grr)
set visualbell

" Enable backspace over auto indent, line breaks, and the start of indent mode
set backspace=indent,eol,start
